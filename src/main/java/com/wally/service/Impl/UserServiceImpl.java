package com.wally.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wally.dao.UserDao;
import com.wally.dto.User;
import com.wally.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	@Override
	public User getUserById(int userId) {
		return userDao.selectByPrimaryKey(userId);
	}

	@Override
	public User getUserByUsername(String username) {
		return userDao.selectByUsername(username);
	}

}
