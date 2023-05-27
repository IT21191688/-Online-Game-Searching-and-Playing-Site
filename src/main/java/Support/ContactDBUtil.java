package Support;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactDBUtil {
	
	private static boolean custo;
	private static Connection conn=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	


public static boolean insertContact(String name, String email, String phone,String message, String reply) {
	// TODO Auto-generated method stu
	boolean isSucces=false;
	
	
	try {
		
		conn=connection.getConnection();
		stmt=conn.createStatement();
		String sql="INSERT INTO contact(id,name,email,phone,message,reply)VALUES(0,'"+name+"','"+email+"','"+phone+"','"+message+"','"+reply+"')";
		int dataInsert=stmt.executeUpdate(sql);
		
		if(dataInsert>0) {
			
			isSucces=true;
		}
		else {
			isSucces=false;
		}
		
		
		
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
		
	return isSucces;
}

//Read
public static List<Contact> getcontactDetails(){
  
  ArrayList<Contact> Contact=new ArrayList<>();
  
  
  try {
      conn=connection.getConnection();
      stmt=conn.createStatement();
      String sql="select * from contact";
      rs=stmt.executeQuery(sql);
      
      //next return the boolean value
      while(rs.next()) {
          int id=rs.getInt(1);//column index
          String name=rs.getString(2);
          String email=rs.getString(3);
          String phone=rs.getString(4);
          String message=rs.getString(5);
          String reply=rs.getString(6);

          
          Contact Contact1=new Contact(id, name, email, phone, message, reply);
          
          //call the constructor
          Contact.add(Contact1);
          
          
      }
  }catch(Exception e){
      
      e.printStackTrace();
  }
  
  
  return Contact;
  
  
}

//delete
public static boolean deleteContact(String id) {
  
  int conID=Integer.parseInt(id);//wrapper class
  
  
  boolean isSucces=false;
  
  
  try {
      
      conn=connection.getConnection();
      stmt=conn.createStatement();
      String sql = "DELETE FROM contact where id ='"+conID+"' ";
      int dataDelete=stmt.executeUpdate(sql);
      
      if(dataDelete>0) {
          
          isSucces=true;
      }
      else {
          isSucces=false;
      }
      
      
      
  }catch(Exception e){
      
      e.printStackTrace();
      
  }
      
  return isSucces;
  
}
//update

public static boolean contactUpdate(String id,String name,String email,String phone,String message,String reply) {
	
	int conID=Integer.parseInt(id);
	
	boolean isSucces=false;
	
	
	try {
		
		conn=connection.getConnection();
		stmt=conn.createStatement();
		String sql = "update contact set name='"+name+"',email='"+email+"',phone='"+phone+"',message='"+message+"',reply='"+reply+"' WHERE id='"+id+"'";
		int dataUpdate=stmt.executeUpdate(sql);
		
		if(dataUpdate>0) {
			
			isSucces=true;
		}
		else {
			isSucces=false;
		}
		
		
		
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
		
	return isSucces;
	
}

}
