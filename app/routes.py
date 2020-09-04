from flask import render_template, flash, redirect, url_for
from app import app
from app.forms import LoginForm
from flaskext.mysql import MySQL

mysql = MySQL()
 
app.config['MYSQL_DATABASE_USER'] = 'phpmyadmin'
app.config['MYSQL_DATABASE_PASSWORD'] = 'test1234'
app.config['MYSQL_DATABASE_DB'] = 'tavush_tour'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()
#cursor.execute("create table test (`id` INT,`name`varchar(32))")
@app.route('/')
@app.route('/index')
def index():
    cursor.execute("select * from main_destinations")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    destinations = data_dict_version

    cursor.execute("select * from header")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    header = data_dict_version

    cursor.execute("select * from latest_news")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    latest_news = data_dict_version

    cursor.execute("select * from videos")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    videos = data_dict_version

    cursor.execute("select * from menu_childes")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    menu_childes = data_dict_version

    cursor.execute("select * from menu")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    menu = data_dict_version

    cursor.execute("select * from middle_header")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    middle_header = data_dict_version

    cursor.execute("select * from guides")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    guides = data_dict_version

    cursor.execute("select * from team_leader")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    team_leader = data_dict_version

    cursor.execute("select * from restaurants")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    restaurants = data_dict_version

    cursor.execute("select * from our_team")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    our_team = data_dict_version

    cursor.execute("select * from hotels")
    t = cursor.fetchall();
    data_dict_version = []
    row_headers = [x[0] for x in cursor.description]
    for result in t:
        data_dict_version.append(dict(zip(row_headers, result)))
    hotels = data_dict_version

    user = {'username': 'Gor'}
    posts = [
        {
            'author': {'username': 'John'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'username': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        },
        {
            'author': {'username': 'GOr'},
            'body': 'asdasdasdasdaasdasdasddasd'
        }
    ]




    return render_template('index.html',team_leader = team_leader,
                           menu_childes = menu_childes, latest_news = latest_news,
                           menu = menu , title='Tavush Travel',hotels = hotels,
                           restaurants = restaurants,guides = guides,user=user,
                           posts=posts, destinations=destinations, videos=videos ,
                           header = header,our_team = our_team,middle_header = middle_header)

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        flash('Login requested for user {}, remember_me={}'.format(
            form.username.data, form.remember_me.data))
        return redirect(url_for('index'))
    return render_template('login.html', title='Sign In', form=form)

