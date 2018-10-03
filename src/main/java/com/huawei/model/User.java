package com.huawei.model;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	// Fields

	private Integer userId;
	private String userName;
	private String userPwd;
	private Integer userType;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", userType=" + userType
				+ "]";
	}
}