package com.deep.dashboard;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


@Repository("dashBoardDao")
public class DashBoardDao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	
	public List<LogoVO> getLogoImg()
	{
		
		String queryId = "COMMON.GET_LOGO_IMG";
		
		List<LogoVO> list = sqlSessionTemplate.selectList(queryId);
				
		return list;
	}
}
