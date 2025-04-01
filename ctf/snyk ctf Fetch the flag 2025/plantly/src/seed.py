from app import create_app, db, bcrypt
from app.models import User, Plant

app = create_app()


def seed_data():
    with app.app_context():
        users = [
            User(email="testuser1@example.com",
                 password=bcrypt.generate_password_hash("password123").decode("utf-8")),
            User(email="testuser2@example.com",
                 password=bcrypt.generate_password_hash("mypassword456").decode("utf-8")),
        ]
        db.session.bulk_save_objects(users)

        plants = [
            Plant(name="Aloe Vera", description="A soothing succulent plant.",
                  price=10.0, image_url="/static/aloe.jpg"),
            Plant(name="Snake Plant", description="A low-maintenance air purifier.",
                  price=15.0, image_url="/static/snake.jpg"),
            Plant(name="Peace Lily", description="A stunning flowering plant.",
                  price=20.0, image_url="/static/peace.jpg"),
        ]
        db.session.bulk_save_objects(plants)

        db.session.commit()
        print("Database seeded successfully!")


if __name__ == "__main__":
    seed_data()
