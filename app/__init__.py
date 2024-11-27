from flask import Flask, Blueprint, render_template

www = Blueprint("www", __name__, url_prefix="/subdir")


@www.get('/')
def index():
    return render_template("index.html")


@www.get('/page-1')
def page_1():
    return render_template("page1.html")


@www.get('/page-2')
def page_2():
    return render_template("page2.html")


app = Flask(__name__, static_folder=None)
app.register_blueprint(www)

if __name__ == '__main__':
    app.run()
