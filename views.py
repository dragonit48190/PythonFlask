from  flask import Flask,escape,request,redirect,url_for,render_template
import pymysql
from member import *

con = pymysql.connect("127.0.0.1","root","","flaskdb")

app = Flask(__name__)
app.register_blueprint(member)

@app.route('/')
def Index():
    return "This Is Python Home Page"
   


if __name__ == '__main__':  
    app.run(debug=True)