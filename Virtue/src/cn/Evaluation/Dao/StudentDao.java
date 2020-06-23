package cn.Evaluation.Dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.management.StringValueExp;

import com.mysql.cj.Session;
import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;

import cn.Evaluation.Bean.Evaluate;
import cn.Evaluation.Bean.Student;
import cn.Evaluation.DBconnection.DBconnection;
import cn.Taylor.Javabean.User;
import cn.TaylorPublic.Servlet.LoginPublicServlet;
public class StudentDao {
		//查询全部数据
	public List<Student> queryAll() {
		List<Student> list = new ArrayList<Student>(); 
		// 1.取得连接对象
		Connection conn = DBconnection.getConn();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("select * from student");
			// 执行
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Student(rs.getInt(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getInt(5), null,rs.getInt(7),rs.getString(8)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(rs, ps, conn);
		}
		return list;
	}

	//根据id删除数据
	public void delById(int id){
		Connection conn = DBconnection.getConn();
		String sql = "delete from student where id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//给参数赋值
			ps.setInt(1, id);
			// 执行
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(null, ps, conn);
		}
	}

	//根据id修改数据
	public void alterById(int id,String stuno,String name,String gender,int age){
		Connection conn = DBconnection.getConn();
		String sql = "update student set stuno=?,name=?,gender=?,age=? where id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//给参数赋值
			 ps.setString(1, stuno);  
	         ps.setString(2, name);  
	         ps.setString(3, gender);  
	         ps.setInt(4, age);  
	         ps.setInt(5, id); 
			// 执行
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(null, ps, conn);
		}
	}

	//增加数据
	public void addstudent(String stuno,String name,String gender,int age){
		Connection conn = DBconnection.getConn();
		String sql = "insert into student(name,stuno,gender,age) values (?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//给参数赋值
//			ps.setInt(1, id);
			ps.setString(1, stuno);
			ps.setString(2, name);
			ps.setString(3, gender);
			ps.setInt(4, age);
			// 执行
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(null, ps, conn);
		}
	}
//	//增加评论		
	public void addeva(Evaluate evaluate){
		Connection conn = DBconnection.getConn();
		
		String sql="insert into evaluate(evaluator,bevaluator,evaluations,photo,time) values (?,?,?,?,?)";
		
		//String sql = "update student set ineva = concat(ineva,' ',?) where id= ? ";

		
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//给参数赋值
			
			
			ps.setString(1, evaluate.getEvaluator());
			ps.setString(2, evaluate.getBevaluator());
			ps.setString(3, evaluate.getEvaluations());
			ps.setString(4, evaluate.getPhoto());
			ps.setString(5, evaluate.getTime());
			
			// 执行
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(null, ps, conn);
		}
	
	}
	
//根据id更新评论
	public void UpdateEva(Evaluate evaluate){
		Connection conn = DBconnection.getConn();
		
		String sql="UPDATE evaluate set photo=? WHERE 1 ORDER BY id DESC LIMIT 1";

		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//给参数赋值

			ps.setString(1, evaluate.getPhoto());
			
			
			// 执行
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBconnection.close(null, ps, conn);
		}
	
	}
	
	
	
	

	
	//根据id查询数据
	public Student queryById(int id){  
        String sql = "select * from student where id = ?";  
        Connection conn = null;  
        PreparedStatement ps = null;      
        ResultSet res = null;  
        Student student = null;  
        try {  
            conn = DBconnection.getConn();  
            ps =(PreparedStatement) conn.prepareStatement(sql);  
            ps.setInt(1, id);  
            res = ps.executeQuery();              
            while(res.next()){  
                student = new Student(res.getInt(1),res.getString(2), res.getString(3), res.getString(4), res.getInt(5), null, res.getInt(7),res.getString(8));  
            }               
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }finally{  
            try{  
                if(null!=res){  
                    res.close();                  
                }  
                if(null!=ps){  
                    ps.close();  
                }  
                if(null!=conn){  
                    conn.close();  
                }  
            }catch(SQLException e){  
                e.printStackTrace();  
            }  
        }  
        return student;  
    } 
	
	//根据ticket_num查询数据
	public Student queryByTicket_num(String ticket_num){  
        String sql = "select id from student where ticket_num = ?";  
        Connection conn = null;  
        PreparedStatement ps = null;      
        ResultSet res = null;  
        Student student = null;  
        try {  
            conn = DBconnection.getConn();  
            ps =(PreparedStatement) conn.prepareStatement(sql);  
            ps.setString(1, ticket_num);  
            res = ps.executeQuery();              
            while(res.next()){  
                student = new Student(res.getInt(1),res.getString(2), res.getString(3), res.getString(4), res.getInt(5), null, res.getInt(7),res.getString(8));  
            }               
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }finally{  
            try{  
                if(null!=res){  
                    res.close();                  
                }  
                if(null!=ps){  
                    ps.close();  
                }  
                if(null!=conn){  
                    conn.close();  
                }  
            }catch(SQLException e){  
                e.printStackTrace();  
            }  
        }  
        return student;  
    }

	public List<Student> queryByTicket_num1() {
		// TODO Auto-generated method stub
        String sql = "select * from student where ticket_num = ?";  
        Connection conn = null;  
        PreparedStatement ps = null;      
        ResultSet res = null;  
        List<Student> student = null;  
        try {  
            conn = DBconnection.getConn();  
            ps =(PreparedStatement) conn.prepareStatement(sql);  
            ps.setString(1, sql);  
            res = ps.executeQuery();              
            
            student = Student(getInt(1),getString(2), getString(3), getString(4), getInt(5), null, getInt(7),getString(8));  
                           
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }finally{  
            try{  
                if(null!=res){  
                    res.close();                  
                }  
                if(null!=ps){  
                    ps.close();  
                }  
                if(null!=conn){  
                    conn.close();  
                }  
            }catch(SQLException e){  
                e.printStackTrace();  
            }  
        }  
        return student;
	}

	private List<Student> Student(Object int1, String string, String string2, String string3, Object int2,
			Object object, Object int3, String string4) {
		// TODO Auto-generated method stub
		return null;
	}

	private Object getInt(int i) {
		// TODO Auto-generated method stub
		return null;
	}

	private String getString(int i) {
		// TODO Auto-generated method stub
		return null;
	}


}
