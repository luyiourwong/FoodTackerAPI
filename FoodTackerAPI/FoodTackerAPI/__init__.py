"""
The flask application package.
"""

from flask import Flask
app = Flask(__name__)

import FoodTackerAPI.views
import FoodTackerAPI.system
import FoodTackerAPI.dbenum
import FoodTackerAPI.category
import FoodTackerAPI.database
