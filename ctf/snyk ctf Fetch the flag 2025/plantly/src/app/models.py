from app import db
from datetime import datetime


class Customer(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), unique=True, nullable=False)
    password = db.Column(db.String(200), nullable=False)
    subscription_frequency = db.Column(db.String(50), default="weekly")
    subscription_start = db.Column(db.DateTime, default=datetime.utcnow)
    is_active = db.Column(db.Boolean, default=True)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(100), unique=True, nullable=False)
    password = db.Column(db.String(200), nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)

    subscription_frequency = db.Column(db.String(50), default="weekly")
    payment_option = db.Column(db.String(50), default="credit_card")
    is_active = db.Column(db.Boolean, default=True)
    purchases = db.relationship("Purchase", backref="user", lazy=True)


class Plant(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    description = db.Column(db.String(200), nullable=True)
    price = db.Column(db.Float, nullable=False)
    image_url = db.Column(db.String(200), nullable=True)


class CartItem(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)
    plant_id = db.Column(db.Integer, db.ForeignKey("plant.id"), nullable=True)
    custom_request = db.Column(db.String(255), nullable=True)
    quantity = db.Column(db.Integer, default=1)
    plant = db.relationship("Plant", lazy="joined")

    def __init__(self, user_id, plant_id=None, custom_request=None, quantity=1):
        self.user_id = user_id
        self.plant_id = plant_id
        self.custom_request = custom_request
        self.quantity = quantity


class Purchase(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)
    plant_id = db.Column(db.Integer, db.ForeignKey("plant.id"), nullable=False)
    quantity = db.Column(db.Integer, default=1)
    purchase_date = db.Column(db.DateTime, default=datetime.utcnow)
    plant = db.relationship("Plant", lazy=True)
    custom_request = db.Column(db.String(255), nullable=True)
