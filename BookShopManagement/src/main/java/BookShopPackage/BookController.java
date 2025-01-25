package BookShopPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookController {
	
	//Connect DB
	private static boolean isSuccesses;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Inesert Data Function
	public static boolean insertdata(String name, String price, String catagory, String quentity, String description) {
		
		boolean isSuccesses = false;
		
		try {
			//DB CONNECTION CALL
			con = DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into book values(0,'"+name+"','"+price+"','"+catagory+"','"+quentity+"','"+description+"')";
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
	
	//Display data
	//Use GetByID
	public static List<BookModel> getById (String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <BookModel> book = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from book where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String quentity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new BookModel(id,name,price,catagory,quentity,description);
				book.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	
	//GetAll Data
	public static List<BookModel> getAllBook (){
		ArrayList <BookModel> books = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from book";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String quentity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new BookModel(id,name,price,catagory,quentity,description);
				books.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return books;

	}
	
	// Update data
	public static boolean updatedata(String id, String name, String price, String catagory, String quentity, String description ) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "update book set name='"+name+"',price='"+price+"',catagory='"+catagory+"',quentity='"+quentity+"',description='"+description+"'"
					+"where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccesses = true;
			}
			else {
				isSuccesses = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccesses;
	}

	 
}
