package com.wally.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wally.dto.User;
import com.wally.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;

	@RequestMapping("/userList")
	public String userList(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "user/userList";
	}

	@RequestMapping("/register")
	public String register(HttpServletRequest request, Model model) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String idCard = request.getParameter("idCard");
		String phone = request.getParameter("phone");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setIdCard(idCard);
		user.setPhone(phone);
		userService.register(user);
		model.addAttribute("msg", "注册成功");
		model.addAttribute("user", user);
		return "user/userList";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		return "user/login";
	}

}