package com.deep.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.deep.user.UserVO;

/**
 * @author sanghoyun
 *
 */
@Repository("loginDao")
public class LoginDao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : List<UserVO>
	 * @description	: input user Data validating to database
	 */
	public List<UserVO> userCheck(Map param)
	{
		String queryId = "USER.USERCHECK";
		
		List<UserVO> list = sqlSessionTemplate.selectList(queryId, param);
		
		return list;
	}
}
