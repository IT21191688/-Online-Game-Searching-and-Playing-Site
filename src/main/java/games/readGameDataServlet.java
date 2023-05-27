package games;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class readGameDataServlet
 */
@WebServlet("/readGameDataServlet")
public class readGameDataServlet extends HttpServlet {
    private static final long serialVersionUID = 102831973239L;
       

    public readGameDataServlet() {
        super();
    }

    
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<games> listgames=gameDButill.getgames();
		request.setAttribute("listgames", listgames);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("gameAdinistrator.jsp");
		dispatcher.forward(request, response);
		
		System.out.println(listgames);
		

		
		
	}
	


}
