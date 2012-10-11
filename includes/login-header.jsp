<!-- 
File: login-header.jsp 
File-Information: Generates the login-page Header content
Included-Files: home-styler.css, one.ico, jquery.js 
Last Update: 10-9-12
Update-Information:
Version: alpha 
-->

<!DOCTYPE html>
<html itemscope itemtype="http://schema.org/Organization">
<head>
<title> Login | SHIATS-DU </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta itemprop="name" content="SHIATS University">
<meta itemprop="describeription" content="Sam Higginbottom Institute of Agriculture, Technology and Sciences, Allahabad">
<link rel="stylesheet" type="text/css" href="../stylesheets/default.css" />
<link rel="icon" type="image/icon" href="../pics/one.ico" />
<script type="text/javascript" src="../scripts/jquery.js"></script>
<script type="text/javascript">
$(window).resize(function(){
var margin2 = $(window).width()/2-$('#container').width()/2+248;
$('#ajax-content').css('margin-left',margin2);
});
$(document).ready(function(){
$('#close-button').click(function( ) { 
$('#ajax-shadow').css('display','none');
$('#ajax-content').css('display','none');});

$('#ajax-shadow').click(function( ) { 
	$('#ajax-shadow').css('display','none');
	$('#ajax-content').css('display','none'); });
	});
$('#feedbacks').click( function ( event ) {
	$('#container-f').slideToggle( function ( ) {
        	$('html, body').animate({scrollTop: $("#container-f").offset().top}, 1000);});
       	});
</script>
<style type="text/css">
#error {
    display:inline-block;
    font-family:roboto;
    font-size:14px;
    color:rgba(255,0,0,0.8);
    background:rgba(255,0,0,0.1);
    height:16px;
    padding:12px 8px;
    width:582px;
    border:1px solid rgba(255,0,0,0.3);
    margin-bottom: 2px;
}

.error{
    border:1px solid rgba(255,0,0,0.4);
}

header {
background: none repeat scroll 0 0 whitesmoke;
}
header h3, h4, h5 {
color: rgb(39, 39, 39);
}
#center_contents {
background: none repeat scroll 0 0 whitesmoke;
height: 270px;
}
#top-wrapper {
box-shadow: 0 0 1px rgb(173, 173, 173);
padding: 11px;
position: relative;
top: -192px;
z-index: 11;
margin:auto;
width:600px;
}
#content-wrapper {
background: none repeat scroll 0 0 rgb(249, 249, 249);
box-shadow: 0 0 1px rgb(193, 193, 193) inset;
margin-top: 4px;
padding: 12px;
}
#title-wrapper {
color: rgb(241, 14, 29);
font-family: roboto;
font-size: 18px;
font-weight: bold;
padding: 6px 2px;
}

#content-wrapper ul {
list-style: none outside none;
padding:12px 48px;
}
#content-wrapper .lists {
}
#content-wrapper li a {
color: rgba(241, 14, 29, 0.8);
font-family: roboto;
font-size: 12.5px;
text-decoration: none;
}
#content-wrapper li:last-child {
margin: 4px 82px;
}
#content-wrapper label {
color:#434343;
font-family: roboto;
font-size: 14px;
margin: 12px 5px;
padding: 4px;
}
#content-wrapper input {
border:1px solid #c3c3c3;
color: rgb(67, 67, 67);
font-family: helvetica;
font-size: 13px;
margin: 8px 2px 8px 12px;
padding: 4px 4px;
}
#content-wrapper input[type="text"], [type="password"] {
height: 24px;
width: 296px;
}
#content-wrapper input[type="checkbox"] {
background: none repeat scroll 0 0 rgb(249, 249, 249);
margin-left:74px;
margin-right:8px;
}
#content-wrapper input[type="submit"] {
background: -moz-linear-gradient(center top , rgb(73, 155, 234) 0%, rgb(32, 124, 229) 100%) repeat scroll 0 0 transparent;
border: 1px solid;
border-color:rgba(28, 35, 255,0.2) rgba(28, 35, 255,0.5) rgba(28, 35, 255, 0.5) rgba(28, 35, 255,0.2);
box-shadow: 0px 1px 2px rgba(28, 35, 255,0.2), 0px 0px 1px #c1c1c1;
color: rgb(244, 244, 244);
font-weight: bold;
height: 36px;
margin-left:84px;
position: relative;
width: 105px;
}
#content-wrapper input[type="submit"]:active {
-moz-transition-duration: 0.3s;
box-shadow: 0 0 2px rgb(195, 195, 195);
cursor: pointer;
}
</style>
</head>

<body>
<div id="ajax-shadow"></div>
<div id="ajax-content"></div>

<div id="container">
<noscript>
<div id="noscript">
Oops ! javascript disabled, <a href="https://support.google.com/adsense/bin/answer.py?hl=en&answer=12654" style="text-decoration:none;color:#00288E">
please enable javascript</a>  & refresh the page.
</div>
</noscript>
<!-- Header -->
<header>
<!-- Navigation Section -->
<nav id="navigator">
<ul>
<li  class="outer"><a  href="http://localhost:8080/java/">Home</a><li class="divider">|</li>
<li  class="outer"><a  href="">About Us</a>
<ul>
<li><a href="">Administration</a></li>
<li><a href="">Directorates</a></li>
</ul>
</li><li class="divider">|</li>
<li class="outer"><a href=""> Education</a>
<ul>  
<li><a href="">Academics</a></li>
<li><a href="">Courses</a></li>
<li><a href="">Admissions</a></li>
<li><a href="">Life at SHIATS</a></li>
</ul>
</li><li class="divider">|</li>
<li class="outer"><a href=""> People</a>
<ul>  
<li><a href="">Teachers</a></li>
<li><a href="">Students</a></li>
<li><a href="">Aluminy</a></li>
</ul>
</li><li class="divider">|</li>
<li class="outer"><a href=""> Research</a>
<ul>  
<li><a href="">Projects</a> </li>
<li><a href="">Publications</a></li> 
</ul>
</li><li class="divider">|</li>
<li class="outer"><a href="">RTI</a> </li><li class="divider">|</li>
<li class="outer"><a href="">Help</a> </li>
</ul>
</nav>      
<input type="text" placeholder="Search .." />

<div id="university_name">
<h3>Sam Higginbottom Institute </h3>
<h5>of</h5>
<h4> Agriculture, Technology & Sciences </h4>
<h4 style="font-size:15px;margin-top:4px;">(Deemed-to-be-University declared under Section 3 of UGC Act 1956)</h4>
<!--<h5 style="font-size:15px;font-family:tahoma;margin-top:6px;color:#202020;">( Formerly Allahabad Agricultural Institute )</h5>-->
</div>                          
</header>