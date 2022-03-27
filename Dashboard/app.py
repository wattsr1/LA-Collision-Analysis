import datetime as dt
import numpy as np
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, jsonify
# Get password from config file
from config import db_password
# Define database string
db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5433/LA_Collisions"
# Create database engine
engine = create_engine(db_string)
Base = automap_base()
Base.prepare(engine, reflect=True)
Crashes = Base.classes.crashes
Parties = Base.classes.parties 
Victims = Base.classes.victims 
session = Session(engine)
app - Flask(__name__)
@app.route('/')