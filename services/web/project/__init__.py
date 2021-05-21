from flask import Flask ,jsonify
app=flask(__name__)
@app.route("/")
def hello_world():
	return jsonify(hello="world")
	