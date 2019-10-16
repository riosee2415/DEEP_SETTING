package com.deep.board;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deep.common.CommonService;
import com.deep.common.CommonVO;

/**
 * @author sanghoyun
 *
 */
@RequestMapping("board")
@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Resource(name = "boardService")
	private BoardService bService;
	
	@Resource(name = "commonService")
	private CommonService cService;
	
	
	/**
	 * @Author : DEV_YUN
	 * @return : freeBoard (tiles)
	 * @description : page move freeBoard
	 */
	@RequestMapping(path = "/freeBoard", method=RequestMethod.GET)
	public String freeBoardPage(Model model, HttpServletRequest request)
	{
		String page = request.getParameter("page");
		logger.debug("parent pagenation : {}" , page);
		
		PagingVO pVO = new PagingVO();
		pVO.setPage((Integer.parseInt(page) - 1) * 10);
		pVO.setPageLimit(10);
	
		Map<String, Object> param = new HashMap();
		param.put("boardType", "2");
		param.put("page", pVO.getPage());
		param.put("lastPage", pVO.getPageLimit());
		
		List<BoardVO> list = bService.getBoardList(param);
		
		int pageSize = bService.getBoardCount(param);
		pageSize = (pageSize % pVO.getPageLimit() > 0) ? pageSize / pVO.getPageLimit() + 1 : pageSize / pVO.getPageLimit(); 
		
		model.addAttribute("boardList", list);
		model.addAttribute("pageSize", pageSize);
		
		return "freeBoard";
	}
	
	/**
	 * @Author : DEV_YUN
	 * @return : issueBoard (tiles)
	 * @description : page move freeBoard
	 */
	@RequestMapping(path = "/issueBoard", method=RequestMethod.GET)
	public String issueBoardPage(Model model, HttpServletRequest request)
	{
		String page = request.getParameter("page");
		logger.debug("parent pagenation : {}" , page);
		
		PagingVO pVO = new PagingVO();
		pVO.setPage((Integer.parseInt(page) - 1) * 10);
		pVO.setPageLimit(10);
	
		Map<String, Object> param = new HashMap();
		param.put("boardType", "3");
		param.put("page", pVO.getPage());
		param.put("lastPage", pVO.getPageLimit());
		
		List<BoardVO> list = bService.getBoardList(param);
		
		
		int pageSize = bService.getBoardCount(param);
		pageSize = (pageSize % pVO.getPageLimit() > 0) ? pageSize / pVO.getPageLimit() + 1 : pageSize / pVO.getPageLimit(); 
		
		model.addAttribute("boardList", list);
		model.addAttribute("pageSize", pageSize);
		
		return "issueBoard";
	}
	
	
	
	/**
	 * @Author : DEV_YUN
	 * @return : freeBoard (tiles)
	 * @description : page move freeBoard
	 */
	@RequestMapping(path = "getBoardList_ajax")
	public String getBoardList_ajax(Model model, HttpServletRequest request)
	{
		String page = request.getParameter("page");
		logger.debug("parent pagenation : {}" , page);
		
		PagingVO pVO = new PagingVO();
		pVO.setPage((Integer.parseInt(page) - 1) * 10);
		pVO.setPageLimit(10);
	
		Map<String, Object> param = new HashMap();
		param.put("boardType", "2");
		param.put("page", pVO.getPage());
		param.put("lastPage", pVO.getPageLimit());
		
		List<BoardVO> list = bService.getBoardList(param);
		
		int pageSize = bService.getBoardCount(param);
		pageSize = (pageSize % pVO.getPageLimit() > 0) ? pageSize / pVO.getPageLimit() + 1 : pageSize / pVO.getPageLimit(); 
		
		model.addAttribute("boardList", list);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("page", page);
		
		return "board/boardList_ajax";
	}
	
	/**
	 * @Author : DEV_YUN
	 * @return : freeBoard (tiles)
	 * @description : page move freeBoard
	 */
	@RequestMapping(path = "getIssueList_ajax")
	public String getIssueList_ajax(Model model, HttpServletRequest request)
	{
		String page = request.getParameter("page");
		logger.debug("parent pagenation : {}" , page);
		
		PagingVO pVO = new PagingVO();
		pVO.setPage((Integer.parseInt(page) - 1) * 10);
		pVO.setPageLimit(10);
	
		Map<String, Object> param = new HashMap();
		param.put("boardType", "3");
		param.put("page", pVO.getPage());
		param.put("lastPage", pVO.getPageLimit());
		
		List<BoardVO> list = bService.getBoardList(param);
		
		int pageSize = bService.getBoardCount(param);
		pageSize = (pageSize % pVO.getPageLimit() > 0) ? pageSize / pVO.getPageLimit() + 1 : pageSize / pVO.getPageLimit(); 
		
		model.addAttribute("boardList", list);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("page", page);
		
		return "board/boardList_ajax";
	}
	
	/**
	 * @Author : DEV_YUN
	 * @return : writeBoard (tiles)
	 * @description : page move writeBoard
	 */
	@RequestMapping(path = "/writeBoard", method=RequestMethod.GET)
	public String writeBoard(Model model
										,@RequestParam("boardType")String boardType
										,HttpServletRequest request)
	{
		logger.debug("PRESENT BOARD TYPE: {}" , boardType);
		
		Map<String, String> param = new HashMap();
		param.put("UP_CD", "BT001");
		param.put("CODE", boardType);
		
		CommonVO vo = cService.getCodeDetail(param);
		
		model.addAttribute("boardTypeCD", vo.getCode());
		model.addAttribute("boardTypeNM", vo.getData());
		

		Map<String, String> param2 = new HashMap();
		param2.put("UP_CD", "BT001");
		List<CommonVO> list = cService.getCommonData(param2);
		
		model.addAttribute("boardTypeList", list);
				
		
		return "writeBoard";
	}
	
	/**
	 * @Author : DEV_YUN
	 * @return : writeAction (tiles)
	 * @description : Insert Database Action
	 */ 
	@RequestMapping(path = "/writeAction", method=RequestMethod.POST)
	public String writeAction(	Model model
								,@RequestParam("write_boardType")String boardType
								,@RequestParam("write_boardTitle")String boardTitle
								,@RequestParam("write_contents")String boardContents
								,@RequestParam("write_userId")String userId
								,HttpServletRequest request)
	{
		// INSERT DATA TEMPRARY
		logger.debug("BOARDTYPE DATA : {}", boardType);
		logger.debug("BOARDTITLE DATA : {}", boardTitle);
		logger.debug("BOARDCONTENTS : {}", boardContents);
		logger.debug("BOARD USER ID : {}", userId);
		
		Map<String, String> param = new HashMap();
		param.put("boardType", boardType);
		param.put("boardTitle", boardTitle);
		param.put("boardContents", boardContents);
		param.put("userId", userId);
		
		int result = bService.writeAction(param);
		logger.debug("INSERT RESULT : {}", result);
		
		if(result == 1)
		{
			return "freeBoard";
		}
		else 
		{
			return "freeBoard";
		}
	}
	
}
