<!-- File: profile.jsp 
File-Information: Generates the Profile page content
Included-Files: profile-header.jsp, footer.jsp
Last Update: 15-9-12
Update-Information:
Version: alpha 
-->

<%@page info = "profile.jsp" pageEncoding="UTF-8" language="java"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page errorPage="includes/error.jsp" %>
<%
	/*String login = (String) session.getAttribute("login"); 
	String username = (String) session.getAttribute("username"); 
	request.getSession( );
	if(session == null ){
		response.sendRedirect("/java/includes/login.jsp");
	}
	else {									
		if (!login.equals("true")) 
		response.sendRedirect("/java/includes/login.jsp"); 
	}*/

%>

<!-- Header Content -->
<%@ include file="includes/profile-header.jsp" %>
<%
			out.print("<span id=\"notice\">");
			out.print("Welcome to SHIATS Profiles. You are new user. Kindly <a class=\"settings\" href=\"\" aria-role=\"button\">change your password</a> now.");
			out.print("<span id=\"small-close-button\">x</span></span>"); 
%>
<!-- Body Content -->
	<section id="top_contents">
		<div id="profile_image"><img src="pics/no_pic.gif">
		</div>
	</section>

	<section id="center_contents">
		<div id="tabs">
		<ul>
		<li class="activetab"><a href="#updates">Latest</a></li>
		<li class="unactivetab"><a href="#events">Events</a></li>
		<li class="unactivetab"><a href="#links">Links</a></li>
		</ul>
		</div>
		<section id="tab-contents">
		<section class="panels activepanel" id="updates"><span id="update"></span></section>
		<section class="panels unactivepanel" id="events"></section>
		<section class="panels unactivepanel" id="links"></section>
		</section>
		<section id="banner-notice"><img src="/java/pics/banner-350-250.png" \></section>
	</section>
	
	<section id="bottom_contents">
	<div id="social"></div>
	</section>

<!-- Footer Contents -->
<%@ include file="includes/footer.jsp" %>
