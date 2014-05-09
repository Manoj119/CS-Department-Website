<!-- 
File: login.jsp 
File-Information: Generates the Homepage content
Included-Files: login-header.jsp, footer.jsp
Last Update: 15-9-12
Update-Information: added error-box
Version: alpha 
-->

<!-- Using JSP @page directives info, contentType, errorPage -->
<%@page info = "Developed By SECT. " pageEncoding="UTF-8" language="java"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page errorPage="../includes/error.jsp" %>

<!-- Header Contents ( using external page include using Java ( file: includes/header.jsp ) ) -->
<%@ include file="login-header.jsp" %>

<!-- Body Content -->	
<section id="center_contents">
	<section id="top-wrapper">
	<div id="title-wrapper"> SHIATS Login </div>
	<%
		String error = request.getParameter("error");
		if( error.equals("true") ) {
			out.print("<span id=\"error\">");
			out.print("Either the Username or the Password was incorrect.");
			out.print("</span>"); 
		}
	%>
	<div id="content-wrapper">
	<span id="describe"></span>
	<ul><form method="post" action="/java/ServerActions">
	<li><label for="username">Username<input type="text" name="username" placeholder="Username or PID" autofocus required/></label></li><input type="hidden" name="action" value="login" />
	<li><label for="password">Password<input type="password" name="password" placeholder="Password" required/></label></li>
	<li><label for="checkbox"><input type="checkbox" name="checkbox" value="Remember Me" />Remember Me</label></li>
	<li><input type="submit" value="Enter" /></li>
	<li><a href="passwordhelper.jsp">Can't Access your Account ?</a></li></form></ul>
	</div>
	</section>
</section>

<!-- Footer Contents ( using external page include using Java ( file: includes/header.jsp ) ) -->
<%@ include file="footer.jsp" %>
