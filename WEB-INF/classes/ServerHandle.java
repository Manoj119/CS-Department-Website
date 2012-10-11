import javax.servlet.*;
import Helper.*;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;

public class ServerHandle extends HttpServlet {

				//private ServerFunctions serverFunctions = new ServerFunctions ( );

				protected void doGet (HttpServletRequest req, HttpServletResponse res)
					throws ServletException,IOException
						{ res.sendRedirect("/java"); }
					
				protected void doPost (HttpServletRequest req, HttpServletResponse res)
					throws ServletException,IOException
						{ 

							String username = req.getParameter("username");
							String password = req.getParameter("password");
							
							if ( ServerFunctions.verificator(username,password ) ) 
							{	
								
								HttpSession session = req.getSession(true); 
      								session.setAttribute("userLogin", new String("true")); 
								res.sendRedirect("/java/profile.jsp");
								
							} 
							else
								res.sendRedirect("/java/includes/login.jsp");
								
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