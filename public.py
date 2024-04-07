from flask import *
from database import *

public=Blueprint('public',__name__)

@public.route('/')
def public_home():
    return render_template('publicindex.html')

@public.route('/login',methods=['get','post'])
def login():

    if 'submit' in request.form:
        uname=request.form['uname']
        psw=request.form['psw']

        qa="select * from login where username='%s' and password='%s'"%(uname,psw)
        res=select(qa)
        print(res)
        session['lid']=res[0]['login_id']

        if res[0]['usertype']=='admin':
            return '''<script>alert('Welcome Admin');window.location='/admin_home';</script>'''
        
        if res[0]['usertype']=='student':

            return '''<script>alert('Welcome Student');window.location='/student_home';</script>'''
        

    return render_template('login.html')


@public.route('/student_reg',methods=['get','post'])
def student_reg():

    if 'submit' in request.form:
        fname=request.form['fname']
        lname=request.form['lname']
        phone=request.form['phone']
        email=request.form['email']
        uname=request.form['uname']
        psw=request.form['psw']

        q1="insert into login values(NULL,'%s','%s','student')"%(uname,psw)
        res=insert(q1)

        qa="insert into student values(NULL,'%s','%s','%s','%s','%s')"%(res,fname,lname,phone,email)
        insert(qa)
        return '''<script>alert('Successfully Registered');window.location='/login';</script>'''
    
    return render_template('student_reg.html')


