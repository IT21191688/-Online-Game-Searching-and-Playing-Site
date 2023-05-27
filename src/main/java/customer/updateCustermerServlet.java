package customer;

import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/updateCustermerServlet")
public class updateCustermerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String username =request.getSession(false).getAttribute("username").toString();
		
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		
		
		
		boolean updateCustomer;
		
		updateCustomer=CustermerDbUtil.updateCustomer(id, name, email, phone, userName, password,role);
		
		
		
		if(updateCustomer==true) {
			
			List<Customer> customerDetails=CustermerDbUtil.getCustomerDetails(id);
			request.setAttribute("customerDetails", customerDetails);
			
		
			
			RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
			dis.forward(request,response);
			
			

			
			
		}
		else {
			List<Customer> customerDetails=CustermerDbUtil.getCustomerDetails(id);
			request.setAttribute("customerDetails", customerDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request,response);
			
		}
		
		
	}

}
