package cn.Taylor.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.Taylor.Javabean.User;
import cn.Taylor.Service.UserException;
import cn.Taylor.Service.UserService;

public class RegistUser extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//处理POST请求的编码问题
		response.setContentType("text/html;charset=utf-8");//响应编码问题
		
		//把页面发送请求中的用户名和密码封装到User中
		String username = request.getParameter("admin");
		String password = request.getParameter("pwd");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		try {
			//依赖UserServlet
			UserService userService = new UserService();
			userService.regist(user);
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
		}
	}
}
