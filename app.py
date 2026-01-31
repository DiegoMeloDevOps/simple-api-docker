from flask import Flask, jsonify
import os
import datetime

print("API starting...")

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "message": "API is running 🚀",
        "status": "ok"
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "timestamp": datetime.datetime.utcnow().isoformat() + "Z"
    })

@app.route("/info")
def info():
    return jsonify({
        "app_name": "simple-devops-api",
        "version": "1.0.0",
        "environment": os.getenv("ENVIRONMENT", "development")
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
