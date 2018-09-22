from flask import Flask, render_template, request, redirect, url_for, abort
from flask_login import current_user, login_required, login_user, logout_user
from server import app, system
from datetime import datetime
from course import course
from user import user 
from errors import MakeCourseError, LoginError

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    msg = ''
    if request.method == 'POST':
        try:
            user = system.validate_login(request.form['username'], request.form['password'])
            if user is None:
                msg = "Wrong username or password! Please try again!"
                return render_template('basic_login.html', message=msg)
            login_user(user)
            redir = request.args.get('next')
            return redirect(redir or url_for('events'))
        except LoginError as le:
            return render_template('basic_login.html', errors=le.errors, message=msg)
    return render_template("basic_login.html", message=msg)

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('home'))
    
@app.route('/register', methods=['GET', 'POST'])
def registerGuest():
    msg=''
    if request.method=='POST':
        try:
            user_id = request.form['zid']
            password = request.form['password']
            user = system.validate_guest(request.form['zid'], request.form['password'])
            if user is None: # if guest doesn't already exist in system add guest
                system.add_users(User(zID=user_id,password=password))
                msg = "User registration successful!"
                return render_template("user_register.html", message=msg)
            else:
                msg = "You have already registered for a user account!"
                return render_template("user_register.html", message=msg)
        except LoginError as le:
            return render_template('user_register.html', errors=le.errors, message=msg)
    return render_template("user_register.html", message=msg)

@app.route('/404')
@app.errorhandler(404)
def page_not_found(e=None):
    return render_template('404.html'), 404	

