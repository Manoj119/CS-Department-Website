/*  
File: ContentManager.java
File-Information: Class use to do admin operations
Last Update: 17-9-12 
Update-Information:
Version: alpha  
*/

package Helper;
import java.sql.*;

public class ContentManager {
	public static Connection connect;
	public static ResultSet resultSet;
	private static String username = null;
	private static String adminName = null;
	private static String tableName = null;
	
	static {
		String Driver = "com.mysql.jdbc.Driver";
		final String DATABASE_URL = "jdbc:mysql://localhost/java_dev";
		String DB_USERNAME = "lucky";
		String DB_PASSWORD = "lucky";
		try  {	
			System.out.println ("Loading Driver ..");
			Class.forName ( Driver );
			System.out.println ("Driver loaded, Getting connection ..");
			connect = DriverManager.getConnection(DATABASE_URL,DB_USERNAME,DB_PASSWORD);
			System.out.println ("Connected.");
		}
		catch( Exception e ) {
			System.out.println ("Database not connected !! ");
		}
	}

	/* SHOW TABLES */
	public static void showTables( ) {
		boolean output = false;
		try {
			PreparedStatement prepare = connect.prepareStatement("show tables");
			resultSet = prepare.executeQuery( );
			while(resultSet.next( ))   {
				System.out.println( resultSet.getString (1 ));
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ("Database query Failed");
		}

		//return output;
	}

	/* DESCRIBE TABLES */
	public static void describeTables( String tableName ) {
		boolean output = false;
		try {
			PreparedStatement prepare = connect.prepareStatement("desc users");
			//prepare.setString( 1, tableName );
			resultSet = prepare.executeQuery( );
			
			while( resultSet.next( )) {
				for ( int i =1; i< resultSet.getMetaData( ).getColumnCount( ); i++)
				System.out.println( resultSet.getColumnName)
				System.out.print( resultSet.getString(i));
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ("Database Query Error !");
		}

	}

	/* EDIT TABLES */
	public static boolean editTables( String tableName, String columnName, String type, int length, String primaryKey, String foreignKey ) {

		primaryKey = "PRIMARY KEY";
		foreignKey = "FOREIGN KEY";
		boolean output = false;

		try {
			PreparedStatement prepare = connect.prepareStatement("ALTER TABLE ? CHANGE COLUMN ? ? ?(?)");
			prepare.setString( 1, tableName );
			prepare.setString( 2, columnName );
			prepare.setString( 3, type );
			prepare.setInt( 4, length );
			prepare.setString( 1, tableName );
			resultSet = prepare.executeQuery( );
			if(resultSet.next( ))   {
				output = true;
			}
		}

		catch ( SQLException | NullPointerException e ) {
			System.out.println ("Database Query Error !");
		}

		return output;
	}

 		// Test block
		public static void main(String[] args) {
		ContentManager.describeTables("users");
		 }
		 //

}