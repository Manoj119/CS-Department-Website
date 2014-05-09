/*  
File: SiteSecure.java
File-Information: Manages website security
Last Update: 16-9-12 
Update-Information: Created
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
	public static Boolean verificator( String username, String password  ) {

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

	// get basic user information
	public static String[ ] getName( String username ) {

		String[ ]  data = new String[2];

		try {
			PreparedStatement prepare = connect.prepareStatement("Select name from updates where username=?" );
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

	// get basic user information
	public static String[ ] getBasicInformation( int updateNumber ) {

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