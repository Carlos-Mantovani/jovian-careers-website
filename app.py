from flask import Flask, render_template, jsonify

app = Flask(__name__)

JOBS = [
	{
		'id': 1,
		'title': 'Data Analyst',
		'location': 'Texas, USA',
		'salary': '$ 4,000.00'	
	},
	{
		'id': 2,
		'title': 'Data Scientist',
		'location': 'San Francisco, USA',
		'salary': '$ 7,000.00'	
	},
	{
		'id': 3,
		'title': 'Frontend Engineer',
		'location': 'Remote',
		'salary': '$ 5,000.00'	
	},
	{
		'id': 4,
		'title': 'Backend Engineer',
		'location': 'Remote',
		'salary': '$ 10,000.00'	
	}
]

@app.route('/')
def index():
	return render_template('index.html', jobs=JOBS)

@app.route('/jobs')
def list_jobs():
	return jsonify(JOBS)

if __name__ == '__main__':
	app.run(host='0.0.0.0', debug=True)
