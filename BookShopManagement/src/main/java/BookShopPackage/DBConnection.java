package BookShopPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/bookshop";
	private static String user = "root";
	private static String pass = "admin";
	private static Connection con;
	
	
	// To find out if the database connection is working properly or not
	public static Connection getConnection () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e) {
			System.out.println("Database Not Connect !");
		}
		return con;
		
	}
}
