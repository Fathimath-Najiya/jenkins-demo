from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Jenkins CI/CD!"

if __name__ == "__main__":
    # 0.0.0.0 lets the app be reachable from Docker/container or other hosts
    app.run(host="0.0.0.0", port=5000)
