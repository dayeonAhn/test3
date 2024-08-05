package com.al.biz.board.imple;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.al.biz.board.ComBoardVo;

@Repository
public class ComBoardDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ComBoardVo> getComBoardList(Map<String, Object> params){
		System.out.println("==> Mybatis로 getComBoardList() 기능처리");
		return mybatis.selectList("ComBoardDAO.getComBoardList", params);
	}
	
	public ComBoardVo getComBoard (ComBoardVo vo ) {
		System.out.println("==> Mybatis로 getComBoard() 기능처리");
		return mybatis.selectOne("ComBoardDAO.getComBoard", vo);
	}

    public void incrementVisitCount(int idx) {
        System.out.println("==> Mybatis로 incrementVisitCount() 기능처리");
        mybatis.update("ComBoardDAO.incrementVisitCount", idx);
    }
	
	public int getTotalCount() {
		System.out.println("==> Mybatis로 getTotalCount() 기능처리");
		return mybatis.selectOne("ComBoardDAO.getTotalCount");
	}
	
	public void insertComBoard(ComBoardVo vo) {
		System.out.println("==> Mybatis로 insertcomBoard() 기능 처리");
		mybatis.insert("ComBoardDAO.insertComBoard", vo);
	}
	
	public void deleteComBoard(ComBoardVo vo) {
		System.out.println("==> Mybatis로 deleteComBoard() 기능처리");
		mybatis.delete("ComBoardDAO.deleteComBoard", vo);
	}
	
	public void updateComBoard(ComBoardVo vo) {
		System.out.println("==> Mybatis로 updateComBoard() 기능처리");
		mybatis.update("ComBoardDAO.updateComBoard", vo);
	}

}

