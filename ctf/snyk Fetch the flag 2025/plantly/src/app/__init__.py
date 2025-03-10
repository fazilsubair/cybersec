import logging
import sys
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt

db = SQLAlchemy()
bcrypt = Bcrypt()


def create_app():
    app = Flask(__name__)
    app.config.from_object("config.Config")

    db.init_app(app)
    bcrypt.init_app(app)

    handler_file = logging.FileHandler("app.log")
    handler_console = logging.StreamHandler(sys.stdout)

    logging.basicConfig(
        level=logging.DEBUG,
        format="%(asctime)s [%(levelname)s]: %(message)s",
        handlers=[handler_file, handler_console]
    )
    app.logger.setLevel(logging.DEBUG)
    app.logger.info("Application started")

    with app.app_context():
        from app.routes import main, auth, subscription, store
        app.register_blueprint(main.bp)
        app.register_blueprint(auth.bp)
        app.register_blueprint(subscription.bp)
        app.register_blueprint(store.bp)

        db.create_all()

    return app
