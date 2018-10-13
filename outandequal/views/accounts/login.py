"""
outandequal login view.

URLs include:
/accounts/login/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal
from outandequal.helpers import query_db
import hashlib


def login_auth(username, password):
    """Authorize a password for username."""
    user = query_db("SELECT * FROM users WHERE username=?", [username], True)
    if user is None:
        return False
    password_entry = user['password'].split('$')
    algorithm, salt, hash_val = password_entry[0:3]
    hash_obj = hashlib.new(algorithm)
    hash_obj.update((salt + password).encode('utf-8'))
    return hash_obj.hexdigest() == hash_val


@outandequal.app.route('/accounts/login/', methods=['GET', 'POST'])
def show_login():
    """Display /accounts/login/ route."""
    if request.method == 'GET':
        context = {}
        return render_template("login.html", **context)
    elif request.method == 'POST':
        if login_auth(request.form['username'], request.form['password']):
            session['username'] = request.form['username']
            return redirect(url_for('show_index'))
        return redirect(url_for('show_login'))
