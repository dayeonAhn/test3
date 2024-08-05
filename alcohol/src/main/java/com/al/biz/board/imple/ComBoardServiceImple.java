package com.al.biz.board.imple;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.al.biz.board.ComBoardService;
import com.al.biz.board.ComBoardVo;


@Service("comboardService")
public class ComBoardServiceImple implements ComBoardService {
	
	

	@Autowired
	private ComBoardDAO boardDAO;
	
	// 글 목록 보기
//	@Override
//	public List<ComBoardVo> getComBoardList(ComBoardVo vo) {
//		System.out.println("getComBoardList " + boardDAO.getComBoardList(vo));
//		List<ComBoardVo> comboardList = boardDAO.getComBoardList(vo);
//		return comboardList;
//	}
	
	@Override
	public List<ComBoardVo> getComBoardList(ComBoardVo vo, int page, int pageSize) {
	    int startIndex = (page - 1) * pageSize;

	    Map<String, Object> params = new HashMap<>();
	    params.put("startIndex", startIndex);
	    params.put("pageSize", pageSize);

	    return boardDAO.getComBoardList(params);
	}

	
	// 글 살세 보기
	@Override
	public ComBoardVo getComBoard(ComBoardVo vo) {
		boardDAO.incrementVisitCount(vo.getIdx());
		System.out.println("getComBoardList " + boardDAO.getComBoard(vo));
		return boardDAO.getComBoard(vo);
	}
	
	// 게시물 총 갯수 (페이징용)
	@Override
	public int getTotalCount() {
		return boardDAO.getTotalCount();
	}
	
	//글 등록
	@Override
	public void insertComBoard(ComBoardVo vo) {
		boardDAO.insertComBoard(vo);
	}
	
	//글 삭제
	@Override
	public void deleteComBoard(ComBoardVo vo) {
		boardDAO.deleteComBoard(vo);
	}
	
	//글 수정
	@Override
	public void updateComBoard(ComBoardVo vo) {
		boardDAO.updateComBoard(vo);
	}
	


}