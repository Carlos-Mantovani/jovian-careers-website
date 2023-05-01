from flask import Flask, render_template, jsonify
import mysql.connector
from settings import DATABASE_PASSWORD

db = mysql.connector.connect(
	host='localhost',
	user='root',
	password=DATABASE_PASSWORD,
	database='joviancareers'
)

cursor = db.cursor(dictionary=True)

app = Flask(__name__)

@app.route('/')
def index():
	cursor.execute('SELECT * FROM jobs')
	jobs = cursor.fetchall()
	print(jobs)
	return render_template('index.html', jobs=jobs)

@app.route('/jobs')
def list_jobs():
	cursor.execute('SELECT * FROM jobs')
	jobs = cursor.fetchall()
	return jsonify(jobs)

if __name__ == '__main__':
	app.run(host='0.0.0.0', debug=True)
