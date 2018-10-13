"""
outandequal index (main) view.

URLs include:
/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal
from outandequal.helpers import query_db


@outandequal.app.route('/', methods=['GET', 'POST'])
def show_index():
	"""Display/Route"""
	context = {}
	return render_template("index.html", **context)	