package com.deep.Attendance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("attendance")
public class AttendanceController {
	
	@RequestMapping("attendanceScreen")
	public String attendanceScreen() {
		
		return "attendanceScreen";
	}

}
