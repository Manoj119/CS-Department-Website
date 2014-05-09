/*  
File: ServerFunctions.java
File-Information: Acts as main Controller Servlet & intercepts requests and forwards them to Model Servlet.
Last Update: 15-9-12 
Update-Information:
Version: alpha  
*/

import javax.servlet.*;
import Helper.*;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;

public class ServerActions extends HttpServlet {

				//private ServerFunctions serverFunctions = new ServerFunctions ( );

				protected void doGet (HttpServletRequest req, HttpServletResponse res)
					throws ServletException,IOException
						{ res.sendRedirect("/java"); }
					
				protected void doPost (HttpServletRequest req, HttpServletResponse res)
					throws ServletException,IOException
						{ 

						String action = req.getParameter("action");

						switch( action ) {
						case "login":   
							String username = req.getParameter("username");
							String password = req.getParameter("password");
							Profiler.getName("username");
      							if(Profiler.getFirstLogin( )==true)
      								Profile.updateUserID( );
      							SiteSecure.updateLoginInfo("time","ip","browser","os");
      							SiteSecure.logLoginInfo("time","ip","browser","os");
							if ( ServerFunctions.verificator(username,password ) ) 
							{	
								
								HttpSession session = req.getSession(true); 
      								session.setAttribute("username", new String(username)); 
      								session.setAttribute("login", new String("true")); 
      								String encodeUrl ="/java/profiles/"+(String)session.getAttribute("username");
								res.sendRedirect(encodeUrl);
							} 
							else
								res.sendRedirect("/java/includes/login.jsp?error=true");
							break;
						case "logout":
							HttpSession session = req.getSession( ); 
							SiteSecure.updateLogoffInfo( );
							session.removeAttribute("login"); 
							session.removeAttribute("username"); 
							session.invalidate( );
       						 	res.sendRedirect("/java/home.jsp"); 
							break;
						case "search":
							break;
						default: 
							res.sendRedirect("/java/default.jsp");
						}

					}

				/* Test Block 
					public void test ( ) {
						String username = "lucky";
						String password = "password";
						if ( ServerFunctions.verificator(username,password ) ) 
							System.out.print ("okay .. here ");
					}

					public static void main(String[] args) {
					ServerHandle serverHandle = new ServerHandle ( );
					serverHandle.test ( );
				 	}
				*/
			
}