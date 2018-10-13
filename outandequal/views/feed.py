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
	posts = query_db("SELECT * FROM posts")	
	context['posts'] = []
	for p in posts:
		post = {}
		ownerId = p['owner']
		post['ownerName'] = query_db("SELECT DISTINCT ergName FROM ERG_Information WHERE ergID == ?", [ownerId], True)['ergName']
		post['title'] = p['title']
		post['content'] = p['content']
		context['posts'].append(post)
		print (post)
		print ("spacer")
	print(context)
	return render_template("feed.html", **context)	