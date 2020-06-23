package cn.Evaluation.Servlet;
 
import java.io.File;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.taglibs.standard.lang.jstl.Evaluator;

import cn.Evaluation.Bean.Evaluate;
import cn.Evaluation.Bean.Student;
import cn.Evaluation.Dao.StudentDao;


/**
 * Servlet implementation class Addevaservlet
 */
//@WebServlet("/Addevaservlet")
 
public class Addevaservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	private StudentDao dao = new StudentDao();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        //this.doPost(request, response);
		
	}	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Evaluate evaluate = new Evaluate();

		//获取参数
		String evaluator=(String) request.getSession().getAttribute("name");//通过session获取评价者
		String bevaluator=request.getParameter("ticket_num");//获取被评价人的ticket_num
		String evaluations=request.getParameter("evaluations");//获取评论
		String photo = request.getParameter("uploadFile");//获取照片
		String time = request.getParameter("time");//获取时间

		evaluate.setEvaluator(evaluator);
		evaluate.setBevaluator(bevaluator);
		evaluate.setEvaluations(evaluations);
		evaluate.setPhoto(photo);
		evaluate.setTime(time);

		//上传图片
		
		
		
		
		
		dao.addeva(evaluate);
		
		List<Student> list = dao.queryAll();
		request.setAttribute("students", list);
		//跳转回列表页面
		request.getRequestDispatcher("subSuccess.jsp").forward(request, response);	
		
	}
	

	
 
}