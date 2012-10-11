<!-- File: default.jsp 
File-Information: Generates the Homepage content
Included-Files: header.jsp, footer.jsp
Last Update: 15-9-12
Update-Information:
Version: alpha 
-->

<!-- Using JSP @page directives info, contentType, errorPage --> 
<%@page info = "Developed By SECT. " pageEncoding="UTF-8" language="java"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page errorPage="includes/error.jsp" %>

<!-- Using JSP Bean 
Bean ID = connector
class as Bean = ServerFunctions.java
-->
<jsp:useBean id="connector" class="Helper.ServerFunctions"/> 

<!-- Header Contents -->
<!-- using external page include using Java ( file: includes/header.jsp ) -->
<%@ include file="includes/header.jsp" %>

<!-- Body Content -->	
	<section id="center_contents">
		<div id="tabs">
		<ul>
		<li class="activetab"><a href="#updates">Current News</a></li>
		<li class="unactivetab"><a href="#events">Events</a></li>
		<li class="unactivetab"><a href="#links">Links</a></li>
		<li class="unactivetab"><a href="#yeshudarbar">Yeshu Darbar</a></li>
		</ul>
		</div>
		<section id="tab-contents">
			
		<section class="panels activepanel" id="updates">

		<!--Using JSP Expression tag -- using JavaBean(class) Helper/ServerFunctions -- calling function getUpdates to get latest updates via Java -->
		<%
		out.print("<ul class=\"updatedata\">");
		for ( int i = 0; i<10; i++ ) {
			String[ ] data = connector.getUpdates( i );
			out.print( "<li><a href="+data[1]+">"+data[0]+"</a></li>");
		}
		out.print("</ul>");
		%>
		</section>
		<section class="panels unactivepanel" id="events"></section>
		<section class="panels unactivepanel" id="links"></section>
		<section class="panels unactivepanel" id="yeshudarbar"></section>
		</section>
		<section id="share">
        			<ul>
        				<li><a href="http://www.facebook.com/dcse.shiats" title="Contact Us" target="_new"><img src="pics/facebook.png"></a></li>
               			<li><a href="http://www.facebook.com/dcse.shiats" title="Like Us" target="_new"><img src="pics/google+.png"></a></li>
                       			<li><a href="http://www.facebook.com/dcse.shiats" title="Contact Us" target="_new"><img src="pics/twitter.png"></a></li>
          	            			  </ul>
           		 </section>
	</section>	
	<section id="bottom_contents">
	<div id="vc_message">
	<div id="headline">A Message From the Hon'able Vice-Chancellor </div>
	<article id="message_box"><img src="pic202.jpg" alt="Vice-Chancellor"/><p>
	With deep sense of gratitude to the Lord God Almighty and our Saviour Lord Jesus Christ, I am pleased to see that the Prospectus 2012 for on campus students of Sam Higginbottom Institute of Agriculture, Technology and Sciences (SHIATS) is ready for release. The Lord has blessed this Institution for 100 years and we welcome you to a truly unique institution of higher education. You have chosen to become a member of SHIATS community and we are glad to have you here. We are India's one of the oldest educational institution, founded in 1910. We have a long and rich heritage of serving people and we look forward to serve you too. Being the oldest educational institution, however, doesn't mean that we are old fashioned about what we do. <a href="vc.htm"> Continue Reading ... </a></p>
	</article>
	</div>
	<div id="photo_gallery">
	<div id="headline">Picture Gallery</div>
	</div>
	</section>

	<div id="bottom_notification">
	Compliance of the Deemed to be University in response to MHRD's Order no. F.4-30/2009-U.I(A) dated 17th july, 2009 and UGC Letter no. F.6-1(7)2006(CPP-1) dated 7th august, 2009 for Disclosure of Information in Public Interest.
	</div>

<!-- Footer Contents -->
<!-- using external page include using Java ( file: includes/header.jsp ) -->
<%@ include file="includes/footer.jsp" %>
