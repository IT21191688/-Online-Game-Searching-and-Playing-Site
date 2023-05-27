package HRManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HRManagerDBUtill {
    
    private static boolean custo;
    private static Connection conn=null;
    private static Statement stmt=null;
    private static ResultSet rs=null;
    
    
public static boolean cvDataInsert(String name,String email,String position,String uploadPath, String action) {
        
        
        boolean isSucces=false;
        
        
        try {
            
            conn=connection.getConnection();
            stmt=conn.createStatement();
            String sql="INSERT INTO hrmanager(id,name,email,position,cvdata,status) VALUES(0,'"+name+"','"+email+"','"+position+"','"+uploadPath+"','"+action+"' )";
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
public static List<cvUpload> getcvDetails(){
    
    ArrayList<cvUpload> cvUpload=new ArrayList<>();
    
    
    try {
        conn=connection.getConnection();
        stmt=conn.createStatement();
        String sql="select * from hrmanager";
        rs=stmt.executeQuery(sql);
        
        //next return the boolean value
        while(rs.next()) {
            int id=rs.getInt(1);//column index
            String name=rs.getString(2);
            String email=rs.getString(3);
            String position=rs.getString(4);
            String cvpath=rs.getString(5);
            String action=rs.getString(6);

            
            cvUpload cvUpload1=new cvUpload(id, name, email,position,cvpath,action);//call the constructor
            cvUpload.add(cvUpload1);
            
            
        }
    }catch(Exception e){
        
        e.printStackTrace();
    }
    
    
    return cvUpload;
    
    
}

//delete
public static boolean deletecvData(String id) {
    
    int conID=Integer.parseInt(id);//wrapper class
    
    
    boolean isSucces=false;
    
    
    try {
        
        conn=connection.getConnection();
        stmt=conn.createStatement();
        String sql = "DELETE FROM hrmanager where id ='"+conID+"' ";
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
public static boolean cvDataUpdate(String id,String name,String email,String cvpath, String action) {
    
    int conID=Integer.parseInt(id);
    
    boolean isSucces=false;
    
    
    try {
        
        conn=connection.getConnection();
        stmt=conn.createStatement();
        String sql = "update hrmanager set name='"+name+"',email='"+email+"',status='"+action+"' WHERE id='"+conID+"'";
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
