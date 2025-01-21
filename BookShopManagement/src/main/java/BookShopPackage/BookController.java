package BookShopPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BookController {
	
	//Connect DB
	private static boolean isSuccesses;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Inesert Data Function
	public static boolean insertdata(String name, String price, String category, String quentity, String description) {
		
		boolean isSuccesses = false;
		
		try {
			//DB CONNECTION CALL
			con = DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into book values(0,'"+name+"','"+price+"','"+category+"','"+quentity+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs >0) {
				isSuccesses = true;
			}
			else {
				isSuccesses = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccesses;
	}

	 
}
