package com.deep.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.deep.common.CommonVO;


/**
 * @author sanghoyun
 *
 */
@Repository("boardDao")
public class BoardDao {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDao.class);

	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board List what type
	 */
	public List<BoardVO> getBoardList(Map param)
	{
		String queryId = "BOARD.GET_BOARD_LIST";
		
		List<BoardVO> list = sqlSessionTemplate.selectList(queryId, param);
		logger.debug("BOARD DATA SIZE : {}", list.size());
		
		return list;
	}
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board List Count
	 */
	public int getBoardCount(Map param)
	{
		String queryId = "BOARD.GET_BOARD_COUNT";
		
		int pageSize = sqlSessionTemplate.selectOne(queryId, param);
		
		return pageSize;
	}

	
	/**
	 * @Author : DEV_YUN
	 * @return : writeAction (tiles)
	 * @description : Insert Database Action
	 */
	public int writeAction(Map param)
	{
		String queryId = "BOARD.INSERT_BOARD_CONTENTS";
		
		return sqlSessionTemplate.insert(queryId, param);
	}

	

}
