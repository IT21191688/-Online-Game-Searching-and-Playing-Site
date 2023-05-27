package games;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.jdbc.Constants;





@MultipartConfig
@WebServlet("/gameInsertServlet")
public class gameInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public gameInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out =response.getWriter();
        response.setContentType("text/html");
        
        String name=request.getParameter("gameName");
        String discription=request.getParameter("discription");
        String link=request.getParameter("gameLink");
        //doGet(request, response);*/
        
        Part file=request.getPart("gameImage");
        String imageName=getFileName(file);
        String uploadPath="C:/Users/sadee/Desktop/project/src/main/webapp/gameImages/"+imageName;
        
        
        try {
            
            FileOutputStream fos=new FileOutputStream(uploadPath);
            InputStream is=file.getInputStream();
            
            byte[] data=new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
        }
        catch(Exception e){
            e.printStackTrace();
            
        }
        boolean status;
        
        status=gameDButill.gameInsert(name, discription, uploadPath,link);
        
        
        if(status==true) {
            
            out.println("<script type='text/javascript'>");
            out.println("alert('success');");
            out.println("location='gameCreate.jsp'");
            out.println("</script>");
            
            
            
        }else {
            
            
            out.println("<script type='text/javascript'>");
            out.println("alert('unsuccess');");
            out.println("location='gameCreate.jsp'");
            out.println("</script>");
        }
    }
    
    private String getFileName(Part file) {
        for (String content : file.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename"))
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        return Constants.MILLIS_I18N;
    }
 


}





