      <!-- File: header.jsp 
        File-Information: Generates the home-page Header content
        Included-Files: home-styler.css, one.ico, jquery.js, main-scripts.js
        Last Update: 10-9-12
        Update-Information:
        Version: alpha 
       -->

      <!DOCTYPE html>
      <html itemscope itemtype="http://schema.org/Organization">
            <head>
                    <title> Sam Higginbottom Institute of Agriculture, Technology & Sciences - Deemed University </title>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <meta itemprop="name" content="SHIATS University">
                    <meta itemprop="description" content="Sam Higginbottom Institute of Agriculture, Technology and Sciences, Allahabad">
                    <link rel="stylesheet" type="text/css" href="stylesheets/default.css" />
                    <link rel="icon" type="image/x-icon" href="pics/favicon.ico" />
                    <script type="text/javascript" src="scripts/jquery.js"></script>
                    <script type="text/javascript" src="scripts/main-scripts.js"></script>
                    <script type="text/javascript">

                    $(document).ready( function( ) {
                     $('#close-button').click(function( ) { 
                     $('#ajax-shadow').css('display','none');
                     $('#ajax-container').css('display','none');
                     });

                    $('#ajax-shadow').click(function( ) { 
                    $('#ajax-shadow').css('display','none');
                    $('#ajax-container').css('display','none');
                    });
                    });    

                  </script>
      </head>

    <body>
      <div id="ajax-shadow"></div>
      <div id="ajax-container"></div>
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
                            <input type="submit" id="login" value="Login"/>
                       </nav>    
                         <div id="university_name">
        <h3>Sam Higginbottom Institute of Agriculture, Technology & Sciences </h3>
        <h4 style="font-size:15px;margin-top:4px;">(Deemed-to-be-University declared under Section 3 of UGC Act 1956)</h4>
        <h5 style="font-size:15px;font-family:tahoma;margin-top:6px;color:#202020;">( Formerly Allahabad Agricultural Institute )</h5>
        </div>   
      <input type="text" placeholder="Search .." />
      <!-- <div id="h_left"><img src="header.png"/></div> -->       
        
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>  
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>                 
  			</header>