import uuid
from flask import *
from database import *

admin=Blueprint('admin',__name__)


@admin.route('/admin_home')
def admin_home():
    return render_template('admin_home.html')

@admin.route('/manage_dept',methods=['get','post'])
def manage_dept():
    data={}
    qa="select * from department"
    res=select(qa)
    data['view']=res

    if 'submit' in request.form:
        dept=request.form['dept']
        description=request.form['description']
        image=request.files['image']
        path="static/"+str(uuid.uuid4())+image.filename
        image.save(path)

        q1="insert into department values(NULL,'%s','%s','%s')"%(dept,description,path)
        insert(q1)
        return '''<script>alert("Successfully added");window.location='/manage_dept'</script>'''
    
    if 'action' in request.args:
        action=request.args['action']
        id=request.args['id']

    else:
        action=None
    
    if action=='delete':
        q4="delete from department where department_id='%s'"%(id)
        delete(q4)
        return '''<script>alert("Successfully Deleted");window.location='/manage_dept'</script>'''
    
    return render_template('admin_manage_dept.html',data=data)


@admin.route('/manage_academic',methods=['get','post'])
def manage_academic():
    data={}
    qa="select * from academics"
    res=select(qa)
    data['view']=res

    if 'submit' in request.form:
        aca=request.form['aca']
        description=request.form['description']
        image=request.files['image']
        path="static/"+str(uuid.uuid4())+image.filename
        image.save(path)

        q1="insert into academics values(NULL,'%s','%s','%s')"%(aca,description,path)
        insert(q1)
        return '''<script>alert("Successfully added");window.location='/manage_academic'</script>'''
    
    if 'action' in request.args:
        action=request.args['action']
        id=request.args['id']

    else:
        action=None
    
    if action=='delete':
        q4="delete from academics where academic_id='%s'"%(id)
        delete(q4)
        return '''<script>alert("Successfully Deleted");window.location='/manage_academic'</script>'''
    
    return render_template('admin_manage_academic.html',data=data)


@admin.route('/manage_facilities',methods=['get','post'])
def manage_facilities():
    data={}
    qa="select * from facilities"
    res=select(qa)
    data['view']=res

    if 'submit' in request.form:
        aca=request.form['facility']
        description=request.form['description']
        image=request.files['image']
        path="static/"+str(uuid.uuid4())+image.filename
        image.save(path)

        q1="insert into facilities values(NULL,'%s','%s','%s')"%(aca,description,path)
        insert(q1)
        return '''<script>alert("Successfully added");window.location='/manage_facilities'</script>'''
    
    if 'action' in request.args:
        action=request.args['action']
        id=request.args['id']

    else:
        action=None
    
    if action=='delete':
        q4="delete from facilities where facility_id='%s'"%(id)
        delete(q4)
        return '''<script>alert("Successfully Deleted");window.location='/manage_facilities'</script>'''
    
    return render_template('admin_manage_facilities.html',data=data)

@admin.route('/manage_activities',methods=['get','post'])
def manage_activities():
    data={}
    qa="select * from activities"
    res=select(qa)
    data['view']=res

    if 'submit' in request.form:
        aca=request.form['activity']
        description=request.form['description']
        image=request.files['image']
        date=request.form['date']
        path="static/"+str(uuid.uuid4())+image.filename
        image.save(path)

        q1="insert into facilities values(NULL,'%s','%s','%s','%s')"%(aca,description,path,date)
        insert(q1)
        return '''<script>alert("Successfully added");window.location='/manage_activities'</script>'''
    
    if 'action' in request.args:
        action=request.args['action']
        id=request.args['id']

    else:
        action=None
    
    if action=='delete':
        q4="delete from activities where activity_id='%s'"%(id)
        delete(q4)
        return '''<script>alert("Successfully Deleted");window.location='/manage_activities'</script>'''
    
    return render_template('admin_manage_activities.html',data=data)

@admin.route('/manage_contact',methods=['get','post'])
def manage_contact():
    data={}
    qa="select * from contacts"
    res=select(qa)
    data['view']=res

    if 'submit' in request.form:
        post=request.form['post']
        contact=request.form['contact']
        email=request.form['email']

        q1="insert into contacts values(NULL,'%s','%s','%s')"%(post,contact,email)
        insert(q1)
        return '''<script>alert("Successfully added");window.location='/manage_contact'</script>'''
    
    if 'action' in request.args:
        action=request.args['action']
        id=request.args['id']

    else:
        action=None
    
    if action=='delete':
        q4="delete from contacts where contact_id='%s'"%(id)
        delete(q4)
        return '''<script>alert("Successfully Deleted");window.location='/manage_contact'</script>'''
    
    return render_template('admin_manage_contact.html',data=data)

    