from bottle import route, default_app

class index():
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
    def homepage():
        return '<b>homedir</b>'

application = default_app()

