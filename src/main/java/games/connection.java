package games;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {

	private static String url="jdbc:mysql://localhost:3306/gamesystem";
	private static String userName="root";
	private static String password="1234";
	public static Connection conn;
	
	public static Connection getConnection() {
		
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		conn=DriverManager.getConnection(url,userName,password);
		
	}
	catch(Exception e){
		
		System.out.println("Database connection not successful");
		
	
	
	}
		
		return conn;
	}

}
