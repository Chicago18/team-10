"""
outandequal index (main) view.

URLs include:
/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal
from outandequal.helpers import query_db


@outandequal.app.route('/feed/', methods=['GET', 'POST'])
def show_feed():
	"""Display/Route"""
	context = {}
	return render_template("feed.html", **context)	