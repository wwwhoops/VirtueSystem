package cn.TaylorPublic.Service;

import cn.TaylorPublic.Javabean.UserPublic;
import cn.TaylorPublic.Dao.UserPublicDao;

/**
 * service 业务层
 * @author Allow
 *
 */
public class UserPublicService {
	private UserPublicDao userPublicDao = new UserPublicDao();
	
	//注册功能
	public void regist(UserPublic user) throws UserPublicException {
		/**
		 * 1.使用用户名去查询，如果返回null，完成添加
		 * 2.如果返回的不是null，抛出异常！
		 */
		UserPublic user1 = userPublicDao.searchUser(user.getName());
		
		if(user1.getName() != null){
			throw new UserPublicException("用户名" + user.getName() + ",已经被注册过了！");
		}else {
			userPublicDao.addUser(user);
		}
	}
	//登录功能
	public void login(UserPublic user) throws UserPublicException{
		UserPublic user1 = userPublicDao.selectUser(user.getName(),user.getStuno());
		if (user1.getName()==null||user1.getStuno()==null) {
			throw new UserPublicException("用户名或密码错误，请重新登录！");
		}
		
	}
}