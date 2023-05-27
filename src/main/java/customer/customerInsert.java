package customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/customerInsert")
//@WebServlet(name="/customerInsert", urlPatterns = {"/insertcus"})
public class customerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String tp=request.getParameter("tp");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		
		boolean status;
		
		
		status=CustermerDbUtil.insertcustomer(name, email, tp, userName, password,role);
		
		if(status==true) {
			
			
			
			RequestDispatcher dis= request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
			
			
		}else {
			
			
			RequestDispatcher dis2= request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
