from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return 'Index Page'

@app.route('/hello/<int:ntimes>')
def hello(ntimes):
    output = ""
    for i in range(0,ntimes):
        output += "Hello, "
    return output + ", world"
