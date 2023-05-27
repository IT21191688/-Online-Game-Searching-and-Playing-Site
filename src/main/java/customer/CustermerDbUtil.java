package customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustermerDbUtil {
	
	private static boolean custo;
	private static Connection conn=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//catch data database
	public static boolean validate(String userName,String password){
		
		
		//create database connection

		/*validate
		String url="jdbc:mysql://localhost:3306/hotel";
		String user="root";
		String Upassword="1234";
		*/
		
		try {
			
			//.forName("com.mysql.jdbc.Driver"); alrady created
			
			//create connection
			//Connection conn= DriverManager.getConnection(url,user,Upassword);
			//Should import statement
			//Statement stmt=conn.createStatement();
			//ResultSet rs= stmt.executeQuery(sql);
			
			
			
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="select * from logintable where username='"+userName+"' and password='"+password+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				custo=true;
			}
			else {
				custo=false;
			}
			
		
		}
		catch(Exception e) {
			//print Error
			e.printStackTrace();
			
		}
		
		
		return custo;
		
		
	}
	
	public static List<Customer> getCustomer(String userName){
		
		ArrayList<Customer> customer=new ArrayList<>();
		
		try {
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="select * from logintable where UserName='"+userName+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String username=rs.getString(5);
				String password=rs.getString(6);
				String role=rs.getString(7);
				
				Customer cus=new Customer(id,name,email,phone,username,password,role);
				customer.add(cus);
				
				
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return customer;
	}
	
	//insert data
	public static boolean insertcustomer(String name,String email,String tp,String userName,String password,String role) {
		
		
		boolean isSucces=false;
		
		//create database connection
		/*String url="jdbc:mysql://localhost:3306/hotel";
		String user="root";
		String Upassword="1234";
		*/
		
		
		try {
			
			
	
			//Class.forName("com.mysql.jdbc.Driver");
			
			//create connection
			//Connection conn= DriverManager.getConnection(url,user,Upassword);
			
			//Should import statement
			//Statement stmt=conn.createStatement();
			
			
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="INSERT INTO logintable(id,name,email,phone,username,password,role) VALUES(0,'"+name+"','"+email+"','"+tp+"','"+userName+"','"+password+"','"+role+"')";
			int dataInsert=stmt.executeUpdate(sql);
			
			if(dataInsert>0) {
				
				isSucces=true;
			}
			else {
				isSucces=false;
				
				System.out.println("name");
			}
			
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
			
		return isSucces;
		
	}
	
	public static boolean updateCustomer(String id,String name,String email,String phone,String userName,String password,String role) {
		
		boolean updateSucces = false;
		
		
		try{
			
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="update logintable set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+userName+"',password='"+password+"',role='"+role+"' Where ID='"+id+"'" ;
			int update=stmt.executeUpdate(sql);
			
			if(update>0) {
				
				updateSucces=true;
			}
			else {
				updateSucces=false;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
				
		}
		
		
		return updateSucces;
		
	}
	
	public static List<Customer>getCustomerDetails(String id){
		
		int convertedID=Integer.parseInt(id);
		
		ArrayList<Customer> cus=new ArrayList<>();
		
		try {
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="SELECT * FROM logintable WHERE ID='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int ID=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userName=rs.getString(5);
				String password=rs.getString(6);
				String role=rs.getString(7);
				
				
				Customer c1=new Customer(ID,name,email,phone,userName,password,role);
				
				cus.add(c1);
				
				
			}
			
		}
		catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		
		return cus;
		
		
	}
	
	
	public static boolean deleteCustomer(String id) {
		
		boolean isSucces=false;
		
		int convertedID=Integer.parseInt(id);
		
		
		try {
			conn=connection.getConnection();
			stmt=conn.createStatement();
			String sql="DELETE FROM logintable WHERE ID='"+convertedID+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSucces=true;
			}
			else {
				isSucces=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
			
		
		return isSucces;
	}
	
	

}
