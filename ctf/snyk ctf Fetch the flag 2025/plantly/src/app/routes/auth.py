from flask import Blueprint, render_template, request, redirect, url_for, flash, session
from app.models import User
from app import db, bcrypt

bp = Blueprint("auth", __name__)


@bp.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        email = request.form.get("email")
        password = request.form.get("password")
        hashed_password = bcrypt.generate_password_hash(
            password).decode("utf-8")

        if User.query.filter_by(email=email).first():
            flash("Email already registered. Please sign in.", "danger")
            return redirect(url_for("auth.signin"))

        new_user = User(email=email, password=hashed_password)
        db.session.add(new_user)
        db.session.commit()
        flash("Account created successfully! Please sign in.", "success")
        return redirect(url_for("auth.signin"))

    return render_template("register.html")


@bp.route("/signin", methods=["GET", "POST"])
def signin():
    if request.method == "POST":
        email = request.form.get("email")
        password = request.form.get("password")
        user = User.query.filter_by(email=email).first()

        if user and bcrypt.check_password_hash(user.password, password):
            session["user_id"] = user.id
            session["user_name"] = user.email.split("@")[0]
            flash("Login successful!", "success")
            return redirect(url_for("main.index"))

        flash("Invalid email or password. Please try again.", "danger")

    return render_template("signin.html")


@bp.route("/logout")
def logout():
    session.clear()  # Clears all session data, including cart and custom request
    flash("You have been logged out.", "info")
    return redirect(url_for("auth.signin"))
