from flask import Flask, render_template, jsonify, request
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

@app.route('/job/<id>')
def show_job(id):
	try:
		cursor.execute('SELECT * FROM jobs WHERE id = %s', (id,))
		job = cursor.fetchall()[0]
		return render_template('jobpage.html', job=job)
	except IndexError:
		return 'Not Found', 404

@app.route('/job/<id>/apply', methods=['POST'])
def apply_to_job(id):
	data = request.form
	cursor.execute('SELECT * FROM jobs WHERE id = %s', (id,))
	job = cursor.fetchall()[0]
	cursor.execute('INSERT INTO applications\
	(job_id, full_name, email, linkedin_url, education, work_experience, resume_url)\
	VALUES (%s, %s, %s, %s, %s, %s, %s)', (id, data['full_name'], data['email'], data['linkedin_url'], data['education'], data['work_experience'], data['resume_url']))
	db.commit()
	return render_template('application_submitted.html', application=data, job=job)

if __name__ == '__main__':
	app.run(host='0.0.0.0', debug=True)
