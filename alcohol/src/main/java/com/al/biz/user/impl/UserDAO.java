package com.al.biz.user.impl;



import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.al.biz.SqlSessionFactoryBean;
import com.al.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO {

	
	private SqlSession mybatis;
	
	public UserDAO() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
//	 public boolean isIdAvailable(String id) {
//	        Integer count = sqlSession.selectOne("UserDAO.countUserById", id);
//	        return count == 0; // 사용 가능한 경우 true 반환
//	    }
	
	
	// C R U D 부분
	
	// 등록
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
		mybatis.commit(); // 커밋을 통해 sqldata를 온전하게 처리 할 수 있다
	}
	
	// 수정
	public void updateUser(UserVO vo) {
		mybatis.update("UserDAO.updateUser", vo);
		mybatis.commit();
	}
	
	// 삭제
	public void deleteUser(UserVO vo) {
		mybatis.delete("UserDAO.deleteUser.vo");
		mybatis.commit();
	}
	
	// 상세  (id pwd 조회용)
	public UserVO getUser(UserVO vo) {
		
		return (UserVO)mybatis.selectOne("UserDAO.getUser",vo);
	}
	
	
}
