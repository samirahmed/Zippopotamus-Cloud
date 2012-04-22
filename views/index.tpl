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
						<li><a href="#">What</a></li>
						<li><a href="#how">Example</a></li>
						<li><a href="#where">Countries</a></li>
						<li><a href="#who">Who</a></li>
						<li><a href="https://github.com/crowell/Zippopotamus">Contribute</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">

		<!-- Main hero unit for a primary marketing message or call to action -->
		<div id="what" class="hero-unit">
			<div class="row-fluid">
				<div class="span7">
					<h1>Zip Code Galore</h1> 
					<p><h2>Zip·po·pot·amus  &ensp;&ensp;/&#x02c8;zip&#x014d;p&auml;t&#x0259;m&#x0259;s/</h2></p>
					<p>Postal Codes and Zip Codes made easy</p>
					<li><p>Free API with JSON Response Format</p></li>
					<li><p>Over 50 Countries Supported</p></li>
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
					<p><a href="http://zippopotam.us/us/90210" class="btn btn-inverse btn-large">Try It Out &raquo;</a></p>
				</div>
				<div class="span8">
					<p><span style="font-family: Monaco, Consolas, 'Lucida Console', monospace; font-size: 17px;">
						Structure: <span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">country</span>/<span style="color:darkgreen;">postal-code</span><br/>
						Example: <span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">us</span>/<span style="color:darkgreen;">90210</span><br/>
					</span>
				</div>
			</div>
		</div>
		<!-- Example on How to Use the API -->
		<div id="how" class="hero-unit">
			<h1>How to use it!</h1>
			<br/>
			<p>Its JSON! Here is a simple javascript example</p>
			<pre class="prettyprint">
&lt;script type="text/javascript"&gt;
var client = new XMLHttpRequest();
client.open("GET", "http://zippopotam.us/us/90210", true);
client.onreadystatechange = function() {
	if(client.readyState == 4) {
		alert(client.responseText);
	};
};

client.send();
&lt;/script&gt;
			</pre>

			<h2>Result:</h2>
			<pre>{<br/>    "country": "US",<br/>    "place name": "Beverly Hills",<br/>    "longitude": "-118.4065",<br/>    "latitude": "34.0901",<br/>    "state": "California",<br/>    "state abbreviation": "CA",<br/>    "post code": "90210"<br/>}</pre>
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
					<tr><td>Andorra</td><td>ad</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ad</span>/<span style="color:darkgreen;">AD100</span></td><td>AD100 : AD700</td><td>6</td></tr>
					<tr><td>Argentina</td><td>ar</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ar</span>/<span style="color:darkgreen;">3636</span></td><td>3636 : 9407</td><td>20259</td></tr>
					<tr><td>American Samoa</td><td>as</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">as</span>/<span style="color:darkgreen;">96799</span></td><td>96799 : 96799</td><td>0</td></tr>
					<tr><td>Austria</td><td>at</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">at</span>/<span style="color:darkgreen;">7000</span></td><td>7000 : 8934</td><td>4876</td></tr>
					<tr><td>Australia</td><td>au</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">au</span>/<span style="color:darkgreen;">0200</span></td><td>0200 : 6997</td><td>10160</td></tr>
					<tr><td>Bangladesh</td><td>bd</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">bd</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9461</td><td>1322</td></tr>
					<tr><td>Belgium</td><td>be</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">be</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 4090</td><td>3385</td></tr>
					<tr><td>Bulgaria</td><td>bg</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">bg</span>/<span style="color:darkgreen;">8500</span></td><td>8500 : 5242</td><td>5303</td></tr>
					<tr><td>Brazil</td><td>br</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">br</span>/<span style="color:darkgreen;">69945-000</span></td><td>69945-000 : 77913-000</td><td>5525</td></tr>
					<tr><td>Canada</td><td>ca</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ca</span>/<span style="color:darkgreen;">T0A</span></td><td>T0A : Y1A</td><td>1620</td></tr>
					<tr><td>Switzerland</td><td>ch</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ch</span>/<span style="color:darkgreen;">5000</span></td><td>5000 : 9658</td><td>4613</td></tr>
					<tr><td>Czech Republic</td><td>cz</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">cz</span>/<span style="color:darkgreen;">100 00</span></td><td>100 00 : 793 76</td><td>15506</td></tr>
					<tr><td>Germany</td><td>de</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">de</span>/<span style="color:darkgreen;">01945</span></td><td>01945 : 15229</td><td>16481</td></tr>
					<tr><td>Denmark</td><td>dk</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">dk</span>/<span style="color:darkgreen;">0800</span></td><td>0800 : 9990</td><td>1181</td></tr>
					<tr><td>Dominican Republic</td><td>do</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">do</span>/<span style="color:darkgreen;">10101</span></td><td>10101 : 11906</td><td>545</td></tr>
					<tr><td>Spain</td><td>es</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">es</span>/<span style="color:darkgreen;">04001</span></td><td>04001 : 46989</td><td>56541</td></tr>
					<tr><td>Finland</td><td>fi</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">fi</span>/<span style="color:darkgreen;">00002</span></td><td>00002 : 99999</td><td>4636</td></tr>
					<tr><td>Faroe Islands</td><td>fo</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">fo</span>/<span style="color:darkgreen;">100</span></td><td>100 : 970</td><td>129</td></tr>
					<tr><td>France</td><td>fr</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">fr</span>/<span style="color:darkgreen;">24000</span></td><td>24000 : 98799</td><td>51128</td></tr>
					<tr><td>Great Britain</td><td>gb</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gb</span>/<span style="color:darkgreen;">LU1</span></td><td>LU1 : UB11</td><td>27768</td></tr>
					<tr><td>French Guyana</td><td>gf</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gf</span>/<span style="color:darkgreen;">97300</span></td><td>97300 : 97390</td><td>24</td></tr>
					<tr><td>Guernsey</td><td>gg</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gg</span>/<span style="color:darkgreen;">GY1</span></td><td>GY1 : GY9</td><td>7</td></tr>
					<tr><td>Greenland</td><td>gl</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gl</span>/<span style="color:darkgreen;">2412</span></td><td>2412 : 3992</td><td>32</td></tr>
					<tr><td>Guadeloupe</td><td>gp</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gp</span>/<span style="color:darkgreen;">97100</span></td><td>97100 : 97190</td><td>32</td></tr>
					<tr><td>Guatemala</td><td>gt</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gt</span>/<span style="color:darkgreen;">16000</span></td><td>16000 : 19018</td><td>547</td></tr>
					<tr><td>Guam</td><td>gu</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gu</span>/<span style="color:darkgreen;">96910</span></td><td>96910 : 96932</td><td>22</td></tr>
					<tr><td>Guyana</td><td>gy</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">gy</span>/<span style="color:darkgreen;">97312</span></td><td>97312 : 97360</td><td>8</td></tr>
					<tr><td>Croatia</td><td>hr</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">hr</span>/<span style="color:darkgreen;">10000</span></td><td>10000 : 53296</td><td>6942</td></tr>
					<tr><td>Hungary</td><td>hu</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">hu</span>/<span style="color:darkgreen;">7184</span></td><td>7184 : 8999</td><td>4040</td></tr>
					<tr><td>Isle of Man</td><td>im</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">im</span>/<span style="color:darkgreen;">IM1</span></td><td>IM1 : IM9</td><td>85</td></tr>
					<tr><td>India</td><td>in</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">in</span>/<span style="color:darkgreen;">744101</span></td><td>744101 : 743440</td><td>15225</td></tr>
					<tr><td>Iceland</td><td>is</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">is</span>/<span style="color:darkgreen;">101</span></td><td>101 : 902</td><td>147</td></tr>
					<tr><td>Italy</td><td>it</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">it</span>/<span style="color:darkgreen;">67100</span></td><td>67100 : 89900</td><td>19939</td></tr>
					<tr><td>Jersey</td><td>je</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">je</span>/<span style="color:darkgreen;">JE1</span></td><td>JE1 : JE3</td><td>3</td></tr>
					<tr><td>Japan</td><td>jp</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">jp</span>/<span style="color:darkgreen;">100-0001</span></td><td>100-0001 : 999-8531</td><td>94387</td></tr>
					<tr><td>Liechtenstein</td><td>li</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">li</span>/<span style="color:darkgreen;">9485</span></td><td>9485 : 9498</td><td>12</td></tr>
					<tr><td>Sri Lanka</td><td>lk</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">lk</span>/<span style="color:darkgreen;">50000</span></td><td>50000 : 43000</td><td>1831</td></tr>
					<tr><td>Lithuania</td><td>lt</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">lt</span>/<span style="color:darkgreen;">00001</span></td><td>00001 : 99069</td><td>20557</td></tr>
					<tr><td>Luxembourg</td><td>lu</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">lu</span>/<span style="color:darkgreen;">L-1009</span></td><td>L-1009 : L-9999</td><td>4333</td></tr>
					<tr><td>Monaco</td><td>mc</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mc</span>/<span style="color:darkgreen;">98000</span></td><td>98000 : 98000</td><td>28</td></tr>
					<tr><td>Moldavia</td><td>md</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">md</span>/<span style="color:darkgreen;">MD-2000</span></td><td>MD-2000 : MD-7731</td><td>1752</td></tr>
					<tr><td>Marshall Islands</td><td>mh</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mh</span>/<span style="color:darkgreen;">96960</span></td><td>96960 : 96970</td><td>1</td></tr>
					<tr><td>Macedonia</td><td>mk</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mk</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 7550</td><td>219</td></tr>
					<tr><td>Northern Mariana Islands</td><td>mp</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mp</span>/<span style="color:darkgreen;">96950</span></td><td>96950 : 96950</td><td>3</td></tr>
					<tr><td>Martinique</td><td>mq</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mq</span>/<span style="color:darkgreen;">97200</span></td><td>97200 : 97290</td><td>33</td></tr>
					<tr><td>Mexico</td><td>mx</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">mx</span>/<span style="color:darkgreen;">20000</span></td><td>20000 : 99828</td><td>75202</td></tr>
					<tr><td>Malaysia</td><td>my</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">my</span>/<span style="color:darkgreen;">79000</span></td><td>79000 : 24300</td><td>2817</td></tr>
					<tr><td>Holland</td><td>nl</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">nl</span>/<span style="color:darkgreen;">9400</span></td><td>9400 : 8889</td><td>5313</td></tr>
					<tr><td>Norway</td><td>no</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">no</span>/<span style="color:darkgreen;">1751</span></td><td>1751 : 9935</td><td>4573</td></tr>
					<tr><td>New Zealand</td><td>nz</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">nz</span>/<span style="color:darkgreen;">0110</span></td><td>0110 : 9893</td><td>1736</td></tr>
					<tr><td>Phillippines</td><td>ph</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ph</span>/<span style="color:darkgreen;">0400</span></td><td>0400 : 9811</td><td>2231</td></tr>
					<tr><td>Pakistan</td><td>pk</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">pk</span>/<span style="color:darkgreen;">10010</span></td><td>10010 : 97320</td><td>11846</td></tr>
					<tr><td>Poland</td><td>pl</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">pl</span>/<span style="color:darkgreen;">00-001</span></td><td>00-001 : 99-440</td><td>21979</td></tr>
					<tr><td>Saint Pierre and Miquelon</td><td>pm</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">pm</span>/<span style="color:darkgreen;">97500</span></td><td>97500 : 97500</td><td>1</td></tr>
					<tr><td>Puerto Rico</td><td>pr</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">pr</span>/<span style="color:darkgreen;">00601</span></td><td>00601 : 00727</td><td>186</td></tr>
					<tr><td>Portugal</td><td>pt</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">pt</span>/<span style="color:darkgreen;">3750-011</span></td><td>3750-011 : 9980-999</td><td>204005</td></tr>
					<tr><td>French Reunion</td><td>re</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">re</span>/<span style="color:darkgreen;">97421</span></td><td>97421 : 97490</td><td>36</td></tr>
					<tr><td>Russia</td><td>ru</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">ru</span>/<span style="color:darkgreen;">101000</span></td><td>101000 : 901993</td><td>43537</td></tr>
					<tr><td>Sweden</td><td>se</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">se</span>/<span style="color:darkgreen;">18600</span></td><td>18600 : 98420</td><td>16078</td></tr>
					<tr><td>Slovenia</td><td>si</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">si</span>/<span style="color:darkgreen;">1000</span></td><td>1000 : 9600</td><td>556</td></tr>
					<tr><td>Svalbard & Jan Mayen Islands</td><td>sj</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">sj</span>/<span style="color:darkgreen;">9170</span></td><td>9170 : 8099</td><td>7</td></tr>
					<tr><td>Slovak Republic</td><td>sk</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">sk</span>/<span style="color:darkgreen;">974 01</span></td><td>974 01 : 015 01</td><td>4151</td></tr>
					<tr><td>San Marino</td><td>sm</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">sm</span>/<span style="color:darkgreen;">47890</span></td><td>47890 : 47899</td><td>25</td></tr>
					<tr><td>Thailand</td><td>th</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">th</span>/<span style="color:darkgreen;">10100</span></td><td>10100 : 93190</td><td>901</td></tr>
					<tr><td>Turkey</td><td>tr</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">tr</span>/<span style="color:darkgreen;">01000</span></td><td>01000 : 09350</td><td>51378</td></tr>
					<tr><td>United States</td><td>us</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">us</span>/<span style="color:darkgreen;">34050</span></td><td>34050 : 83414</td><td>43623</td></tr>
					<tr><td>Vatican</td><td>va</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">va</span>/<span style="color:darkgreen;">00120</span></td><td>00120 : 00120</td><td>1</td></tr>
					<tr><td>Virgin Islands</td><td>vi</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">vi</span>/<span style="color:darkgreen;">00820</span></td><td>00820 : 00805</td><td>15</td></tr>
					<tr><td>Mayotte</td><td>yt</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">yt</span>/<span style="color:darkgreen;">97600</span></td><td>97600 : 97660</td><td>16</td></tr>
					<tr><td>South Africa</td><td>za</td><td><span style="color:darkblue;">zippopotam.us</span>/<span style="color:darkred;">za</span>/<span style="color:darkgreen;">0002</span></td><td>0002 : 9992</td><td>3919</td></tr>	
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
</body>
</html>
