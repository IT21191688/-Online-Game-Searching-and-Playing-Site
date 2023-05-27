package customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name="LoginServelet", urlPatterns = {"/logcus"})
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		
		String username =request.getParameter("userName");
		String password= request.getParameter("password");
		
		boolean custo;
		
		custo=CustermerDbUtil.validate(username, password);
		
		if(custo==true) {
			
			List<Customer> cusDetails=CustermerDbUtil.getCustomer(username);
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			
			//session.getAttribute("username");
			
			request.setAttribute("cusDetails", cusDetails);
			
			//RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			//dis.forward(request,response);
											
					String Role = cusDetails.get(0).getRole();
					
					if(Role.equalsIgnoreCase("admin")){
						System.out.println("hello"+Role);
						
						
						
						
						out.println("<script type='text/javascript'>");
						out.println("location='AdminDashbord.jsp'");
						out.println("</script>");
						
					}
				
			
		
					out.println("<script type='text/javascript'>");
					out.println("location='home.jsp'");
					out.println("</script>");

			
			
			
		}
		
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
			
		}
		
		
		
		
		
		
	}

}
