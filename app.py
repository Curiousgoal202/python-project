# app.py

from flask import Flask

app = Flask(__name__)

# Home route
@app.route('/')
def home():
    return "<h1>Hello from Santosh's Python Web App! 💻</h1>"

# Another route example
@app.route('/about')
def about():
    return "<p>This is a small web app for testing DevOps deployment.</p>"

if __name__ == '__main__':
    # Change port number here
    PORT = 8085
    app.run(host='0.0.0.0', port=PORT)
