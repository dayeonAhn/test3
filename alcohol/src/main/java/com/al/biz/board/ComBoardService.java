package com.al.biz.board;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


public interface ComBoardService {
	
	// 글 목록 조회
	//List<ComBoardVo> getComBoardList(ComBoardVo vo);
	
	// 글 상제 조회
	ComBoardVo getComBoard(ComBoardVo vo);
	
	// 글 목록 조회(페이징용)
	List<ComBoardVo> getComBoardList(ComBoardVo vo, int page, int pageSize);
	int getTotalCount();
	
	// 글등록
	void insertComBoard(ComBoardVo vo);
	
	// 글 삭제
	void deleteComBoard(ComBoardVo vo);
	
	// 글 수정
	void updateComBoard(ComBoardVo vo);



}
