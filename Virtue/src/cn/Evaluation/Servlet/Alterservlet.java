package cn.Evaluation.Servlet;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.Evaluation.Bean.Student;
import cn.Evaluation.Dao.StudentDao;

import java.io.PrintWriter;
import java.util.List;
public class Alterservlet extends HttpServlet {
 
	private StudentDao dao = new StudentDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��ȡ����
		request.setCharacterEncoding("utf-8");
		String idstr = request.getParameter("id");
		int id = Integer.parseInt(idstr);
		String stuno = request.getParameter("stuno");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String agestr = request.getParameter("age");
		int age = Integer.parseInt(agestr);	
		//����dao�����޸�
		dao.alterById(id,stuno,name,gender,age);
		List<Student> list = dao.queryAll();
		request.setAttribute("students", list);
		//��ת���б�ҳ��
		request.getRequestDispatcher("list.jsp").forward(request, response);	
		
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
 
 
}