package com.deep.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deep.common.CommonVO;
import com.deep.dashboard.DashBoardService;
import com.deep.dashboard.LogoVO;
import com.deep.maininfo.MainInfoService;
import com.deep.maininfo.MainInfoVo;
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
	
	@Resource(name = "dashBoardService")
	private DashBoardService dService;
	
	@Autowired
	private MainInfoService MService;
	
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
		
		List<LogoVO> list2 = dService.getLogoImg();
		
		logger.debug("MAIN LOGO PRINT : {}" , list2.get(0).getLogo_path());
		logger.debug("MAIN LOGO PRINT : {}" , list2.get(0).getLogo_name());
		
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
			
			model.addAttribute("images", list2);
			
			session.setAttribute("bgPath", list2.get(0).getLogo_path());
			session.setAttribute("bgName", list2.get(0).getLogo_name());
			
			return moveDashboard(model);
		}
		else 
		{
			return "login";
		}
	}
	
	
	@RequestMapping("/dashboard")
	public String moveDashboard(Model model)
	{ 
		List <MainInfoVo> Mlist = MService.getList();
		//model.addAttribute("Mlist",Mlist);
		
		String pic01 = Mlist.get(0).getPICTURE_PATH_01();
		String pic02 = Mlist.get(0).getPICTURE_NAME_01();
		String pic03 = Mlist.get(0).getPICTURE_PATH_02();
		String pic04 = Mlist.get(0).getPICTURE_NAME_02();
		String pic05 = Mlist.get(0).getPICTURE_PATH_03();
		String pic06 = Mlist.get(0).getPICTURE_NAME_03();
		String pic07 = Mlist.get(0).getAREA01_TITLE();
		String pic08 = Mlist.get(0).getAREA01_CONTENTS();
		String pic09 = Mlist.get(0).getAREA01_LINK();
		String pic10 = Mlist.get(0).getAREA02_TITLE();
		String pic11 = Mlist.get(0).getAREA02_CONTENTS();
		String pic12 = Mlist.get(0).getAREA02_LINK();
		String pic13 = Mlist.get(0).getAREA03_TITLE();
		String pic14 = Mlist.get(0).getAREA03_CONTENTS();
		String pic15 = Mlist.get(0).getAREA03_LINK();
		
		model.addAttribute("picPath_01", pic01);
		model.addAttribute("picName_01", pic02);
		model.addAttribute("picPath_02", pic03);
		model.addAttribute("picName_02", pic04);
		model.addAttribute("picPath_03", pic05);
		model.addAttribute("picName_03", pic06);
		model.addAttribute("title_01", pic07);
		model.addAttribute("content_01", pic08);
		model.addAttribute("link_01", pic09);
		model.addAttribute("title_02", pic10);
		model.addAttribute("content_02", pic11);
		model.addAttribute("link_02", pic12);
		model.addAttribute("title_03", pic13);
		model.addAttribute("content_03", pic14);
		model.addAttribute("link_03", pic15);
		
		return "dashboard"; 
	}
	
	
	

}
