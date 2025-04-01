from datetime import datetime
from flask import render_template_string, session, flash
from flask import flash, render_template_string, session
from flask import Blueprint, render_template, render_template_string, request, redirect, url_for, flash, session, current_app
from app.models import db, Plant, CartItem, Purchase
from jinja2 import TemplateSyntaxError

bp = Blueprint("store", __name__)


def get_or_create_custom_plant():
    custom_plant = Plant.query.filter_by(name="Custom Order").first()
    if not custom_plant:
        custom_plant = Plant(name="Custom Order", price=0.00, image_url=None)
        db.session.add(custom_plant)
        db.session.commit()
    return custom_plant


@bp.route("/plants")
def browse_plants():
    plants = Plant.query.all()
    return render_template("plants.html", plants=plants)


@bp.route("/add-to-cart/<plant_id>", methods=["POST"])
def add_to_cart(plant_id):
    if "user_id" not in session:
        flash("Please log in to add items to your cart.", "warning")
        return redirect(url_for("auth.signin"))

    user_id = session["user_id"]
    custom_request = request.form.get("custom_request", None)

    if plant_id == "custom_order" and custom_request:
        cart_item = CartItem.query.filter_by(
            user_id=user_id, plant_id=None).first()
        if cart_item:
            cart_item.custom_request = custom_request
        else:
            cart_item = CartItem(user_id=user_id, plant_id=None,
                                 custom_request=custom_request, quantity=1)
            db.session.add(cart_item)

        flash(
            f"Custom order request '{custom_request}' has been added to your cart.", "info")
    else:
        plant = Plant.query.get(plant_id)
        if plant:
            cart_item = CartItem.query.filter_by(
                user_id=user_id, plant_id=plant.id).first()
            if cart_item:
                cart_item.quantity += 1
            else:
                cart_item = CartItem(
                    user_id=user_id, plant_id=plant.id, quantity=1)
                db.session.add(cart_item)

            flash(f"Added {plant.name} to your cart.", "info")

    db.session.commit()
    return redirect(url_for("store.cart"))


@bp.route("/cart", methods=["GET", "POST"])
def cart():
    if "user_id" not in session:
        flash("Please log in to view your cart.", "warning")
        return redirect(url_for("auth.signin"))

    user_id = session["user_id"]
    cart_items = CartItem.query.filter_by(user_id=user_id).all()

    custom_note = None
    if request.method == "POST":
        custom_note = request.form.get("note", "")
        session["custom_note"] = custom_note
        flash("Your custom plant request has been added.", "info")

    note_to_render = session.get("custom_note", "No custom requests made.")
    return render_template("cart.html", cart_items=cart_items, custom_note=note_to_render)


@bp.route("/checkout", methods=["POST", "GET"])
def checkout():
    if "user_id" not in session:
        flash("Please log in to proceed with checkout.", "warning")
        return redirect(url_for("auth.signin"))

    user_id = session["user_id"]
    cart_items = CartItem.query.filter_by(user_id=user_id).all()

    if not cart_items:
        flash("Your cart is empty. Add items before checking out.", "warning")
        return redirect(url_for("store.cart"))

    custom_requests = []
    total_price = 0

    for item in cart_items:
        if item.plant_id is None:
            custom_requests.append(item.custom_request)
            total_price += 0
        else:
            total_price += item.plant.price * item.quantity

    receipt_link = None

    if request.method == "POST":
        for item in cart_items:
            if item.plant_id is None:
                custom_plant = get_or_create_custom_plant()
                purchase = Purchase(
                    user_id=user_id, plant_id=custom_plant.id, quantity=item.quantity)
                purchase.custom_request = item.custom_request
            else:
                purchase = Purchase(
                    user_id=user_id, plant_id=item.plant_id, quantity=item.quantity)

            db.session.add(purchase)
            db.session.delete(item)

        db.session.commit()

        flash("Your order has been placed successfully!", "success")

        receipt_link = url_for("store.receipt")

    return render_template("checkout.html", cart_items=cart_items, custom_requests=custom_requests, total_price=total_price, receipt_link=receipt_link)


@bp.route("/receipt")
def receipt():
    if "user_id" not in session:
        flash("Please log in to view your receipt.", "warning")
        return redirect(url_for("auth.signin"))

    user_id = session["user_id"]
    purchases = Purchase.query.filter_by(user_id=user_id).all()

    subtotal = 0
    for purchase in purchases:
        subtotal += purchase.plant.price * purchase.quantity if purchase.plant else 0

    tax_rate = 0.10
    tax = subtotal * tax_rate
    total = subtotal + tax

    item_list = "".join(
        f"<li>{purchase.plant.name if purchase.plant else 'Custom Order'} - ${purchase.plant.price if purchase.plant else 0} x {purchase.quantity} = ${purchase.plant.price * purchase.quantity if purchase.plant else 0}</li>"
        for purchase in purchases
    )

    custom_requests = "".join(
        f"<li>Custom Request: {render_template_string(purchase.custom_request)}</li>" for purchase in purchases if purchase.custom_request
    )

    time_of_purchase = datetime.now()
    template = f"""
    <h2>Plantly Receipt</h2>
    <p><strong>Order Date:</strong> { time_of_purchase }</p>
    <hr>
    <h3>Items Purchased</h3>
    <ul>
        {item_list}
    </ul>
    {custom_requests}
    <hr>
    <p><strong>Subtotal:</strong> ${"{:.2f}".format(subtotal)}</p>
    <p><strong>Tax (10%):</strong> ${"{:.2f}".format(tax)}</p>
    <p><strong>Total:</strong> ${"{:.2f}".format(total)}</p>
    <hr>
    <p>Thank you for your purchase!</p>
    """

    try:
        return render_template_string(template)
    except Exception as e:
        flash(f"An error occurred: {str(e)}", "danger")
        return render_template_string(f"<p>Receipt could not be processed: {str(e)}</p>")
