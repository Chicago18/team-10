"""
Insta485 login view.

URLs include:
/accounts/login/
"""
from flask import render_template, request, redirect, url_for, session, abort
import outandequal
from outandequal.helpers import query_db, make_password
import uuid
import hashlib


@outandequal.app.route('/accounts/create/', methods=['GET', 'POST'])
def show_create():
    """Display /accounts/create route."""
    if request.method == "GET":
        context = {}
        return render_template("signup.html", **context)

    elif request.method == "POST":
        if request.form['password'] == "":
            abort(400)
        queried_name = query_db("SELECT * FROM users WHERE \
                                username = ?", [request.form['username']],
                                True)
        username_exists = True if queried_name else False
        if username_exists:
            abort(409)
        new_password = make_password(request.form['password'])

        vals = [request.form['username'], request.form['firstname'], request.form['lastname'],
                request.form['email'], request.form['referralid'], request.form['sponsor'], new_password]
        query_db("INSERT INTO users (username, firstname, lastname, email, \
                 referralID, ergCode, password) \n VALUES(?, ?, ?, ?, ?, ?, ?);", vals)

        session['username'] = request.form['username']
        return redirect(url_for('show_index'))
