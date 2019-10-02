package com.deep.dashboard;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.deep.common.CommonVO;

@Service("dashBoardService")
public class DashBoardService {
	
	@Resource(name = "dashBoardDao")
	private DashBoardDao dDao;
	
	public CommonVO getLogoImg()
	{
		return dDao.getLogoImg();
	}
}
