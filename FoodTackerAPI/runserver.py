"""
This script runs the FoodTackerAPI application using a development server.
"""

from os import environ
from FoodTackerAPI import app
from flask_cors import CORS

if __name__ == '__main__':
    HOST = environ.get('SERVER_HOST', 'localhost')
    try:
        PORT = int(environ.get('SERVER_PORT', '5555'))
    except ValueError:
        PORT = 5555
    CORS(app)
    app.run(HOST, PORT, debug=True)
