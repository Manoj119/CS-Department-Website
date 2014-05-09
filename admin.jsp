<!-- File: profile.jsp 
File-Information: Generates the Profile page content
Included-Files: profile-header.jsp, footer.jsp
Last Update: 15-9-12
Update-Information:
Version: alpha 
-->

<%@page info = "profile.jsp" pageEncoding="UTF-8" language="java"%>
<%@page contentType="text/html;charset=UTF-8"%>
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
<%@ include file="includes/admin-header.jsp" %>

<!-- Body Content -->
	<section id="top_contents">
		<div id="welcome-info">
		</div>
	</section>

	<section id="center_contents">
		<ul class="search-ops container-b">
		<fieldset><legend>Search in Database</legend>
		<li><input type="text" placeholder="Type and Search .." /><input class="ui-buttons" type="submit" value="Search" /></li>
		</fieldset></ul>
		<ul class="database-ops container-b">
		<fieldset><legend>Database Operations</legend>
		<li class="ui-buttons"><a role="button" href="#showtables">Show Tables</a></li>
		<li class="ui-buttons"><a role="button" href="#desctables">Describe Tables</a></li>
		<li class="ui-buttons"><a role="button" href="#addtable">Create New Table</a></li>
		<li class="ui-buttons"><a role="button" href="#edittable">Edit Table</a></li>
		</fieldset></ul>
		<ul class="table-ops container-b">
		<fieldset><legend>User Operations</legend>
		<li class="ui-buttons"><a role="button" href="#adduser">Add User</a></li>
		<li class="ui-buttons"><a role="button" href="#showallusers">Show All Users</a></li>
		<li class="ui-buttons"><a role="button" href="#showallusers">Show User Data</a></li>
		<li class="ui-buttons"><a role="button" href="#eduserlogin">Edit User Login</a></li>
		<li class="ui-buttons"><a role="button" href="#eduserinfo">Edit User Data</a></li>
		</fieldset></ul>
		<ul class="admin-ops container-b">
		<fieldset><legend>Admin Operations</legend>
		<li class="ui-buttons"><a role="button" href="#adduser">Add Admin</a></li>
		<li class="ui-buttons"><a role="button" href="#showallusers">Show All Admins</a></li>
		<li class="ui-buttons"><a role="button" href="#showallusers">Edit Admin Login</a></li>
		</fieldset></ul>
		<ul class="update-ops container-b">
		<fieldset><legend>Update Operations</legend>
		<li class="ui-buttons"><a role="button" href="#addupdate">Add New Update</a></li>
		<li class="ui-buttons"><a role="button" href="#showallupdate">Show All Updates</a></li>
		<li class="ui-buttons"><a role="button" href="#eduserlogin">Edit Update</a></li>
		</fieldset></ul>
		<ul class="image-ops container-b">
		<fieldset><legend>Sildeshow Operations</legend>
		<li class="ui-buttons"><a role="button" href="#adduser">Add Images</a></li>
		<li class="ui-buttons"><a role="button" href="#showallusers">Show All Images</a></li>
		<li class="ui-buttons"><a role="button" href="#addupdate">Remove Images</a></li>
		<li class="ui-buttons"><a role="button" href="#showallupdate">Add Banner Image</a></li>
		</fieldset></ul>
		<ul class="sql-box container-b">
		<fieldset><legend>Run your own SQL Query</legend>
		<form action="/java/ServerAdmin" method="post">
			<li><textarea name="query-string"></textarea></li>
			<li><input class="ui-buttons" type="submit" value="Run" />
		            <input class="ui-buttons" type="reset" value="Reset" /></li>
		           </form>
		</fieldset></ul>
		
	</section>
	
	<section id="bottom_contents">
	<div id="social"></div>
	</section>

<!-- Footer Contents -->
<%@ include file="includes/footer.jsp" %>
