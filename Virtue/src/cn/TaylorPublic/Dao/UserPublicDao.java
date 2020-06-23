package cn.TaylorPublic.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import cn.TaylorPublic.Javabean.UserPublic;

public class UserPublicDao {
	private static String url="jdbc:mysql:///user?useSSL=false&serverTimezone=UTC";
	private static String user="root";
	private static String password="";
	private static Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	static{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //加载MySQL驱动程序
			//设置连接参数，获得数据库连接
			conn=DriverManager.getConnection(url, user, password);
			System.out.println("数据库连接成功！");
		} catch (Exception e){
			e.printStackTrace();//抛出运行时异常
		} 
	}
	/*
	 * 添加用户
	 */
	public void addUser(UserPublic userPublic){
		String sql = "INSERT INTO student(stuno,name,gender,age,ticket_num) VALUES(?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, userPublic.getStuno());
			ps.setString(2, userPublic.getName());
			ps.setString(3, userPublic.getGender());
			ps.setString(4, userPublic.getAge());
			ps.setString(5, userPublic.getTicket_num());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 根据用户名，查询用户
	 */
	public UserPublic searchUser(String ticket_num){
		String sql = "SELECT ticket_num,stuno FROM student WHERE ticket_num=?";
		UserPublic user =new UserPublic();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,ticket_num);
			rs=ps.executeQuery();
			while (rs.next()) {
				user.setName(rs.getString("ticket_num"));
				user.setStuno(rs.getString("stuno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	/*
	 * 根据用户名和密码，查询用户
	 */
	public UserPublic searchUser(String ticket_num,String stuno){
		String sql = "SELECT ticket_num,stuno FROM student WHERE ticket_num=? AND stuno=?";
		UserPublic user =new UserPublic();
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1,ticket_num);
				ps.setString(2,stuno);
				rs=ps.executeQuery();
				while (rs.next()) {
					user.setName(rs.getString("ticket_num"));
					user.setStuno(rs.getString("stuno"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return user;
	}
	public UserPublic selectUser(String ticket_num, String stuno) {
		String sql = "SELECT ticket_num, stuno FROM student WHERE ticket_num=? AND stuno=?";
		UserPublic user = new UserPublic();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,ticket_num);
			ps.setString(2,stuno);
			rs=ps.executeQuery();
			while (rs.next()) {
				user.setName(rs.getString("ticket_num"));
				user.setStuno(rs.getString("stuno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
//	//删除用户
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
//	//查询全部数据
//	public List<Student> queryAll() {
//		List<Student> list = new ArrayList<Student>(); 
//		// 1.取得连接对象
//		Connection conn = DBconnection.getConn();
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		try {
//			ps = conn.prepareStatement("select * from student");
//			// 执行
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
