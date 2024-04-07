from flask import *
from database import *
from admin import admin
from students import student
from public import public

app=Flask(__name__)
app.register_blueprint(admin)
app.register_blueprint(student)
app.register_blueprint(public)

app.secret_key="student"

app.run(debug=True,port='5667')