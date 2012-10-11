	<!-- File: footer.jsp 
        		File-Information: Generates the footer content
        		Included-Files: None
        		Last Update: 10-9-12
        		Update-Information:
        		Version: alpha 
       		-->

       	<%@page contentType="text/html;charset=UTF-8"%>
	<footer>
	<ul>
		<li>Home
			<ul>
				<li>About Us</li>
				<li>Administration</li>
				<li>Directorates</li>
				<li>Careers</li>
				</ul>
			</li>
		<li> Education
			<ul>
				<li>Schools</li>
				<li>Admissions</li>
				<li>Courses</li>
				<li>Academics</li>
				</ul>
			</li>
		<li>Contact Us
			<ul>
				<li>Post. Agriculture Institute,</li>
				<li>Allahabad 211007, U.P, India.</li>
				<li>Ph. +91 532 2684281, 2684781, 2684250,</li>
				<li>Fax- +91 532 2684394</li>
				<li>e-mail: registrar@shiats.edu.in</li>
				</ul>
			</li>
		<li>Follow Us
			<ul>
				<li>Facebook</li>
				<li>Twitter</li>
				<li>Flickr</li>
				<li>Google+</li>
				<li>Youtube</li>
				</ul>
			</li>
		<li> Other
			<ul>
				<li>Help</li>
				<li>Privacy Policy</li>
				<li>Disclaimer</li>
				<li>Copyright</li>
				</ul>
			</li>
		</ul>
		<div class="footer-info">© SHIATS 2012 <span id="feedbacks">Send Feedback</span><span id="updateinfo">Last Updated at : </span></div>
	</footer>
	<div id="container-f" > <aside>write to us @ <h4>SHIATS</h4></aside>
  						<ul>
  							<form name="writetous" method="post" action="/java/ServerHandle">
 							<li class="lists">
 								<label for="username">Username</label>
 								<input type="text" name="username" placeholder="Please enter your Username" autofocus required/>
 								</li>
 							<li class="lists">
 								<label for="email">Email</label>
 								<input type="email" name="email" placeholder="Please enter your Email address" required/>
 								</li>
							<li class="lists">
								<label for="priority">Priority</label>
								<select name="priority">
                                                     		 			<option>Very Important</option>
                                                       					<option>Important</option>
                                                       					<option>General</option>
               								 </select>
               							</li>

 							<li class="lists">
 								<label for="messagetext" style="position:relative;top:-58px;">Message</label>
 								<textarea name="messagetext" rows="5"cols="32"></textarea>
 								</li>
                 						<li  class="lists">
                 							<input type="submit" value="Send Feedback" />
                 							</li>
                						</form>
            						</ul>
						</div>

</div>
</body>
</html>