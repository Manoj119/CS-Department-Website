/*  
File: ServerAdmin.java
File-Information: Class use to do admin operations
Last Update: 17-9-12 
Update-Information:
Version: alpha  
*/

package Helper;
import java.sql.*;

public class ServerAdmin implements ServerManager {
	public Connection connect;
	public ResultSet resultSet;
	
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

	/* VERIFY ADMIN LOGIN */
	public static Boolean verifyAdmin( String username, String password  ) {

		try {
			PreparedStatement prepare = connect.prepareStatement("Select * from admins where username=?&&password=?" );
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

	/* CREATE UNIQUE USER ID */
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

	/* ADD USERS TO DATABASE */
	public static boolean addUsers( String[ ] userData ) {

		private boolean output = false;

		try {
			PreparedStatement prepare = connect.prepareStatement("Insert into users values("?","?","?","?","?",?,?,?,?,"?","?")");
			for( int i =1; i< userData.length( ); i++ )
				if( i == 1)
					prepare.setString( 1, createUserID( ) );
				prepare.setString( i, userData[i-1] );
			addUserInformation( )
			resultSet = prepare.executeQuery( );
			if(resultSet.next( ))   {
				output = true;

			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ("User not added !");
		}

		return output;
	}

	/* ADD USER INFORMATION TO DATABASE */
	public static boolean addUserInformation( String[ ] userData ) {

		private boolean output = false;

		try {
			PreparedStatement prepare = connect.prepareStatement("Insert into students values("?","?","?","?","?",?,?,?,?,"?","?")");
			for( int i =1; i< userData.length( ); i++ )
				prepare.setString( i, userData[i-1] );

			resultSet = prepare.executeQuery( );
			if(resultSet.next( ))   {
				output = true;
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( "User Information not added");
		}

		return output;
	}

	/* ADD ADMINISTRATORS TO DATABASE */
	public static String[ ] addUpdates( String[ ] updateData ) {

		try {
			PreparedStatement prepare = connect.prepareStatement("Insert into updates values("?","?","?","?")");
			for( int i =1; i< updateData.length( ); i++ )
				prepare.setString( i, updateData[i-1] );

			resultSet = prepare.executeQuery( );
			if(resultSet.next( ))   {
				output = true;
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ( "ADMINS could'not be added.");
		}

		return output;
	}

 		// Test block
		public static void main(String[] args) {
		System.out.println(ServerFunctions.verificator("lucky","password"));
		//System.out.println(ServerFunctions.getUpdates( 1 ));
		 }
		 //

}