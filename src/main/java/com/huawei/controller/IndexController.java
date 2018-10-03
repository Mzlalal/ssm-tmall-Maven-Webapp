package com.huawei.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huawei.service.UserService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	private UserService userService;

	@RequestMapping("/navigation")
	public String showNavigation(Model model){
		return "util/navigation";
	}
	
	@RequestMapping("/leftNavigation")
	public String showLeftNavigation(Model model){
		return "sys/leftNavigation";
	}

	@RequestMapping("/rand")
	public String searchUser(Model model) {
		return "util/rand";
	}
	
}