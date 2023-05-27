package games;

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
@WebServlet("/gameDataUpdateServlet")
public class gameDataUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gameDataUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String id=request.getParameter("gameId");
		String name=request.getParameter("gameName");
		String discription=request.getParameter("discription");
		String link=request.getParameter("gameLink");

		/*
		Part file=request.getPart("imageName");
		String imageName=file.getSubmittedFileName();
		String uploadPath="C:/Users/sadee/Desktop/project/gameImages/"+imageName;
		
		try {
			
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		*/
		boolean successUp;
		
		successUp=gameDButill.gameDataUpdate(id,name,discription,link);
		
		
		if(successUp==true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('success');");
			out.println("location='gameAdinistrator.jsp'");
	        out.println("</script>");
			
			
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('unsuccess');");
			out.println("location='gameAdinistrator.jsp'");
			out.println("</script>");
		}
	}
		
		
}


