package cn.TaylorPublic.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.TaylorPublic.Javabean.UserPublic;
import cn.TaylorPublic.Service.UserPublicException;
import cn.TaylorPublic.Service.UserPublicService;

public class RegistPublicUser extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//处理POST请求的编码问题
		response.setContentType("text/html;charset=utf-8");//响应编码问题
		
		//把页面发送请求中的用户名和密码封装到User中
		String name = request.getParameter("admin");
		String ticket_num = request.getParameter("ticket_num");
		String stuno = request.getParameter("stuno");
		
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		
		UserPublic userPublic = new UserPublic();
		userPublic.setName(name);
		userPublic.setTicket_num(ticket_num);
		userPublic.setStuno(stuno);
		userPublic.setGender(gender);
		userPublic.setAge(age);
		
		try {
			//依赖UserServlet
			UserPublicService userPublicService = new UserPublicService();
			userPublicService.regist(userPublic);
			request.getRequestDispatcher("/successPublic.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/registPublic.jsp").forward(request, response);
		}
	}
}
