from flask import Flask,render_template,request,session
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail
import json


with open('config.json','r') as c:
    params=json.load(c)["params"]

local_server=True
app=Flask(__name__)
app.secret_key='super-secret-key'
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['gmail_user'],
    MAIL_PASSWORD=params['gmail_password']
)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)

class Feedback(db.Model):
    s_no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(500), nullable=False)
    date = db.Column(db.String(500), nullable=False)
    email = db.Column(db.String(50),  nullable=False)


class Posts(db.Model):
    s_no = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(50), nullable=False)
    slug = db.Column(db.String(25), nullable=False)
    content = db.Column(db.String(1000), nullable=False)
    date = db.Column(db.String(500), nullable=False)
    posted_by = db.Column(db.String(50),  nullable=False)

@app.route("/")
def home():
    posts=Posts.query.filter_by().all()[0:params['no_of_posts']]
    return render_template('index.html',params=params,posts=posts)

@app.route("/about")
def about():
    return render_template('about.html',params=params)

@app.route("/dashboard",methods=['GET','POST'])
def dashboard():
    if ('user' in session and session['user']==params['admin_user']):
        posts=Posts.query.all()
        return render_template('dashboard.html',params=params,posts=posts)
    if request.method=='POST':
        username=request.form.get('user_name')
        userpassword=request.form.get('user_pass')
        if (username==params['admin_user'] and userpassword==params['admin_pass']):
            session['uname']=username
            posts=Posts.query.all()
            return render_template('dashboard.html',params=params,posts=posts)
    return render_template('login.html',params=params,)

@app.route("/post/<string:post_slug>",methods=['GET'])
def post_route(post_slug):
    post=Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html',params=params,post=post)

@app.route("/edit/<string:s_no>",methods=['GET','POST'])
def edit(s_no):
    if ('user' in session and session['user']== params['admin_user']):
        if request.method == 'POST':
            box_title=request.form.get('title')
            slug=request.form.get('slug')
            content=request.form.get('content')
            posted_by=request.form.get('posted_by')
            date=datetime.now()
            #img_file=request.form.get('img_file')
            if s_no==0:
                post=Posts(title=box_title,slug=slug,content=content,posted_by=posted_by,date=date)   #add img_file=img_file in case of image file
                db.session.add(post)
                db.session.commit()
        return render_template('edit.html',params=params)

@app.route("/contact",methods=['GET','POST'])
def contact():
    if(request.method=='POST'):
        '''Add entry to the database'''
        name=request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('msg')
        entry=Feedback(name=name,phone_no=phone,msg=message,email=email,date=datetime.now())
        db.session.add(entry)
        db.session.commit()
      #  Mail.send_message("new message from blog "+name,sender=email,recipients=[params['gmail_user']],body=message+"\n"+phone)

    return render_template('contact.html',params=params)

def thankyou():
    return render_template('thankyou.html',params=params)
app.run(debug=True)
