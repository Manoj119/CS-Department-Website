/*  
File: ServerFunctions.java
File-Information: Acts as main Backend Model Servlet & contains all the functions for interaction with database.
Last Update: 15-9-12 
Update-Information:
Version: alpha  
*/

package Helper;
import java.sql.*;

public class ServerFunctions {
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

	public static String[ ] getSearch( int updateNumber ) {

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