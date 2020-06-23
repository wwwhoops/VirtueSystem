package cn.Evaluation.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.Evaluation.Bean.Content;
import cn.Evaluation.Bean.Evaluate;
import cn.Evaluation.DBconnection.DBconnection;

public class ContentDao {
	
	
	
	//��ѯȫ������
		public List<Content> queryAll() {
			List<Content> list = new ArrayList<Content>(); 
			// 1.ȡ�����Ӷ���
			Connection conn = DBconnection.getConn();
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				ps = conn.prepareStatement("select * from station");
				// ִ��
				rs = ps.executeQuery();
				while (rs.next()) {
					list.add(new Content(rs.getInt(1), rs.getString(2), rs
							.getString(3)));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				DBconnection.close(rs, ps, conn);
			}
			return list;
		}

	//����id�޸�����
		public void alterById(int id,String station, String text){
			Connection conn = DBconnection.getConn();
			String sql = "update student set station=?,text=? where id=?";
			PreparedStatement ps = null;
			try {
				ps = conn.prepareStatement(sql);
				//��������ֵ
				 ps.setString(1, station);  
		         ps.setString(2, text);  
		         ps.setInt(3, id); 
				// ִ��
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				DBconnection.close(null, ps, conn);
			}
		}
}
