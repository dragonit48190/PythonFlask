from config import DATABASE
from  flask import Flask,escape,request,redirect,url_for,render_template,Blueprint
import pymysql
from config import *

member = Blueprint('member',__name__)

con = pymysql.connect(HOST,USER,PASS,DATABASE)

@member.route('/showmember')
def Showmember():
    with con:
        cur = con.cursor()
        sql = "SELECT * FROM membertb"
        cur.execute(sql)
        rows = cur.fetchall()
        return render_template('showmember.html',name = "ข้อมูลสมาชิก",members=rows)

@member.route('/editmember',methods=["POST"])
def Editmember():
    if request.method == 'POST':
        id = request.form['id']
        fname = request.form['fname']
        lname = request.form['lname']
        sex = request.form['sex']
        birthdate = request.form['birthdate']
        email = request.form['email']
        with con:
            cur = con.cursor()
            sql = "update membertb set m_fname = %s,m_lname = %s,m_sex = %s,m_birthdate = %s,m_email = %s where m_id = %s"
            cur.execute(sql,(fname,lname,sex,birthdate,email,id))
            con.commit()
            cur.close()
            return redirect(url_for('member.Showmember'))

@member.route('/deletemember',methods=["POST"])
def Delmember():
    if request.method == 'POST':
        id = request.form['id']
        with con:
            cur = con.cursor()
            sql = "DELETE FROM membertb WHERE m_id = %s"
            cur.execute(sql,(id))
            con.commit()
            cur.close()
            return redirect(url_for('member.Showmember'))