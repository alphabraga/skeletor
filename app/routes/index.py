from sys import flags
from flask import Blueprint, render_template
import app

blueprint = Blueprint('index', __name__)

@blueprint.route('/')
def index():

    flask = app.create_app()

    nome = flask.config['NOME']

    return render_template('index/index.html', context={ 'nome': nome })