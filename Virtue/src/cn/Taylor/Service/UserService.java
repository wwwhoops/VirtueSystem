package cn.Taylor.Service;

import cn.Taylor.Javabean.User;
import cn.Taylor.Dao.UserDao;

/**
 * service ҵ���
 * @author Allow
 *
 */
public class UserService {
	private UserDao userDao = new UserDao();
	
	//ע�Ṧ��
	public void regist(User user) throws UserException {
		/**
		 * 1.ʹ���û���ȥ��ѯ���������null��������
		 * 2.������صĲ���null���׳��쳣��
		 */
		User user1 = userDao.searchUser(user.getUsername());
		
		if(user1.getUsername() != null){
			throw new UserException("�û���" + user.getUsername() + ",�Ѿ���ע����ˣ�");
		}else {
			userDao.addUser(user);
		}
	}
	//��¼����
	public void login(User user) throws UserException{
		User user1 = userDao.selectUser(user.getUsername(),user.getPassword());
		if (user1.getUsername()==null||user1.getPassword()==null) {
			throw new UserException("�û�����������������µ�¼��");
		}
		
	}
}