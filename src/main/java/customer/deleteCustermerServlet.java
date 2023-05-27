package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteCustermerServlet")
public class deleteCustermerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		System.out.println(id);
		
		boolean isTrue;
		
		isTrue=CustermerDbUtil.deleteCustomer(id);
		
		if(isTrue==true) {
			
			RequestDispatcher delete=request.getRequestDispatcher("customerInsert.jsp");
			delete.forward(request, response);
			
			
		}
		else {
			List<Customer> cusDetails=CustermerDbUtil.getCustomerDetails(id);
			
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher notDelete=request.getRequestDispatcher("useraccount.jsp");
			notDelete.forward(request, response);
					
					
		}

		
	}

}
