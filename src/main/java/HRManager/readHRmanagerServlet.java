package HRManager;

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
@MultipartConfig
//@WebServlet(name="readHRmanagerServlet", urlPatterns = {"/HRMread"})
@WebServlet("/readHRmanagerServlet")
    public class readHRmanagerServlet extends HttpServlet {
        private static final long serialVersionUID = 102831973239L;
           

        public readHRmanagerServlet() {
            super();
        }

        
        
        
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            List<cvUpload> listHRMDetails=HRManagerDBUtill.getcvDetails();
            request.setAttribute("listHRMDetails", listHRMDetails);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("HRMDeatails.jsp");
            dispatcher.forward(request, response);
            
            
            
            
        }
        


    }


