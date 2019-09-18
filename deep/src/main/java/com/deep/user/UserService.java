package com.deep.user;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/**
 * @author sanghoyun
 *
 */
@Service("userService")
public class UserService {
	
	@Resource(name = "userDao")
	private UserDao uDao;
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<UserVO>
	 * @description	: get user information for 'myPage'
	 */
	public UserVO getUserInfo(Map param)
	{
		return uDao.getUserInfo(param);
	}
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : myPage (tiles) 
	 * @description	: update user information after data reload
	 */
	public int updateUserInfo(Map param)
	{
		return uDao.updateUserInfo(param);
	}

}
