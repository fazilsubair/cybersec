class Config:
    # TODO: secret key is weak, this is fine for our dev environment but should change this eventually in prod
    SECRET_KEY = "supersecretkey"
    SQLALCHEMY_DATABASE_URI = "sqlite:///plantly.db"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
