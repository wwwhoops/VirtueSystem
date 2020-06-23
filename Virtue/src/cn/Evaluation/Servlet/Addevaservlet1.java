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
	
		// �ϴ�ͼƬ

		if (!ServletFileUpload.isMultipartContent(request)) {
			throw new RuntimeException("��ǰ����֧���ļ��ϴ�");
		}
		// Ϊ���ڴ��̵��ļ����һ��FileItem����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// ������ʱ�ļ��ı߽�ֵ�����ڸ�ֵʱ���ϴ��ļ����ȱ�������ʱ�ļ��У������ϴ��ļ���ֱ��д�뵽�ڴ�
		// ��λ���ֽڣ����ñ߽�ֵ1M��һ�ֽ�=1024M;
		factory.setSizeThreshold(1024 * 1024 * 1);
		// �����ļ���ʱ����
		String temppath = this.getServletContext().getRealPath("/temp");
		File temp = new File(temppath);
		factory.setRepository(temp);
		// ����һ���µ��ļ��ϴ��������
		ServletFileUpload upload = new ServletFileUpload(factory);
		// ����ÿһ��item��ͷ���ַ����룬����Խ���ļ��������������⣻
		upload.setHeaderEncoding("UTF-8");
		// ���õ����ļ������߽�ֵ(������2M)
		upload.setFileSizeMax(1024 * 1024 * 2);
		// ����һ���ϴ������ļ��ܺ͵����ֵ(���ϴ�����ļ�������,�������Ϊ5M)
		upload.setSizeMax(1024 * 1024 * 5);
		// ��������,��ȡ���е�item
		try {
			//
			// ����ServletFileUpload.parseRequest��������request����
			// �õ�һ�������������ϴ����ݵ�List����

			List<FileItem> items = upload.parseRequest(request);
			// ����
			for (FileItem item : items) {
				// //��itemΪ��ͨ����
				if (item.isFormField()) {
					// //��ȡ������������
					// String fieldName = item.getFieldName();
					// if(fieldName.equals("name")){
					// //��ȡ�����Ե�ֵ
					// name=item.getString("UTF-8");
					// }
					// System.out.println(fieldName+"="+name);
					// �� itemΪ�ļ�����
				} else {
					// ��ȡ�ļ���С
					long size = item.getSize();
					// ��ȡ�ļ�����
					String contentType = item.getContentType();
					// ��ȡ�ϴ��ļ�ԭʼ����
					String fileName = item.getName();
					System.out.println("�ļ���С��" + size);
					System.out.println("�ļ������ͣ�" + contentType);
					// System.out.println("�ļ������ƣ�"+fileName);
					// ��ȡ�ļ���,�����ȡ�����ϴ��ļ����ļ�����·�����֣�ֻ�����ļ�������
					if (fileName.contains("/")) {
						// ����������ȡ�ַ���
						fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
					}
					// �����ļ�������Ϊͬ�����ļ��Ḳ�ǣ�����Ҫ�����ļ��������ú���+�ļ���
					fileName = System.currentTimeMillis() + fileName;
					
					System.out.println("�ļ������ƣ�" + fileName);
					// ��ȡ������,��ʵ���ϴ��ļ�������
					InputStream inputStream = item.getInputStream();

					// String
					// parent=this.getServletContext().getRealPath("./images");
					path = "photo";
					File dirFile = new File(path);
					if (!dirFile.exists()) {
						// �����༶Ŀ¼mkdirs()
						dirFile.mkdir();
					}
					// ����Ŀ¼�ļ����������ڱ����ϴ��ļ�
					File file = new File(path, fileName);
					// �����ļ������
					OutputStream os = new FileOutputStream(file);
					// ���������е�����д�뵽�����
					int len = 0;
					byte[] buf = new byte[1024];
					while ((len = inputStream.read(buf)) != -1) {
						os.write(buf, 0, len);
					}
					// ͼƬ�ϴ���֮���·��
					path = "photo" + "/" + fileName;

					// picture.setName(name);
					// picture.setPicturePath(path);
					// System.out.println(picture.getName()+"----"+picture.getPicturePath());
					// ����Dao�е�add()����
					// dao.addPicture(picture);

					////////////////////////////////////////
					File saveFile = new File("F:/MyEclipseWorkSpace/Virtue/WebRoot/" + path); // ����һ��fileָ��һ��������ļ�

					try {
						item.write(saveFile);// ���ϴ�������д��һ���ļ���
						System.out.println("�ļ��ϴ����ļ���");
					} catch (Exception e) {
						/* e.printStackTrace(); */
						System.out.println("�ļ�Ϊ��");
					}
					os.close();

					inputStream.close();
					// ɾ����ʱ�ļ�
					item.delete();
				}
			}

		} catch (FileUploadException e) {

			e.printStackTrace();
		}

		// try

		evaluate.setPhoto(path);

		dao.UpdateEva(evaluate);
		System.err.println("������۳ɹ�");
		List<Student> list = dao.queryAll();
		request.setAttribute("students", list);
		// ��ת���б�ҳ��
		request.getRequestDispatcher("client.jsp").forward(request, response);
		
	}


}