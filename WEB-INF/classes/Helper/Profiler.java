/*  
File: Profiler.java
File-Information: Java Bean helpes in generating the profile page
Last Update: 15-9-12 
Update-Information:
Version: alpha  
*/

package Helper;
import java.sql.*;

public class Profiler {
	public static Connection connect;
	public static ResultSet resultSet;
	

	static {
						String Driver = "com.mysql.jdbc.Driver";
						final String DATABASE_URL = "jdbc:mysql://localhost/java_dev";
						String DB_USERNAME = "lucky";
						String DB_PASSWORD = "lucky";
							try  {	
								System.out.println (" Loading Driver .. " );
								Class.forName ( Driver );
								System.out.println (" Driver loaded, Getting connection .. " );
								connect = DriverManager.getConnection(DATABASE_URL,DB_USERNAME,DB_PASSWORD);
								System.out.println (" Connected. " );
							 }
							catch( Exception e ) {
									System.out.println (" Database not connected !! " );
							}
				}
	// verifies the user
	public static Boolean verifyUser( String username, String password  ) {

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from users where username=?&&password=?" );
			prepare.setString( 1, username );
			prepare.setString( 2, password );

			resultSet = prepare.executeQuery( );
			if(resultSet.next( ))
				return true;
			else 
				return false;
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Error ! Could'nt Log In");
		}
		return false;
	}

	// Assign a new user ID
	public static void createUserID( String username ) {

		try {
			PreparedStatement prepare = connect.prepareStatement("Update user SET userid=? where username=?" );
			prepare.setInt( 1, username );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
				System.out.println ( "UserID Update Success");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( "UserID Update Failed");
		}
	}

	// get basic user name
	public static String[ ] getName( String username ) {

		String[ ]  name = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select firstname,lastname from students where userid=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			name[0] = resultSet.getString("firstname");
			name[1] = resultSet.getString("lastname");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// get basic user information
	public static String[ ] getBasicInformation( String username ) {

		// Currently database supports 32 attributes
		String[ ]  data = new String[32];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from students where userid=?" );
			prepare.setInt( 1, userid );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// get user-specific updates
	public static String[ ] getUpdates( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			data[3] = 
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// get user links
	public static String[ ] getLinks( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// Get User Fees Information
	public static String[ ] getFees( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// Get User Results Information
	public static String[ ] getResults( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// Get User Events Information
	public static String[ ] getEvents( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

	// Get User Pictures

	public static String[ ] getPicture( int updateNumber ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from updates where number=?" );
			prepare.setInt( 1, updateNumber );
			resultSet = prepare.executeQuery( );

			if(resultSet.next( ))   {
			data[0] = resultSet.getString("headline");
			data[1] = resultSet.getString("link");
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( " Could'nt get Data");
		}

		return data;
	}

 		/* Test block
		public static void main(String[] args) {
		System.out.println(ServerFunctions.verificator("lucky","password"));
		//System.out.println(ServerFunctions.getUpdates( 1 ));
		 }
		 */

}