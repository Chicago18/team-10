"""
outandequal index (main) view.

URLs include:
/
"""
from flask import render_template, request, redirect, url_for, session
import outandequal
from outandequal.helpers import query_db


@outandequal.app.route('/map/', methods=['GET', 'POST'])
def show_map():
	"""Show/loaded"""
	context = {}
	zipcodes = query_db("SELECT DISTINCT zipcodes FROM ERG_Information")
	context['zipcodes'] = zipcodes
	render_template("map.html", **context)
