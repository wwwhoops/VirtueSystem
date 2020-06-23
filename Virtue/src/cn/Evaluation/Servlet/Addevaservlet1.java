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
// @WebServlet("/Addevaservlet")

public class Addevaservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentDao dao = new StudentDao();

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Evaluate evaluate = new Evaluate();

		String path = null;
	
		// 上传图片

		if (!ServletFileUpload.isMultipartContent(request)) {
			throw new RuntimeException("当前请求不支持文件上传");
		}
		// 为基于磁盘的文件项创建一个FileItem工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 设置临时文件的边界值，大于该值时，上传文件会先保存在临时文件中，否则，上传文件将直接写入到内存
		// 单位：字节，设置边界值1M，一字节=1024M;
		factory.setSizeThreshold(1024 * 1024 * 1);
		// 设置文件临时储存
		String temppath = this.getServletContext().getRealPath("/temp");
		File temp = new File(temppath);
		factory.setRepository(temp);
		// 创建一个新的文件上传处理程序
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 设置每一个item的头部字符编码，其可以解决文件名中文乱码问题；
		upload.setHeaderEncoding("UTF-8");
		// 设置单个文件的最大边界值(这里是2M)
		upload.setFileSizeMax(1024 * 1024 * 2);
		// 设置一次上传所有文件总和的最大值(对上传多个文件起作用,这里最大为5M)
		upload.setSizeMax(1024 * 1024 * 5);
		// 解析请求,获取所有的item
		try {
			//
			// 调用ServletFileUpload.parseRequest方法解析request对象，
			// 得到一个保存了所有上传内容的List对象。

			List<FileItem> items = upload.parseRequest(request);
			// 遍历
			for (FileItem item : items) {
				// //若item为普通表单项
				if (item.isFormField()) {
					// //获取表单中属性名称
					// String fieldName = item.getFieldName();
					// if(fieldName.equals("name")){
					// //获取表单属性的值
					// name=item.getString("UTF-8");
					// }
					// System.out.println(fieldName+"="+name);
					// 若 item为文件表单项
				} else {
					// 获取文件大小
					long size = item.getSize();
					// 获取文件类型
					String contentType = item.getContentType();
					// 获取上传文件原始名字
					String fileName = item.getName();
					System.out.println("文件大小：" + size);
					System.out.println("文件的类型：" + contentType);
					// System.out.println("文件的名称："+fileName);
					// 获取文件名,处理获取到的上传文件的文件名的路径部分，只保留文件名部分
					if (fileName.contains("/")) {
						// 如果包含则截取字符串
						fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
					}
					// 设置文件名，因为同名的文件会覆盖，所以要修饰文件名，设置毫秒+文件名
					fileName = System.currentTimeMillis() + fileName;
					
					System.out.println("文件的名称：" + fileName);
					// 获取输入流,其实有上传文件的内容
					InputStream inputStream = item.getInputStream();

					// String
					// parent=this.getServletContext().getRealPath("./images");
					path = "photo";
					File dirFile = new File(path);
					if (!dirFile.exists()) {
						// 创建多级目录mkdirs()
						dirFile.mkdir();
					}
					// 创建目录文件，将来用于保存上传文件
					File file = new File(path, fileName);
					// 创建文件输出流
					OutputStream os = new FileOutputStream(file);
					// 把输入流中的数据写入到输出流
					int len = 0;
					byte[] buf = new byte[1024];
					while ((len = inputStream.read(buf)) != -1) {
						os.write(buf, 0, len);
					}
					// 图片上传到之后的路径
					path = "photo" + "/" + fileName;

					// picture.setName(name);
					// picture.setPicturePath(path);
					// System.out.println(picture.getName()+"----"+picture.getPicturePath());
					// 调用Dao中的add()方法
					// dao.addPicture(picture);

					////////////////////////////////////////
					File saveFile = new File("F:/MyEclipseWorkSpace/Virtue/WebRoot/" + path); // 定义一个file指向一个具体的文件

					try {
						item.write(saveFile);// 把上传的内容写到一个文件中
						System.out.println("文件上传至文件夹");
					} catch (Exception e) {
						/* e.printStackTrace(); */
						System.out.println("文件为空");
					}
					os.close();

					inputStream.close();
					// 删除临时文件
					item.delete();
				}
			}

		} catch (FileUploadException e) {

			e.printStackTrace();
		}

		// try

		evaluate.setPhoto(path);

		dao.UpdateEva(evaluate);
		System.err.println("添加评论成功");
		List<Student> list = dao.queryAll();
		request.setAttribute("students", list);
		// 跳转回列表页面
		request.getRequestDispatcher("client.jsp").forward(request, response);
		
	}


}