package cn.Evaluation.Servlet;
import java.io.IOException;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.Evaluation.Bean.Student;
import cn.Evaluation.Dao.StudentDao;
 
public class Delservlet extends HttpServlet {
	
	private StudentDao dao = new StudentDao();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��ȡ����id
		String idstr = request.getParameter("id");
		int id = Integer.parseInt(idstr);
		//����dao����ɾ��
		dao.delById(id);
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
