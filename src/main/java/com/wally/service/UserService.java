package com.wally.service;

import com.wally.dto.User;

public interface UserService {
	public User getUserById(int userId);
	public User getUserByUsername(String username);
	public int register(User user);
}
