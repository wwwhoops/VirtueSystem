package cn.TaylorPublic.Service;

import cn.TaylorPublic.Javabean.UserPublic;
import cn.TaylorPublic.Dao.UserPublicDao;

/**
 * service ҵ���
 * @author Allow
 *
 */
public class UserPublicService {
	private UserPublicDao userPublicDao = new UserPublicDao();
	
	//ע�Ṧ��
	public void regist(UserPublic user) throws UserPublicException {
		/**
		 * 1.ʹ���û���ȥ��ѯ���������null��������
		 * 2.������صĲ���null���׳��쳣��
		 */
		UserPublic user1 = userPublicDao.searchUser(user.getName());
		
		if(user1.getName() != null){
			throw new UserPublicException("�û���" + user.getName() + ",�Ѿ���ע����ˣ�");
		}else {
			userPublicDao.addUser(user);
		}
	}
	//��¼����
	public void login(UserPublic user) throws UserPublicException{
		UserPublic user1 = userPublicDao.selectUser(user.getName(),user.getStuno());
		if (user1.getName()==null||user1.getStuno()==null) {
			throw new UserPublicException("�û�����������������µ�¼��");
		}
		
	}
}