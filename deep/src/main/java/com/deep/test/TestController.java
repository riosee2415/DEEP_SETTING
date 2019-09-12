package com.deep.test;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("test")
@Controller
public class TestController {

	
	@Resource(name = "testDao")
	private TestDao tDao;
	
	@RequestMapping("/test")
	public String testPage()
	{	
		List<TestVO> list = tDao.selectList();
		
		System.out.println(list.size());
		System.out.println(list.size());
		System.out.println(list.size());
		System.out.println(list.size());
		System.out.println(list.size());
		System.out.println(list.size());
		System.out.println(list.size());
		
		
		
		return "helloTiles";
	}
}
