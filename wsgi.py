from bottle import route, default_app, static_file, view, response, run
from pymongo import Connection, json_util
from pymongo.database import Database
import json
import os

class static_files():
    ''' 
    Serve Static Files for homepage. This is done with by 
    mapping all the /static/* folder to be served
    '''
    @route('/static/:path#.+#')
    def serve(path):
        return static_file(path, root='./static')

    @route('/:country')
        return static_file(country,root='./listings')

class index():
    '''
    Class for dynamic URLs and queries
    '''

    @route('/')
    @view('index')
    def homepage():
        return {}

#    @route('/:country', method='GET')
#    def index(country):
#        return '<b>%s listing</b>' % (country)

    @route('/:country/:post', method='GET')
    def index(country,post):
        (isFound, results) = standard_query(country,post)
        configure(response)
        if ( isFound == False ) :    # If standard query got >= 1 hit
            response.status=404      # Set Status to a 404
            
        return results               # Return empty JSON String

def configure(response):
    '''
    Configure:
        Given a response dict, configure will
        set the appropriate headers
    '''
    response['Content-Type']='application/json'        # Specify MIME type to be JSON
    response['charset']='UTF-8'                        # Speciify Charset for browser viewing
    response['Access-Control-Allow-Origin']='*'        # Enables CORS for XHR request
    pass

def standard_query(country,code):
    '''
    Standard_query returns a JSON data if there are matching places, for a
    given country abbreviation and zip code
    '''
    result = list(db['global'].find( {'country abbreviation':country.upper(),
                                      'post code':code.upper() }) )
    if  len(result) < 1 :
        content= json.dumps({})        # return empty json string
        isFound = False                # If no results found
        return (isFound,content)
    else:
        country_name=result[0]['country']                    # Capture country
        country_abbv=result[0]['country abbreviation']       # Country abbrev.
        post_code     =result[0]['post code']                # and post code
        isFound = True;                                      # if Match found
        
        for places in result:                                # Remove from each result
            del places['_id']                                # mongo id
            del places['post code']                          # post code
            del places['country']                            # country
            del places['country abbreviation']               # country abbrev. information
        
        content =json.dumps({ 'country':country_name,                  # Return unique fields
                             'country abbreviation':country_abbv,    
                            'post code':post_code,                    
                            'places':result},                          # Return a list of possible places
                            default=json_util.default)                 # Using pymongo json settings

        return (isFound,content)    # Return True and JSON results

with open(os.path.expanduser('~/environment.json')) as f:
    env = json.load(f)                                      # Extract environment variables

connection = Connection( env['DOTCLOUD_DB_MONGODB_URL'] )   # Connect to be w/ env info
db = Database(connection,'zip')                             # Get handle to ZIP db

application = default_app()                                 # WSGI application

#run (host='localhost', port=8080)                          # Local Testing
