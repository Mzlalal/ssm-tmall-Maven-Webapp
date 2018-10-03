package com.huawei.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.huawei.model.User;

public interface UserService {

	/**
	 * 加载全部的user
	 * @return
	 */
	List<User> loadUsers();
	
	/**
	 * 判断用户是否登陆
	 * @param user
	 * @return
	 */
	public boolean isValidLoginUser(User user,HttpServletRequest req);
	
	/**
	 * 保存用户信息
	 * @param user
	 * @return
	 */
	int saveUser(User user);
	
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	int updateUser(User user);
	
	/**
	 * 根据用户ID删除用户信息
	 * @param userId
	 * @return
	 */
	int deleteUser(Integer userId);
	
	/**
	 * 根据用户ID查询用户信息
	 * @param userId
	 * @return
	 */
	User queryUserById(Integer userId);
}