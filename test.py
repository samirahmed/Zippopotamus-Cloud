from bottle import route, run, static_file, view

@route('/static/:path#.+#')
def serve(path):
    return static_file(path,root='./static')

@route('/gb/:code', method='GET')
def gb(code):
    return '<b> lolz uk '+ code +' </b>'

@route('/:country', method='GET')
def index(country):
    return '<b>%s listing</b>' % (country)
 
@route('/:country/:post', method='GET')
def index(country,post):
    return '<b>%s %s!</b>' % (country,post)

@route('/')
@view('landing')
def homepage():
    return {}

run(host='localhost', port=8080)

