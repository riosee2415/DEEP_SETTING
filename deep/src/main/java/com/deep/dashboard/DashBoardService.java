package com.deep.dashboard;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


@Service("dashBoardService")
public class DashBoardService {
	
	@Resource(name = "dashBoardDao")
	private DashBoardDao dDao;
	
	public List<LogoVO> getLogoImg()
	{
		return dDao.getLogoImg();
	}
}
