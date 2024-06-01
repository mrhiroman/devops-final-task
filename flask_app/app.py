from flask import Flask, request, jsonify
import logging

app = Flask(__name__)

logging.basicConfig(filename='app.log', level=logging.INFO)

@app.route('/')
def home():
    app.logger.info('loaded main page')
    return jsonify(message="Test web app on Flask")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
