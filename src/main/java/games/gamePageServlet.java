package games;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet(name="gamePageServlet",urlPatterns="/gamePageServlet")
public class gamePageServlet extends HttpServlet {
    private static final long serialVersionUID = 102831973239L;
       

    public gamePageServlet() {
        super();

        
    }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List<games> listgames=gameDButill.gamePage();
        request.setAttribute("listgames", listgames);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("gamePage.jsp");
        dispatcher.forward(request, response);
        
        System.out.println(listgames);
        
       
        
        
    }

    


}
