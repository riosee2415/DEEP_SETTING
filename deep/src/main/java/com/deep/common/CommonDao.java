package com.deep.common;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

/**
 * @author sanghoyun
 *
 */
@Repository("commonDao")
public class CommonDao {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonDao.class);
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : List<CommonVO>
	 * @description	: input code Data validating to database
	 */
	public List<CommonVO> getCommonData(Map param)
	{
		String queryId = "COMMON.GET_CODE_DATA";
		
		List<CommonVO> list = sqlSessionTemplate.selectList(queryId, param);

		return list;
	}
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board Information
	 */
	public CommonVO getCodeDetail(Map param)
	{
		String queryId = "COMMON.GET_CODE_DETAIL";
		
		CommonVO codeData = sqlSessionTemplate.selectOne(queryId, param);
		
		return codeData;
	}
	
	
}
