package com.deep.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.deep.user.UserVO;

/**
 * @author sanghoyun
 *
 */
@Service("loginService")
public class LoginService {
	
	@Resource(name = "loginDao")
	private LoginDao lDao;
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : List<UserVO>
	 * @description	: input user Data validating to database
	 */
	public List<UserVO> userCheck(Map param)
	{
		return lDao.userCheck(param);
	}
	
}
