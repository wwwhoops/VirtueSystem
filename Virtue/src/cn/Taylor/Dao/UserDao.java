package cn.Taylor.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import cn.Taylor.Javabean.User;

public class UserDao {
	private static String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
	private static String user="root";
	private static String password="";
	private static Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	static{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //����MySQL��������
			//�������Ӳ�����������ݿ�����
			conn=DriverManager.getConnection(url, user, password);
			System.out.println("���ݿ����ӳɹ���");
		} catch (Exception e){
			e.printStackTrace();//�׳�����ʱ�쳣
		} 
	}
	/*
	 * ����û�
	 */
	public void addUser(User user){
		String sql = "insert into User(username,password) values(?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * �����û�������ѯ�û�
	 */
	public User searchUser(String username){
		String sql = "select username,password from User where username=?";
		User user =new User();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,username);
			rs=ps.executeQuery();
			while (rs.next()) {
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	/*
	 * �����û��������룬��ѯ�û�
	 */
	public User searchUser(String username,String password){
		String sql = "select username,password from User where username=? and password=?";
		User user =new User();
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1,username);
				ps.setString(2,password);
				rs=ps.executeQuery();
				while (rs.next()) {
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return user;
	}
	public User selectUser(String username, String password) {
		String sql = "select username, password from User where username=? and password=?";
		User user = new User();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
			rs=ps.executeQuery();
			while (rs.next()) {
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
//	//ɾ���û�
//	public void deleteUser(User user){
//		String sql = "drop User(username,password) values(?,?)";
//		try {
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, user.getUsername());
//			ps.setString(2, user.getPassword());
//			ps.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	//��ѯȫ������
//	public List<Student> queryAll() {
//		List<Student> list = new ArrayList<Student>(); 
//		// 1.ȡ�����Ӷ���
//		Connection conn = DBconnection.getConn();
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		try {
//			ps = conn.prepareStatement("select * from student");
//			// ִ��
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new Student(rs.getInt(1), rs.getString(2), rs
//						.getString(3), rs.getString(4), rs.getInt(5)));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally{
//			DBconnection.close(rs, ps, conn);
//		}
//		return list;
//	}
}
