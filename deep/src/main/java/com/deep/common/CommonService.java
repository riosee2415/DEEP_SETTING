package com.deep.common;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


/**
 * @author sanghoyun
 *
 */
@Service("commonService")
public class CommonService {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonService.class);
	
	@Resource(name = "commonDao")
	private CommonDao cDao;
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: redirect : List<CommonVO>
	 * @description	: input code Data validating to database
	 */
	public List<CommonVO> getCommonData(Map param)
	{
		return cDao.getCommonData(param);
	}
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board Information
	 */
	public CommonVO getCodeDetail(Map param)
	{
		return cDao.getCodeDetail(param);
	}
	
	
	
}
