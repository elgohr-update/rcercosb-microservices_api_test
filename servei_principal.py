from flask import Flask
from flask_restplus import Resource, Api
app = Flask("servei_principal")

@app.route('/hola')
@api.doc(params={})
class MainService(Resource):
	def get():
		return "Hola"

if __name__ == "__main__":
	app.run(host=HOSTNAME, debug=True)
