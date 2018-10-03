package com.huawei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huawei.model.User;

public interface UserMapper {

	/**
	 * 查询所有user
	 * @return
	 */
	List<User> queryAll();

	/**
	 * 通过id查询用户
	 * @param id
	 * @return
	 */
	User queryById(Integer id);
	
	/**
	 * 通过用户名和密码查询用户信息
	 * @param user_name
	 * @param user_pwd
	 * @return
	 */
	List<User> queryByName(@Param("user_name")String user_name,@Param("user_pwd")String user_pwd);
	
	/**
	 * 保存用户
	 * @param user
	 * @return
	 */
	int saveUser(User user);
	
	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	int updateUser(User user);
	
	/**
	 * 删除用户
	 * @param userId
	 * @return
	 */
	int deleteUserById(@Param("userId")Integer userId);
	
	/**
	 * 根据用户名查询用户信息
	 * @param user_name
	 * @return
	 */
	List<User> userLikeNameQuery(@Param("user_name")String user_name);
	
}