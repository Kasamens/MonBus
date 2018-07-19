from flask_sqlalchemy import SQLAlchemy



app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URI','sqlite:///database.sqlite3')
app.config['SECRET_KEY'] = "random string"

db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column('user_id', db.Integer, primary_key = True)
    firstname = db.Column(db.String(100))
    lastname = db.Column(db.String(50))
    status = db.Column(db.String(200))
    email = db.Column(db.String(200)) #to be changed to the propper fields
    password = db.Column(db.String(32)) #to be changed to the propper fields

    def __init__(self, firstname, lastname, status,email):
        self.firstname = firstaname
        self.lastname = lastname
        self.status = status
        self.email = email
        self.password = password
