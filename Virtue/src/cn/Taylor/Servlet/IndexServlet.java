package cn.Taylor.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();

        String html = "";

        //�õ�session����
        HttpSession session = request.getSession(false);
        if(session==null){
            //û�е�¼�ɹ�����ת����¼ҳ��
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }

        //ȡ���Ự����
        String loginName = (String)session.getAttribute("administer");
        if(loginName==null){
            //û�е�¼�ɹ�����ת����¼ҳ��
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }else {
        	//response.sendRedirect(request.getContextPath()+"/index.jsp");
        	request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

        //html = "<html><body>��ӭ������" +loginName+ "</a></body></html>";


        //writer.write(html);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}

