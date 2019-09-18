package com.deep.user;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

/**
 * @author sanghoyun
 *
 */
@Repository("userDao")
public class UserDao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<UserVO>
	 * @description	: get user information for 'myPage'
	 */
	public UserVO getUserInfo(Map param)
	{
		String queryId = "USER.GETINFO";
		
		UserVO vo = sqlSessionTemplate.selectOne(queryId, param);
		
		return vo;
	}
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : myPage (tiles) 
	 * @description	: update user information after data reload
	 */
	public int updateUserInfo(Map param)
	{
		int anwer = sqlSessionTemplate.update("UPDATE_USER", param);
		
		return anwer;
	}

}
