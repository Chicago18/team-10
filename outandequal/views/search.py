"""
outandequal search (main) view.

URLs include:
/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal
from outandequal.helpers import query_db


@outandequal.app.route('/search/', methods=['GET', 'POST'])
def show_search():
	"""Display/Route"""
	context = {}
	return render_template("search_page.html", **context)	