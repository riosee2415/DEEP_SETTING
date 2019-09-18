package com.deep.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.deep.common.CommonVO;

/**
 * @author sanghoyun
 *
 */
@Service("boardService")
public class BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardService.class);
	
	@Resource(name = "boardDao")
	private BoardDao bDao;
	
	
	
	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board List what type
	 */
	public List<BoardVO> getBoardList(Map param)
	{
		return bDao.getBoardList(param);
	}

	/**
	 * @Author 		: DEV_YUN
	 * @return		: List<BoardVO>
	 * @description	: get Board List Count
	 */
	public int getBoardCount(Map param)
	{
		return bDao.getBoardCount(param);
	}
	
	
	
	
	/**
	 * @Author : DEV_YUN
	 * @return : writeAction (tiles)
	 * @description : Insert Database Action
	 */
	public int writeAction(Map param)
	{
		return bDao.writeAction(param);
	}

	
	
	
}
