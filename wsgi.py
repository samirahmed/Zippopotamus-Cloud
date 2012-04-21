from bottle import route, default_app, static_file, view

class static_files():
    ''' 
    Serve Static Files for homepage. This is done with by 
    mapping all the /static/* folder to be served
    '''
    @route('/static/:path#.+#')
    def serve(path):
        return static_file(path, root='./static')

class index():
    '''
    Class for managing urls
    '''
    @route('/')
    @view('index')
    def homepage():
        return {}

    @route('/gb/:code', method='GET') 
    def gb(code):
       return '<b> lolz uk '+ code +' </b>'

    @route('/:country', method='GET')
    def index(country):
        return '<b>%s listing</b>' % (country)

    @route('/:country/:post', method='GET')
    def index(country,post):
        return '<b>%s %s!</b>' % (country,post)

application = default_app()

