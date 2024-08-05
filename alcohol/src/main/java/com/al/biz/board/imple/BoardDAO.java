package com.al.biz.board.imple;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.al.biz.board.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<BoardVO> getBoardList(BoardVO vo){
		System.out.println("==> Mybatis로 getBoardList() 기능처리");
		return mybatis.selectList("BoardDAO.BoardList", vo);
	}
	
	public BoardVO getBoard (BoardVO vo ) {
		System.out.println("==> Mybatis로 Board() 기능처리");
		return mybatis.selectOne("BoardDAO.Board", vo);
	}

    public void incrementVisitCount(int idx) {
        System.out.println("==> Mybatis로 incrementVisitCount() 기능처리");
        mybatis.update("BoardDAO.incrementVisitCount", idx);
    }
	
	public int getTotalCount() {
		System.out.println("==> Mybatis로 getTotalCount() 기능처리");
		return mybatis.selectOne("BoardDAO.getTotalCount");
	}
	
	public void insertBoard(BoardVO vo) {
		System.out.println("==> Mybatis로 insertcomBoard() 기능 처리");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	
	public void deleteBoard(BoardVO vo) {
		System.out.println("==> Mybatis로 deleteBoard() 기능처리");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}
	
	public void updateBoard(BoardVO vo) {
		System.out.println("==> Mybatis로 updateBoard() 기능처리");
		mybatis.update("BoardDAO.updateBoard", vo);
	}

}

