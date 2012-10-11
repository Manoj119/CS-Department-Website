/*  
File: HelperFunctions.java
File-Information: Class use to do admin operations
Last Update: 17-9-12 
Update-Information:
Version: alpha  
*/

package Helper;
import java.sql.*;

public class HelperFunctions implements ServerManager {
	public Connection connect;
	public ResultSet resultSet;
	private String username = null;
	private String adminName = null;
	private String tableName = null;
	
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
			System.out.println ("System Error ! ");
		}
		return false;
	}

	/* VERIFY USER LOGIN */
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
			System.out.println ("System Error ! ");
		}
		return false;
	}

	/* GENERATE UNIQUE USER ID */
	public String generateUserID( String username ) {

	}