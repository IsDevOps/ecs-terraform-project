from flask import Flask, render_template
from datetime import datetime

app = Flask(__name__)

@app.route("/")
def landing_page():
    server_time = datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S")
    return render_template("index.html", server_time=server_time)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
