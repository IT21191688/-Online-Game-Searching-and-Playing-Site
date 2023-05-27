package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="readServlet", urlPatterns = {"/readData"})
public class readServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public readServlet() {
        super();
    }
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username =request.getSession(false).getAttribute("username").toString();
		System.out.println(username);
		
		List<Customer> listdetails=CustermerDbUtil.getCustomer(username);
		
		request.setAttribute("listdetails", listdetails);
System.out.println(listdetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
		dispatcher.forward(request, response);

	}

}
