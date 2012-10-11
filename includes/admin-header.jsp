        <!-- File: profile-header.jsp 
        File-Information: Generates the profile-page Header content
        Included-Files: profile.css, one.ico, jquery.js, profile-scripts.js
        Last Update: 10-9-12
        Update-Information:
        Version: alpha 
       -->

      <!DOCTYPE html>
      <html itemscope itemtype="http://schema.org/Organization">
            <head>
                    <title> <% out.print("Welcome,Admin");%> </title>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <meta itemprop="name" content="SHIATS University">
                    <meta itemprop="description" content="Sam Higginbottom Institute of Agriculture, Technology and Sciences, Allahabad">
                    <link rel="stylesheet" type="text/css" href="/java/stylesheets/admin.css" />
                    <link rel="icon" type="image/icon" href="/java/pics/one.ico" />
                    <script type="text/javascript" src="/java/scripts/jquery.js"></script>
                    <script type="text/javascript" src="/java/scripts/admin-scripts.js"> </script>
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
             	 	<li id="user-menu"><img src="/java/pics/no_pic.gif"></li>
             		</ul> 

                       </nav>      
      <div id="user-options"> 
            	<div>
            	        <div id="account-info">
            		        	<p>
            		        	<img src="/java/pics/no_pic.gif">
            		        	<label>Administrator</label>
            		        	</p>
            		        </div>
            		        <ul>
                                 <form method="post" action="/java/ServerActions">
                                 <input type="hidden" name="action" value="logout" />
                                 <li><input type="submit" value="Log off" /></li>
                                  </form> 
                                 <li><input type="submit" id="report" value="Report" /> </li>
                                 <li><input type="submit" class="settings" value="Settings" /></li> 
                                </ul>
                          </div>
                          </div>
      </header>

        <!-- <div id="share">
        		<ul><li>
                        <a href="http://www.facebook.com/dcse.shiats" title="Contact Us" target="_new"><img src="facebook.png"></a></li>
                        <li><a href="http://www.facebook.com/dcse.shiats" title="Like Us" target="_new"><img src="youtube.png"></a></li>
                       <li><a href="http://www.facebook.com/dcse.shiats" title="Contact Us" target="_new"><img src="flickr.png"></a></li>
                        </ul>
            </div> -->
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