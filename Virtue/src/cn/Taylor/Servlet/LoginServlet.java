package cn.Taylor.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import cn.Taylor.Javabean.User;
import cn.Taylor.Service.UserService;

public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");//����POST����ı�������
		response.setContentType("text/html;charset=utf-8");//��Ӧ��������
		//����UserServlet
		UserService userService = new UserService();
		String username = request.getParameter("administer");
		String password = request.getParameter("upwd");
//		String identity = request.getParameter("identity");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
//		user.setIdentity(identity);
		try {
			userService.login(user);
			//����session����
			//HttpSession session = request.getSession();
			//���û����ݱ�����session�������
			//session.setAttribute("administer", username);
			//��ת���û���ҳ
			//response.sendRedirect(request.getContextPath()+"/IndexServlet");
			HttpSession sessionAdm = request.getSession();
			sessionAdm.setMaxInactiveInterval(3600);
			String str3 = request.getParameter("administer");
			String str4 = request.getParameter("upwd");
			String admi = new String(str3.getBytes("utf-8"),"UTF-8");
			String upwd = new String(str4.getBytes("ISO-8859-1"),"UTF-8");
			sessionAdm.setAttribute("nameAdm", admi);
			sessionAdm.setAttribute("pwdAdm", upwd);
			response.sendRedirect("index.jsp");
			//request.getRequestDispatcher("/index.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
//		HttpSession session = request.getSession();
//		session.setMaxInactiveInterval(60);
//		String str1 = request.getParameter("administer");
//		String str2 = request.getParameter("upwd");
//		String adm = new String(str1.getBytes("utf-8"));
//		String upw = new String(str2.getBytes("utf-8"));
//		session.setAttribute("name", adm);
//		session.setAttribute("pwd", upw);
//		response.sendRedirect("index.jsp");
	}
}
