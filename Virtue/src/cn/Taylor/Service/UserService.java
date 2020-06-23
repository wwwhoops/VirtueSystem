package cn.Taylor.Service;

import cn.Taylor.Javabean.User;
import cn.Taylor.Dao.UserDao;

/**
 * service 业务层
 * @author Allow
 *
 */
public class UserService {
	private UserDao userDao = new UserDao();
	
	//注册功能
	public void regist(User user) throws UserException {
		/**
		 * 1.使用用户名去查询，如果返回null，完成添加
		 * 2.如果返回的不是null，抛出异常！
		 */
		User user1 = userDao.searchUser(user.getUsername());
		
		if(user1.getUsername() != null){
			throw new UserException("用户名" + user.getUsername() + ",已经被注册过了！");
		}else {
			userDao.addUser(user);
		}
	}
	//登录功能
	public void login(User user) throws UserException{
		User user1 = userDao.selectUser(user.getUsername(),user.getPassword());
		if (user1.getUsername()==null||user1.getPassword()==null) {
			throw new UserException("用户名或密码错误，请重新登录！");
		}
		
	}
}