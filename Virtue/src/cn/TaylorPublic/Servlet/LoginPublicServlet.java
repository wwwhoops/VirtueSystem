package cn.TaylorPublic.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mysql.cj.Session;

import cn.TaylorPublic.Javabean.UserPublic;
import cn.TaylorPublic.Service.UserPublicService;

public class LoginPublicServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");//处理POST请求的编码问题
		response.setContentType("text/html;charset=utf-8");//响应编码问题
		//依赖UserServlet
		UserPublicService userPublicService = new UserPublicService();
		String username = request.getParameter("administrater");
		String password = request.getParameter("upwd");
		UserPublic user = new UserPublic();
		user.setName(username);
		user.setStuno(password);
		try {
			userPublicService.login(user);
			//创建session对象
			//HttpSession session = request.getSession();
			//把用户数据保存在session域对象中
			//session.setAttribute("administer", username);
			//跳转到用户主页
			//response.sendRedirect(request.getContextPath()+"/IndexServlet");
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(3600);
			String str1 = request.getParameter("administrater");
			String str2 = request.getParameter("upwd");
			String adm = new String(str1.getBytes("utf-8"),"UTF-8");
			String upw = new String(str2.getBytes("ISO-8859-1"),"UTF-8");
			session.setAttribute("name", adm);
//			session.setAttribute("pwd", upw);
			response.sendRedirect("client.jsp");
			//request.getRequestDispatcher("/client.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/loginPublic.jsp").forward(request, response);
		}

	}
	
		
}
