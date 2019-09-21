package com.deep.user;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.deep.common.CommonService;
import com.deep.common.CommonVO;
import com.deep.login.LoginService;

/**
 * @author sanghoyun
 *
 */
@RequestMapping("user")
@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Resource(name = "userService")
	private UserService uService;

	@Resource(name = "commonService")
	private CommonService cService;

	@Resource(name = "loginService")
	private LoginService lService;

	/**
	 * @Author : DEV_YUN
	 * @return : myPage (tiles)
	 * @description : page move myPage
	 */
	@RequestMapping("/myPage")
	public String myPage(Model model) {
		Map<String, String> param = new HashMap();
		param.put("UP_CD", "SC001");
		List<CommonVO> list = cService.getCommonData(param);

		model.addAttribute("SC001", list);
		logger.debug("GET COMMON CODE DATA SIZE : {}", list.size());

		return "myPage";
	}

	/**
	 * @Author : DEV_YUN
	 * @return : redirect : myPage (tiles)
	 * @description : update user information after data reload
	 */
	@RequestMapping("/updateUserInfo")
	public String updateUserInfo(UserVO vo, @RequestParam("userId") String userId,
			@RequestParam("userName") String userName, @RequestParam("userPass") String userPass,
			@RequestParam("userSchool") String userSchool, @RequestParam("userMobile") String userMobile,
			@RequestParam("userBirth") String userBirth, @RequestParam("userYear") String userYear,
			@RequestParam("userEmail") String userEmail, @RequestParam("userZipcode") String userZipcode,
			@RequestParam("userAdd1") String userAdd1, @RequestParam("userAdd2") String userAdd2, HttpSession session,
			Model model) {

		// MAP SETTING
		Map<String, String> param = new HashMap();
		param.put("userId", userId);
		param.put("userName", userName);
		param.put("userPass", userPass);
		param.put("userSchool", userSchool);
		param.put("userMobile", userMobile);
		param.put("userBirth", userBirth);
		param.put("userYear", userYear);
		param.put("userEmail", userEmail);
		param.put("userZipcode", userZipcode);
		param.put("userAdd1", userAdd1);
		param.put("userAdd2", userAdd2);

		int answer = uService.updateUserInfo(param);

		if (answer == 1) {
			// updaete complate change session value!!
			List<UserVO> list = lService.userCheck(param);

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
		}

		return myPage(model);
	}

}
