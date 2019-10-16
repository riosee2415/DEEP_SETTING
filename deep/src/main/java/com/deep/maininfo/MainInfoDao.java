package com.deep.maininfo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainInfoDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
 
	public List<MainInfoVo> getList() {
		
		String queryId = "MAININFO.MAININFO_LIST";
		return sqlSessionTemplate.selectList(queryId);
	}
	
	
}
