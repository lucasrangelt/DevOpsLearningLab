from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route('/health')
def health():
    return jsonify (
        status="Healthy",
        hostname=socket.gethostname(),
        message="The show must go on"
    )

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)