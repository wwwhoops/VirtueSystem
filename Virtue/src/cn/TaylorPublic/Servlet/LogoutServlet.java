package cn.TaylorPublic.Servlet;
 
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class LogoutServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.getSession().removeAttribute("existUser");
		request.getSession().invalidate();
		response.getWriter().println("fuck you have logout!");
		response.sendRedirect("client.jsp");
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		doGet(request, response);
	}
 
}
