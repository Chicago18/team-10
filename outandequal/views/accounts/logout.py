"""
outandequal login view.

URLs include:
/accounts/logout/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal


@outandequal.app.route('/accounts/logout/')
def user_logout():
    """Redirect to login after logging out current user."""
    session.clear()
    return redirect(url_for('show_login'))