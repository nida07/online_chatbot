from flask import *
from database import *
from lstm_chatbot import cb

student=Blueprint('student',__name__)

@student.route('/student_home')
def student_home():
    return render_template('student_home.html')

@student.route('/student_view_department')
def student_view_department():
    data={}
    qa="select * from department"
    res=select(qa)
    data['view']=res
    return render_template('student_view_department.html',data=data)


@student.route('/student_view_academic')
def student_view_academic():
    data={}
    qa="select * from academics"
    res=select(qa)
    data['view']=res
    return render_template('student_view_academic.html',data=data)

@student.route('/student_view_facilities')
def student_view_facilities():
    data={}
    qa="select * from facilities"
    res=select(qa)
    data['view']=res
    return render_template('student_view_facilities.html',data=data)


@student.route('/student_view_activities')
def student_view_activities():
    data={}
    qa="select * from activities"
    res=select(qa)
    data['view']=res
    return render_template('student_view_activities.html',data=data)

@student.route('/student_view_contact')
def student_view_contact():
    data={}
    qa="select * from contacts"
    res=select(qa)
    data['view']=res
    return render_template('student_view_contact.html',data=data)


@student.route("/student_chatbot",methods=['get','post'])
def student_chatbot():
    data={}
    d_id=session['lid']
    data['d_id']=d_id
    q1="select * from chats where  (sender_id='%s' and reciever_id='0') or (sender_id='0' and reciever_id='%s')"%(d_id,d_id)
    print(q1)
    res=select(q1)
    
    data['view']=res

    if 'submit' in request.form:
        msg=request.form['msg']
        response_text = cb(msg)
        q="insert into chats values(NULL,'%s','user','0','bot','%s',now())"%(d_id,msg)
        res=insert(q)
        q1="insert into chats values(NULL,'0','bot','%s','user','%s',now())"%(d_id,response_text)
        print(q1,'///////////////////////////')
        insert(q1)
        
        return redirect(url_for("student.student_chatbot",d_id=d_id))
    return render_template("student_chatbot.html",data=data)