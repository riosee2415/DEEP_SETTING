package com.deep.subject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @author sanghoyun
 *
 */
@RequestMapping("subject")
@Controller
public class SubjectController 
{
	private static final Logger logger = LoggerFactory.getLogger(SubjectController.class);

	
	@RequestMapping("/subjectList")
	public String subjectList()
	{
		return "subjectList";
	}



}
