package com.deep.homeupdate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("homeUpdate")
@Controller
public class HomeUpdateController {
	 
	@RequestMapping("/homeUpdateList")
	public String homeUpdateList() {
		
		return "homeUpdateList";
	}
	
	@RequestMapping(value="/mainUpdate")
	public String mainUpdate() {
		return "mainUpdate"; 
	}
}
