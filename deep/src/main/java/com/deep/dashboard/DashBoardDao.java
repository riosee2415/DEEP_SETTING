package com.deep.dashboard;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.deep.common.CommonVO;

@Repository("dashBoardDao")
public class DashBoardDao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	
	public CommonVO getLogoImg()
	{
		
		String queryId = "USER.USERCHECK";
		
		CommonVO vo = sqlSessionTemplate.selectOne(queryId);
				
		return vo;
	}
}
