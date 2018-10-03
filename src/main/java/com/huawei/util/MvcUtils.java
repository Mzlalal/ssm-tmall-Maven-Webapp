package com.huawei.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.huawei.model.User;

public class MvcUtils {

	public static User getUser(HttpServletRequest req) {
		return (User) req.getSession().getAttribute("user");
	}
	
	public static HttpSession getSession(HttpServletRequest req){
		return req.getSession();
	}
	
	public static String getRand(HttpServletRequest req){
		return (String) getSession(req).getAttribute("rand");
	}
	
}
