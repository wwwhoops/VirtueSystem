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
 
public class Addservlet extends HttpServlet {
 
	private StudentDao dao = new StudentDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取参数
//		String idstr = request.getParameter("id");
//		int id = Integer.parseInt(idstr);
		String stuno = request.getParameter("stuno");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String agestr = request.getParameter("age");
		int age = Integer.parseInt(agestr);
		//调用dao方法修改
		dao.addstudent(
				//id,
				name,stuno,gender,age);
		List<Student> list = dao.queryAll();
		request.setAttribute("students", list);
		//跳转回列表页面
		request.getRequestDispatcher("list.jsp").forward(request, response);	
		
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        this.doGet(request, response);
	}
 
}