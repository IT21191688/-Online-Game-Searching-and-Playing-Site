package HRManager;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.cj.Constants;

/**
 * Servlet implementation class cvUploadpageServlet
 */
@MultipartConfig

@WebServlet("/cvUploadpageServlet")
public class cvUploadpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cvUploadpageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out =response.getWriter();
        response.setContentType("text/html");
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String position =request.getParameter("position");
        String action = "pending";
        
       
        //doGet(request, response);*/
        
        Part file=request.getPart("cv");
        String cvName=getFileName(file);//pre increment method
        String uploadPath="C:/Users/sadee/Desktop/project/src/main/webapp/cvData/"+cvName;
        
        
        
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
        //call database 
        status=HRManagerDBUtill.cvDataInsert(name, email, position, uploadPath,action);
        
        
       if(status==true) {
            
            out.println("<script type='text/javascript'>");
            out.println("alert('Your response has submitted!');");
            out.println("location='cvUploadpage.jsp'");
            out.println("</script>");
            
            
            
        }else {
            
            
            out.println("<script type='text/javascript'>");
            out.println("alert('unsuccess');");
            out.println("location='cvUploadpage.jsp'");
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
