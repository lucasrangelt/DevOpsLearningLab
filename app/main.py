from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route('/health')
def health():
    return jsonify (
        status="Healthy",
        hostname=socket.gethostname(),
        message="Testing this thing to see if it works as intended"
    )

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)