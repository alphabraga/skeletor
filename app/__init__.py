from flask import Flask
from .config.environment import Environment
from .routes.index import blueprint as index


def create_app():
    app = Flask(__name__)
    app.config.from_object(Environment())
    app.register_blueprint(index)

    return app
