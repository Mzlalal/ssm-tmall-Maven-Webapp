package com.huawei.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huawei.dao.UserMapper;
import com.huawei.model.User;
import com.huawei.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	/**
	 * 加载所有用户信息
	 */
	public List<User> loadUsers() {
		return userMapper.queryAll();
	}

	/**
	 * 判断用户是否登录
	 */
	public boolean isValidLoginUser(User user, HttpServletRequest req) {
			// 获取登录名 密码
			String user_name = user.getUserName().trim();
			String user_pwd = user.getUserPwd();
			if (!user_name.equals("") && !user_pwd.equals("")) {
				// 登陆返回统计数量 只有一条记录才能进入
				List<User> userList = userMapper.queryByName(user_name, user_pwd);
				if (userList.size() == 1) {
					req.getSession().setAttribute("user", userList.get(0));
					return true;
				}
				req.setAttribute("msg", "用户名或密码有误!");
				return false;
			} else {
				req.setAttribute("msg", "用户名与密码不能为空!");
				return false;
			}
	}

	/**
	 * 保存用户信息
	 */
	public int saveUser(User user) {
		if(user != null) {
			userMapper.saveUser(user);
			return 1;
		}
		return 0;
	}

	/**
	 * 修改用户信息
	 */
	public int updateUser(User user) {
		if(user != null) {
			userMapper.updateUser(user);
			return 1;
		}
		return 0;
	}

	/**
	 * 根据用户ID查询用户信息
	 */
	public User queryUserById(Integer userId) {
		if(userId != 0) {
			User user = userMapper.queryById(userId);
			return user;
		}
		return null;
	}

	/**
	 * 根据用户ID删除用户信息-
	 */
	public int deleteUser(Integer userId) {
		if(userId != 0) {
			userMapper.deleteUserById(userId);
			return 1;
		}
		return 0;
	}

}