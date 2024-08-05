package com.al.biz.user.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.al.biz.user.UserService;
import com.al.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource(name="userDAO")
	//private BoardDAO boardDAO;
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		
	}

	@Override
	public void insertUser(UserVO vo) {
		
		userDAO.insertUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		
		userDAO.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		
		userDAO.deleteUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		
		return userDAO.getUser(vo);
	}

}




