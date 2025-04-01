from flask import Blueprint, render_template, session, redirect, url_for, flash
from app.models import User

bp = Blueprint("subscription", __name__)


@bp.route("/subscribe")
def subscribe():
    return render_template("subscribe.html")


@bp.route("/subscription")
def subscription():
    return render_template("subscription.html")


@bp.route("/my-subscription")
def my_subscription():
    if "user_id" not in session:
        flash("Please log in to access your subscription details.", "warning")
        return redirect(url_for("auth.signin"))

    user = User.query.get(session["user_id"])
    if not user:
        flash("User not found.", "danger")
        return redirect(url_for("auth.signin"))

    return render_template("my_subscription.html", user=user)
