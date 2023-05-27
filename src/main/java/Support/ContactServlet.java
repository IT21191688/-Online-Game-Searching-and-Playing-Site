package Support;

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


@MultipartConfig
@WebServlet(name="ContactServlet", urlPatterns = {"/create"})
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out =response.getWriter();
        response.setContentType("text/html");
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String message=request.getParameter("message");
        String reply = "Not Replied";
        
       
        boolean status;
        
        status=ContactDBUtil.insertContact(name, email, phone,message,reply);
        
        
        if(status==true) {
            
            out.println("<script type='text/javascript'>");
            out.println("alert('success');");
            out.println("location='insertmessage.jsp'");
            out.println("</script>");
            
            
            
        }else {
            
            
            out.println("<script type='text/javascript'>");
            out.println("alert('unsuccess');");
            out.println("location='insertmessage.jsp'");
            out.println("</script>");
        }
    }
    


}

