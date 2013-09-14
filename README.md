# Zippopotamus Cloud

---

## API Moved

Our full crowd-source zip-db can be found 
[here](https://mega.co.nz/#!jkRwHZLB!ZTEy5QI8zg7KZd32y6RD-kY5njJFptb67at7AdZtBS4)

Trea has taken over Zippopotamus - you can find it at the [ekotechnology fork](https://github.com/ekotechnology/Zippopotamus-Cloud)

Thanks

Jeff & Samir

---

This is a repository for  [Zippopotamus](http://www.zippopotam.us) the global postal code API

Zippopotamus is hosted by [dotCloud](http://dotCloud.com). This repo is used to build and maintain the site.

If you want to contribute to the improving the site, back-end, front-end etc. Just fork away and submit pull requests. 

### Sample Implementations 

Checkout the `static/` folder to see some of the sample implementations of Zippopotamus for inspiration and examples for how to implement Zippopotamus API for use in your website etc.

If you want to share an implementation, we would love to post example cases of Zippopotamus on our homepage.

### Response Format

On May 1st Zippopotamus changed their JSON response format to work better with international postal codes.  Now we support a one-to-many format service. That is that one zip code may map to many regions, this is common in countries like Spain and France (but not in the US and Germany). 

## Postal Code Information

For information our postal codes and countries supported, you should check out the [zippopotamus crowd-sourcing project](https://github.com/crowell/zippopotamus).  Here you can download the entire database dump, or fork and add changes that we will incorporate into our DB.

## Technical Information

### What is Zippopotamus built on

At the moment the zippopotamus is built on Python, MongoDB and bottle.py framework.

### Local Testing?

The site is configured to run on dotCloud, if you want to test out the web interfaceyou can change the wsgi.py file to include the last commented line, which is used to run the site on your local host.

### Suggestions and Comments?

Hate it? Love it? Open an issue if you have a problem or contact
[Jeff Crowell](http://twitter.com/jeffreycrowell) or [Samir Ahmed](http://twitter.com/samirahmed) 

Also, we aren't bottle or python or mongo experts. So if you see a way that we can improve, please let us know. Additionally, if you have examples (translation corrects etc) of using Zippopotamus that you want to share let us know and we can feature your site / blog on the homepage.
