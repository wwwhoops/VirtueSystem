package cn.Evaluation.Servlet;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.Evaluation.Bean.Student;
import cn.Evaluation.Dao.StudentDao;

import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 * �鿴ȫ��ѧ��
 * */
public class Evalistservlet extends HttpServlet {
	 
	public StudentDao dao=new StudentDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//����ѧ������
//	   List<Student> list=new ArrayList<Student>();
//	   list.add(new Student(1,"stu001","����","��",20));
//	   list.add(new Student(2,"stu002","����","Ů",21));
//	   list.add(new Student(3,"stu003","����","��",19));
//	   list.add(new Student(4,"stu004","����","Ů",20));
//	   list.add(new Student(5,"stu005","�����","��",24));
	   //�����ݷ���request�У����ݵ�ҳ��
	   List<Student> list=dao.queryAll();
	   request.setAttribute("students", list);
	   request.getRequestDispatcher("evaing.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
	public void init() throws ServletException {
		// Put your code here
	}
 
}
