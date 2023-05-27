package Support;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class readHRmanagerServlet
 */

@WebServlet(name="ReadContactServlet", urlPatterns = {"/Contactread"})
public class ReadContactServlet extends HttpServlet {
    private static final long serialVersionUID = 102831973239L;
       

    public ReadContactServlet() {
        super();
    }

    
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List<Contact> listContact=ContactDBUtil.getcontactDetails();
        request.setAttribute("listContact", listContact);
        
        System.out.println(listContact);

        
        RequestDispatcher dispatcher = request.getRequestDispatcher("contactAdmin.jsp");
        dispatcher.forward(request, response);
        
        
        
        
    }
    


}
