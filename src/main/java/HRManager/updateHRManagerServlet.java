package HRManager;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class gameDataUpdateServlet
 */
//@WebServlet(name="/updateHRmanagerServlet", urlPatterns = {"/updatecvData"})
@WebServlet("/updateHRmanagerServlet")
public class updateHRManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateHRManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        PrintWriter out =response.getWriter();
        response.setContentType("text/html");
        
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String position=request.getParameter("position");
        String cvpath=request.getParameter("cvpath");
        String action=request.getParameter("action");
       

      
        boolean successUp;
        
        successUp=HRManagerDBUtill.cvDataUpdate(id,name,email,position,action);
        
        
        if(successUp==true) {
            
            out.println("<script type='text/javascript'>");
            out.println("alert('success');");
            out.println("location='HRMDeatails.jsp'");
            out.println("</script>");
            
            
        }else {
            
            out.println("<script type='text/javascript'>");
            out.println("alert('unsuccess');");
            out.println("location='HRMDeatails.jsp'");
            out.println("</script>");
        }
    }
        
        
}