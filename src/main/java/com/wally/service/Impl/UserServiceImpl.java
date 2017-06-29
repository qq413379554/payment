package com.wally.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wally.dao.IUserDao;
import com.wally.dto.User;
import com.wally.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	@Resource
	private IUserDao userDao;
	
	public User getUserById(int userId) {
		return userDao.selectByPrimaryKey(userId);
	}

}
