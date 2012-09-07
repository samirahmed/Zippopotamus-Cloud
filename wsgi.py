from bottle import route, default_app, static_file, view, response, run
from pymongo import Connection, json_util
from pymongo.database import Database
from bson.son import SON
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

    @route('/nearby/:country/:post' , method='GET')
    def find_nearby(country,post):
        (isFound, result) = nearby_zip( country , post)
        configure( response)
        if (isFound == False) :
            response.status=404

        return result;

    @route('/:country/:state/:place', method='GET')
    def find_postcode(country, state, place):
        (isFound, results) = place_query(country, state, place)
        configure(response)
        if (isFound == False) :
            response.status=404

        return result;

def configure(response):
    '''
    Configure:
        Given a response dict, configure will
        set the appropriate headers
    '''
    response['Content-Type']='application/json'        # Specify MIME type to be JSON
    response['charset']='UTF-8'                        # Speciify Charset for browser viewing
    response['Access-Control-Allow-Origin']='*'        # Enables CORS for XHR request
    response['Vary']='Accept-Encoding'
    pass


def nearby_zip(country,code):
    '''
    Looks up nearby postcodes given country and postal code
    Returns results for JSON response
    '''
    post = list(db['nearby'].find({'post code' : code.upper(), 
                                   'country abbreviation': country.upper() }) )

    if  len(post) >= 1 :
        lon = float( post[0]['longitude'] )
        lat = float( post[0]['latitude'] )
        ( success, nearby ) =  nearby_query( lat, lon )

        if success: 
            response = { 'near latitude': lat,      # Record the query lat
                        'near longitude': lon,      # Record the query lat
                        'nearby' : nearby[1:] } 
            content = json.dumps( response , default=json_util.default )
            return (True, content)

    content = json.dumps({})
    isFound = False;
    return (isFound,content)

def nearby_coordinates( lat, lon):
    '''
    Looks up nearby postcodes given a latitude or longitude
    Returns results formatted for Json Result
    '''

    (isFound, nearby ) = nearby_query( float(lon) , float(lat)  ) 
    
    if isFound :
        results = {  'near latitude': lat,          # Record the query lat.
                     'near longitude': lon,         # Record the query lon. 
                     'nearby': nearby[:10] }
        content = json.dumps( results, default=json_util.default ) 
        return ( True, content)

    else :
        content = json.dumps( {} )
        return ( False, content )  
        

def nearby_query(lat,lon):
    '''
    GeoSpatial  Query,
    Given a specific latitude or longitude, this returns the closes 11 zipcodes
    '''

    nearby = db.command( SON ( [ ('geoNear' , 'nearby') ,           # Geospatial search
                                 ('near' , [lon,lat] ) ,            # near given coordinates
                                 ('distanceMultiplier' , 3959 ) ,   # Return values in miles
                                 ('spherical', True ),              # Spherical 
                                 ('num', 11) ] ) )                  # Results to return
    if nearby['ok'] > 0 :
        results = list()
        for records in nearby['results'] :
            places = records['obj']
            places['distance'] = records['dis']
            del places['loc']                       # Remove Coordinate info
            del places['_id']                       # Remove mongo_id
            del places['latitude']                  # Remove string latitude
            del places['longitude']                 # Remove string long
            del places['country']                   # Remove country 
            del places['country abbreviation']      # Remove abbrevation
            results.append(places)

        return (True, results)
    else :
        isFound = False;
        return (isFound,content);


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
def place_query(country,state,place):
    '''
    Place_query returns JSON data if there are matching postcodes for a given
    country abbreviation, state abbreviation, and place/city
    '''
    result = list(db['global'].find({'country abbreviation':country.upper(),
                                     'state abbreviation':state.upper(),
                                     'place name': {'$regex': place, '$options': '-i'}
                                     }));
    if len(result) < 1 :
        content = json.dumps({});   #Empty JSON string
        isFound = False             #We didn't find anything
        return (isFound, content)
    else:
        country_name = result[0]['country']
        country_abbv = result[0]['country abbreviation']
        state        = result[0]['state']
        state_abbv   = result[0]['state abbreviation']
        place        = result[0]['place name']

        for places in result:                           #Remove from each result
            del places['_id']                           #Mongo ID
            del places['state']                         #State
            del places['state abbreviation']            #State abbreviation
            del places['country']                       #Country
            del places['country abbreviation']          #Country abbreviation

        content = json.dumps({
                'country': country_name,
                'country abbreviation': country_abbv,
                'state': state,
                'state abbreviation': state_abbv,
                'place name': place,
                'places': result},
                default=json_util.default)

        return (isFound, content)   #Return True and JSON results

# PRESENT GLOBAL
ZIP = 'zip'
NEARBY = 'nearby'

with open(os.path.expanduser('~/environment.json')) as f:
    env = json.load(f)                                      # Extract environment variables

connection = Connection( env['DOTCLOUD_DB_MONGODB_URL'] )   # Connect to be w/ env info
#connection = Connection()
db = Database(connection,'zip')                             # Get handle to ZIP db

application = default_app()                                 # WSGI application

#run (host='localhost', port=8080)                          # Local Testing
