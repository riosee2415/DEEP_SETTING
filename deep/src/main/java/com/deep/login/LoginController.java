package com.deep.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deep.user.UserVO;

/**
 * @author sanghoyun
 *
 */
@RequestMapping("login")
@Controller
public class LoginController 
{
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name = "loginService")
	private LoginService lService;
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: login (tiles)
	 * @description	: open login page in PROJECT
	 */
	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: login (tiles) || dashboard (tiles)
	 * @description	: if same to check user info in database send dashboard else stay login page
	 */
	@RequestMapping(path="/userCheck",method=RequestMethod.POST)
	public String userCheck(Model model, 	@RequestParam(value="userId")String userId, 
											@RequestParam(value="userPass")String userPass,
											HttpSession session)
	{	
		logger.debug("try login input userId : {}", userId);
		logger.debug("try login input userPass : {}", userPass);
		
		Map<String, String> param = new HashMap();
		
		param.put("userId", userId);
		param.put("userPass", userPass);
		
		List<UserVO> list = lService.userCheck(param);
		
		if(list.size() > 0 )
		{
			logger.debug("ready send to main Page : {}", list.get(0).getId());
			session.setAttribute("userId", list.get(0).getId());
			session.setAttribute("userName", list.get(0).getName());
			session.setAttribute("userPass", list.get(0).getPassword());
			session.setAttribute("userSchool", list.get(0).getSchool());
			session.setAttribute("userMobile", list.get(0).getMobile());
			session.setAttribute("userBirth", list.get(0).getBirth());
			session.setAttribute("userYear", list.get(0).getYear());
			session.setAttribute("userEmail", list.get(0).getEmail());
			session.setAttribute("userZipcode", list.get(0).getZipcode());
			session.setAttribute("userAdd1", list.get(0).getAdd1());
			session.setAttribute("userAdd2", list.get(0).getAdd2());
			
			
			
			return moveDashboard();
		}
		else 
		{
			return "login";
		}
	}
	
	
	@RequestMapping("/dashboard")
	public String moveDashboard()
	{
		return "dashboard";
	}
	
	
	

}
