<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Zippopotamus- Zip Code Galore</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Zippopotamus">
	<meta name="author" content="Samir Ahmed, Jeff Crowell">

	<!-- Relations -->
	<link rel="shortcut icon" href="/static/favicon.ico">
	<link href="/static/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
	<link href="/static/style.css" rel="stylesheet">
	<link href="/static/prettify.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>

	<style type="text/css">
	body {
		padding-top: 60px;
		padding-bottom: 40px;
	}
	</style>
	
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-30975659-1']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>
	
</head>
<body onload="prettyPrint()">

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#">Zippopotam.us</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="dropdown" id="samples">
							<a href="#samples" data-toggle="dropdown" class="dropdown-toggle">Samples<b class="caret"></b></a>
							<ul class="dropdown-menu">
			                     <li><a href="/static/sample_us.html">USA</a></li>
			                     <li><a href="/static/sample_de.html">Germany</a></li>
				                 <li><a href="/static/sample_fr.html">France</a></li>
								 <li><a href="/static/sample_es.html">Spain</a></li>
							</ul>
						</li>
						<li><a href="#where">Countries</a></li>
						<li><a href="#who">Who</a></li>
						<li><a href="https://github.com/samirahmed/Zippopotamus-Cloud">Code</a></li>
						<li><a href="https://github.com/crowell/Zippopotamus">CrowdSource</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">

		<br/>
        <div class="alert alert-danger fade in">
        <a class="close" data-dismiss="alert" >&times;</a>
         aaaaaand we're back! we move to a temporary host at Boston University while we try and find zippopotam.us a new home. Please be patient if you experience any downtime
         </div>
		<!-- Main hero unit for a primary marketing message or call to action -->
		<div id="what" class="hero-unit">
			<div class="row-fluid">
				<div class="span7">
					<h1>Zip Code Galore!</h1> 
					<p><h2>Zip·po·pot·amus  &ensp;&ensp;/&#x02c8;zip&#x014d;p&auml;t&#x0259;m&#x0259;s/</h2></p>
					<p>Postal Codes and Zip Codes made easy</p>
					<li><p>Free API with JSON Response Format</p></li>
					<li><p>Over 60 Countries Supported</p></li>
					<li><p>Perfect for Form Autocompletion</p></li>
					<li><p>Open for Crowdsourcing and Contribution</p></li>
				</div>
				<div class="span5">	
					<img src="/static/lilz.png"/>
				</div>
			</div>
			<hr/>
			<div class="row-fluid">
				<div class="span3">
					<p><a href="http://api.zippopotam.us/us/90210" class="btn btn-inverse btn-large">Try It Out &raquo;</a></p>
				</div>
				<div class="span8">
					<p><span style="font-family: Monaco, Consolas, 'Lucida Console', monospace; font-size: 17px;">
						Structure: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">country</span>/<span style="color:darkgreen;">postal-code</span><br/>
						Example: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">us</span>/<span style="color:darkgreen;">90210</span><br/>
						NEW! City->Zip: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">country</span>/<span style="color:darkgreen;">state</span>/<span style="color:goldenrod;">city</span><br/>
						Example: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">us</span>/<span style="color:darkgreen;">ma</span>/<span style="color:goldenrod;">belmont</span><br/>
						NEW! Nearby: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">nearby</span>/<span style="color:darkgreen;">country</span>/<span style="color:goldenrod;">postalcode</span><br/>
						Example: <span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">nearby</span>/<span style="color:darkgreen;">us</span>/<span style="color:goldenrod;">02478</span><br/>
					</span>
				</div>
			</div>
			<hr/>
			<div class='row-fluid'>
				<div class="span4">
					<strong style="font-size:20px;">Autocomplete Examples:</strong> 
				</div>
				<div class="span2">
					<a href="/static/sample_us.html" class="example" >USA</a>
				</div>
				<div class="span2">
					<a href="/static/sample_de.html" class="example">Germany</a>
				</div>
				<div class="span2">
					<a href="/static/sample_es.html" class="example" >Spain</a>
				</div>
				<div class="span1">
					<a href="/static/sample_fr.html" class="example">France</a>
				</div>

			</div>
		</div>
		<!-- Example Javascript -->
		<div id="how" class="hero-unit">
			<h1>How to use it!</h1>
			<br/>
			<p>It's JSON! Here is a simple javascript example</p>
			<pre class="prettyprint">
&lt;script type="text/javascript"&gt;
var client = new XMLHttpRequest();
client.open("GET", "http://api.zippopotam.us/us/90210", true);
client.onreadystatechange = function() {
	if(client.readyState == 4) {
		alert(client.responseText);
	};
};

client.send();
&lt;/script&gt;
			</pre>

			<h2>JSON Result:</h2>
			<pre class="prettyprint lang-javascript">
{
   "post code": "90210",
   "country": "United States",
   "country abbreviation": "US",
   "places": [
       {
           "place name": "Beverly Hills",
           "longitude": "-118.4065",
           "state": "California",
           "state abbreviation": "CA",
           "latitude": "34.0901"
       }
   ]
}
			</pre>
		</div>


		<!-- Countries information -->
		<div class="hero-unit" id="where">
			<h1>Countries Supported</h1>
			<br/>
			<p>Data adapted from the fine folks at <a href="http://www.geonames.org/">geonames.org</a></p>
			<br/>
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>Country</th>
						<th>Code</th>
						<th>Example URL</th>
						<th>Range</th>
						<th>Count</th>
					</tr>
				</thead>
				<tbody>
					<tr><td>Andorra</td><td>AD</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">AD</span>/<span style="color:darkgreen;">AD100</span></td><td>AD100 : AD700</td><td>7</td></tr>
					<tr><td>Argentina</td><td>AR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">AR</span>/<span style="color:darkgreen;">1601</span></td><td>1601 : 9431</td><td>20260</td></tr>
					<tr><td>American Samoa</td><td>AS</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">AS</span>/<span style="color:darkgreen;">96799</span></td><td>96799 : 96799</td><td>1</td></tr>
					<tr><td>Austria</td><td>AT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">AT</span>/<span style="color:darkgreen;">1010</span></td><td>1010 : 9992</td><td>4877</td></tr>
					<tr><td>Australia</td><td>AU</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">AU</span>/<span style="color:darkgreen;">0200</span></td><td>0200 : 9726</td><td>10161</td></tr>
					<tr><td>Bangladesh</td><td>BD</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">BD</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9461</td><td>1323</td></tr>
					<tr><td>Belgium</td><td>BE</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">BE</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9992</td><td>3386</td></tr>
					<tr><td>Bulgaria</td><td>BG</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">BG</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9974</td><td>5304</td></tr>
					<tr><td>Brazil</td><td>BR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">BR</span>/<span style="color:darkgreen;">01000-000</span></td><td>01000-000 : 99990-000</td><td>5526</td></tr>
					<tr><td>Canada</td><td>CA</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">CA</span>/<span style="color:darkgreen;">A0A</span></td><td>A0A : Y1A</td><td>1621</td></tr>
					<tr><td>Switzerland</td><td>CH</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">CH</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9658</td><td>4614</td></tr>
					<tr><td>Czech Republic</td><td>CZ</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">CZ</span>/<span style="color:darkgreen;">100 00</span></td><td>100 00 : 798 62</td><td>15507</td></tr>
					<tr><td>Germany</td><td>DE</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">DE</span>/<span style="color:darkgreen;">01067</span></td><td>01067 : 99998</td><td>16482</td></tr>
					<tr><td>Denmark</td><td>DK</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">DK</span>/<span style="color:darkgreen;">0800</span></td><td>0800 : 9990</td><td>1182</td></tr>
					<tr><td>Dominican Republic</td><td>DO</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">DO</span>/<span style="color:darkgreen;">10101</span></td><td>10101 : 11906</td><td>546</td></tr>
					<tr><td>Spain</td><td>ES</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">ES</span>/<span style="color:darkgreen;">01001</span></td><td>01001 : 52080</td><td>56542</td></tr>
					<tr><td>Finland</td><td>FI</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">FI</span>/<span style="color:darkgreen;">00002</span></td><td>00002 : 99999</td><td>4637</td></tr>
					<tr><td>Faroe Islands</td><td>FO</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">FO</span>/<span style="color:darkgreen;">100</span></td><td>100 : 970</td><td>130</td></tr>
					<tr><td>France</td><td>FR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">FR</span>/<span style="color:darkgreen;">01000</span></td><td>01000 : 98799</td><td>51129</td></tr>
					<tr><td>Great Britain</td><td>GB</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GB</span>/<span style="color:darkgreen;">AB1</span></td><td>AB1 : ZE3</td><td>27769</td></tr>
					<tr><td>French Guyana</td><td>GF</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GF</span>/<span style="color:darkgreen;">97300</span></td><td>97300 : 97390</td><td>25</td></tr>
					<tr><td>Guernsey</td><td>GG</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GG</span>/<span style="color:darkgreen;">GY1</span></td><td>GY1 : GY9</td><td>8</td></tr>
					<tr><td>Greenland</td><td>GL</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GL</span>/<span style="color:darkgreen;">2412</span></td><td>2412 : 3992</td><td>33</td></tr>
					<tr><td>Guadeloupe</td><td>GP</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GP</span>/<span style="color:darkgreen;">97100</span></td><td>97100 : 97190</td><td>33</td></tr>
					<tr><td>Guatemala</td><td>GT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GT</span>/<span style="color:darkgreen;">01001</span></td><td>01001 : 22027</td><td>548</td></tr>
					<tr><td>Guam</td><td>GU</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GU</span>/<span style="color:darkgreen;">96910</span></td><td>96910 : 96932</td><td>23</td></tr>
					<tr><td>Guyana</td><td>GY</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">GY</span>/<span style="color:darkgreen;">97312</span></td><td>97312 : 97360</td><td>9</td></tr>
					<tr><td>Croatia</td><td>HR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">HR</span>/<span style="color:darkgreen;">10000</span></td><td>10000 : 53296</td><td>6943</td></tr>
					<tr><td>Hungary</td><td>HU</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">HU</span>/<span style="color:darkgreen;">1011</span></td><td>1011 : 9985</td><td>4041</td></tr>
					<tr><td>Isle of Man</td><td>IM</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">IM</span>/<span style="color:darkgreen;">IM1</span></td><td>IM1 : IM9</td><td>86</td></tr>
					<tr><td>India</td><td>IN</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">IN</span>/<span style="color:darkgreen;">110001</span></td><td>110001 : 855126</td><td>15226</td></tr>
					<tr><td>Iceland</td><td>IS</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">IS</span>/<span style="color:darkgreen;">101</span></td><td>101 : 902</td><td>148</td></tr>
					<tr><td>Italy</td><td>IT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">IT</span>/<span style="color:darkgreen;">00010</span></td><td>00010 : 98168</td><td>19940</td></tr>
					<tr><td>Jersey</td><td>JE</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">JE</span>/<span style="color:darkgreen;">JE1</span></td><td>JE1 : JE3</td><td>4</td></tr>
					<tr><td>Japan</td><td>JP</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">JP</span>/<span style="color:darkgreen;">100-0001</span></td><td>100-0001 : 999-8531</td><td>94388</td></tr>
					<tr><td>Liechtenstein</td><td>LI</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">LI</span>/<span style="color:darkgreen;">9485</span></td><td>9485 : 9498</td><td>13</td></tr>
					<tr><td>Sri Lanka</td><td>LK</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">LK</span>/<span style="color:darkgreen;"> *</span></td><td> * : 96167</td><td>1832</td></tr>
					<tr><td>Lithuania</td><td>LT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">LT</span>/<span style="color:darkgreen;">00001</span></td><td>00001 : 99069</td><td>20558</td></tr>
					<tr><td>Luxembourg</td><td>LU</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">LU</span>/<span style="color:darkgreen;">L-1009</span></td><td>L-1009 : L-9999</td><td>4334</td></tr>
					<tr><td>Monaco</td><td>MC</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MC</span>/<span style="color:darkgreen;">98000</span></td><td>98000 : 98000</td><td>29</td></tr>
					<tr><td>Moldavia</td><td>MD</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MD</span>/<span style="color:darkgreen;">MD-2000</span></td><td>MD-2000 : MD-7731</td><td>1753</td></tr>
					<tr><td>Marshall Islands</td><td>MH</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MH</span>/<span style="color:darkgreen;">96960</span></td><td>96960 : 96970</td><td>2</td></tr>
					<tr><td>Macedonia</td><td>MK</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MK</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 7550</td><td>220</td></tr>
					<tr><td>Northern Mariana Islands</td><td>MP</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MP</span>/<span style="color:darkgreen;">96950</span></td><td>96950 : 96952</td><td>4</td></tr>
					<tr><td>Martinique</td><td>MQ</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MQ</span>/<span style="color:darkgreen;">97200</span></td><td>97200 : 97290</td><td>34</td></tr>
					<tr><td>Mexico</td><td>MX</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MX</span>/<span style="color:darkgreen;">01000</span></td><td>01000 : 99998</td><td>75203</td></tr>
					<tr><td>Malaysia</td><td>MY</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">MY</span>/<span style="color:darkgreen;">01000</span></td><td>01000 : 98859</td><td>2818</td></tr>
					<tr><td>Netherlands</td><td>NL</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">NL</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9999</td><td>5314</td></tr>
					<tr><td>Norway</td><td>NO</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">NO</span>/<span style="color:darkgreen;">0001</span></td><td>0001 : 9991</td><td>4574</td></tr>
					<tr><td>New Zealand</td><td>NZ</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">NZ</span>/<span style="color:darkgreen;">0110</span></td><td>0110 : 9893</td><td>1737</td></tr>
					<tr><td>Phillippines</td><td>PH</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PH</span>/<span style="color:darkgreen;">0400</span></td><td>0400 : 9811</td><td>2232</td></tr>
					<tr><td>Pakistan</td><td>PK</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PK</span>/<span style="color:darkgreen;">10010</span></td><td>10010 : 97320</td><td>11847</td></tr>
					<tr><td>Poland</td><td>PL</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PL</span>/<span style="color:darkgreen;">00-001</span></td><td>00-001 : 99-440</td><td>21980</td></tr>
					<tr><td>Saint Pierre and Miquelon</td><td>PM</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PM</span>/<span style="color:darkgreen;">97500</span></td><td>97500 : 97500</td><td>2</td></tr>
					<tr><td>Puerto Rico</td><td>PR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PR</span>/<span style="color:darkgreen;">00601</span></td><td>00601 : 00988</td><td>187</td></tr>
					<tr><td>Portugal</td><td>PT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">PT</span>/<span style="color:darkgreen;">1000-001</span></td><td>1000-001 : 9980-999</td><td>204006</td></tr>
					<tr><td>French Reunion</td><td>RE</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">RE</span>/<span style="color:darkgreen;">97400</span></td><td>97400 : 97490</td><td>37</td></tr>
					<tr><td>Russia</td><td>RU</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">RU</span>/<span style="color:darkgreen;">101000</span></td><td>101000 : 901993</td><td>43538</td></tr>
					<tr><td>Sweden</td><td>SE</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">SE</span>/<span style="color:darkgreen;">10005</span></td><td>10005 : 98499</td><td>16079</td></tr>
					<tr><td>Slovenia</td><td>SI</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">SI</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9600</td><td>557</td></tr>
					<tr><td>Svalbard & Jan Mayen Islands</td><td>SJ</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">SJ</span>/<span style="color:darkgreen;">8099</span></td><td>8099 : 9178</td><td>8</td></tr>
					<tr><td>Slovak Republic</td><td>SK</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">SK</span>/<span style="color:darkgreen;">010 01</span></td><td>010 01 : 992 01</td><td>4152</td></tr>
					<tr><td>San Marino</td><td>SM</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">SM</span>/<span style="color:darkgreen;">47890</span></td><td>47890 : 47899</td><td>26</td></tr>
					<tr><td>Thailand</td><td>TH</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">TH</span>/<span style="color:darkgreen;">10100</span></td><td>10100 : 96220</td><td>902</td></tr>
					<tr><td>Turkey</td><td>TR</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">TR</span>/<span style="color:darkgreen;">01000</span></td><td>01000 : 81950</td><td>51379</td></tr>
					<tr><td>United States</td><td>US</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">US</span>/<span style="color:darkgreen;">00210</span></td><td>00210 : 99950</td><td>43624</td></tr>
					<tr><td>Vatican</td><td>VA</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">VA</span>/<span style="color:darkgreen;">00120</span></td><td>00120 : 00120</td><td>2</td></tr>
					<tr><td>Virgin Islands</td><td>VI</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">VI</span>/<span style="color:darkgreen;">00801</span></td><td>00801 : 00851</td><td>16</td></tr>
					<tr><td>Mayotte</td><td>YT</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">YT</span>/<span style="color:darkgreen;">97600</span></td><td>97600 : 97680</td><td>17</td></tr>
					<tr><td>South Africa</td><td>ZA</td><td><span style="color:darkblue;">api.zippopotam.us</span>/<span style="color:darkred;">ZA</span>/<span style="color:darkgreen;">0002</span></td><td>0002 : 9992</td><td>3920</td></tr>
				</tbody>
			</table>
		</div>

		<!-- Example row of columns -->
		<div id="who" class="row">
			<div class="span4">
				<h2>Samir Ahmed</h2>
				<iframe src="http://githubbadge.appspot.com/badge/samirahmed?a=0" style="border: 0;height: 142px;width: 200px;overflow: hidden;" frameBorder=0></iframe>          
				<p><a class="btn btn-inverse" href="http://twitter.com/#!/samirahmed">Twitter &raquo;</a></p>
			</div>
			<div class="span4">
				<h2>Jeff Crowell</h2>
				<iframe src="http://githubbadge.appspot.com/badge/crowell?a=0" style="border: 0;height: 142px;width: 200px;overflow: hidden;" frameBorder=0></iframe>
				<p><a class="btn btn-inverse" href="http://twitter.com/#!/jeffreycrowell">Twitter &raquo;</a></p>
			</div>
			<div class="span4">
				<h2>License</h2>
				<p>This Zippopotam.us API is made available under the Open Database License: http://opendatacommons.org/licenses/odbl/1.0/. Any rights in individual contents of the database are licensed under the Database Contents License: http://opendatacommons.org/licenses/dbcl/1.0/</p>
				<br/>  
				<p><a class="btn btn-inverse btn-small" href="http://opendatacommons.org/licenses/odbl/1.0/">View details &raquo;</a></p>
			</div>
		</div>

		<hr>

		<footer>
			<center> <p>&copy; Zippopotamus 2012 | Samir Ahmed | Jeff Crowell </p> </center>
		</footer>

	</div> <!-- /container -->
	<script type="text/javascript" src="/static/prettify.js"></script>
	<script type="text/javascript" src="/static/bootstrap/js/bootstrap-alert.js"></script>
	<script type="text/javascript" src="/static/bootstrap/js/bootstrap-dropdown.js"></script>

</body>
</html>
