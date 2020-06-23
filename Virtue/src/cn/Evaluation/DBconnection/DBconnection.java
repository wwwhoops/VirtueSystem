package cn.Evaluation.DBconnection;
 
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class DBconnection  {	
	 private static String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
	 private static String name="root";
	 private static String password="";
	static{
		//��������
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/*
	 * ��ȡ���Ӷ���
	 * */
	public static Connection getConn(){
		Connection conn=null;
		try{
			conn=DriverManager.getConnection(url,name,password);
			System.out.println("�ɹ��������ݿ�");
		}catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * �ر�����
	 * @param rs
	 * @param ps
	 * @param conn
	 */
	public static void close(ResultSet rs, PreparedStatement ps, Connection conn) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		System.out.println(DBconnection.getConn());
		}
	}
 
