package com.huawei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huawei.model.User;
import com.huawei.service.UserService;
import com.huawei.util.MvcUtils;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserService userService;
	

	/**
	 * 显示所有用户
	 * @param model
	 * @return
	 */
	@RequestMapping("/showUser")
	public String showUser(Model model){
		List<User> users = userService.loadUsers();
		model.addAttribute("users", users);
		return "user/userList";
	}

	/**
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/searchUser")
	public String searchUser(Model model) {
		return "article/articleMore";
	}
	
	/**
	 * 跳转至后台登录页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/goToLogin")
	public String goToLogin(Model model) {
		return "sys/login";
	}
	
	/**
	 * 用户登录检查
	 * @param req
	 * @param user
	 * @return
	 */
	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest req, User user) {
		// 对比验证码
		String code = req.getParameter("code") == null ? "" : req.getParameter("code");
		// 获取保存在session的验证码
		String rand = MvcUtils.getRand(req);
		// 获取用户名
		if (user.getUserName() == null || user.getUserPwd().trim().equals("")) {
			req.setAttribute("msg", "用户名不能为空！");
			return "sys/login";
		}
		// 获取密码
		if (user.getUserName() == null || user.getUserPwd().equals("")) {
			req.setAttribute("msg", "密码不能为空!");
			return "sys/login";
		}
		// 对比验证码
		if (code.equals(rand)) {
			if (userService.isValidLoginUser(user,req)) {
				User user1 = (User)req.getSession().getAttribute("user");
				//判断用户是否为管理员, true返回至后台管理页面 ，false返回至前台页面
				if(user1.getUserType() == 2){
					return "redirect:/userController/goToMain";
				}
				return "redirect:../index";
			} else {
				req.setAttribute("msg", "用户名或请重新登录!");
				return "sys/login";
			}
		} else {
			req.setAttribute("msg", "验证码有误!");
			return "sys/login";
		}
	}
	
	/**
	 * 条状至注册页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/registerUser")
	public String registerUser(Model model){
		return "user/register";
	}
	
	/**
	 * 保存用户信息
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping("/saveUser")
	public String saveUser(Model model ,User user){
		// 判断传进来的用户是否为空
		if(user != null) {
			// 接受数据库返回值
			int res = userService.saveUser(user);
			if(res == 1) {
				model.addAttribute("msg","添加用户成功！");
				return "util/success";
			}else {
				model.addAttribute("msg","添加用户失败！");
				return "util/error";
			}
		}
		model.addAttribute("msg","添加用户失败！");
		return "util/error";
	}
	
	/**
	 * 更新用户信息
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(Model model,User user){
		if(user != null){
			int res = userService.updateUser(user);
			if(res == 1){
				//成功后跳转至主页
				this.refresh(model);
				return "user/userList";
			}else {
				model.addAttribute("msg","修改用户失败！");
				return "util/error";
			}
		} 
		model.addAttribute("msg","修改用户失败！");
		return "util/error";
	}
	
	/**
	 * 修改页面跳转并查询所需要修改的用户属性
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("/editUser")
	public String editUser(@RequestParam("userId")Integer userId, Model model){
		if(userId != 0) {
			User user = userService.queryUserById(userId);
			model.addAttribute("Uuser",user);
			return "user/updateUser";
		}
		model.addAttribute("msg","修改的ID不存在");
		return "util/error";
	}
	
	/**
	 * 删除用户信息
	 * @param model
	 * @param userId
	 * @return
	 */
	@RequestMapping("/deleteUser")
	public String deleteUser(Model model , @RequestParam("userId")Integer userId){
		if(userId != 0 ) {
			int res = userService.deleteUser(userId);
			if(res == 1) {
				this.refresh(model);
				return "user/userList";
			} else {
				model.addAttribute("msg","删除的ID不存在");
				return "util/error";
			}
		}
		model.addAttribute("msg","删除的ID不存在");
		return "util/error";
	}
	
	/**
	 * 根据用户id批量删除用户
	 * @param model
	 * @param ids
	 * @return
	 */
	@RequestMapping("batchDelete")
	public String batchDelete(Model model ,Integer[] ids){
		if(ids.length != 0){
			for(int i : ids){
				userService.deleteUser(i);
			}
			// 删除成功后跳至主页
			this.refresh(model);
			return "user/userList";
		}
		return"util/error";
	}
	
	/**
	 * 刷新数据库用户信息
	 * @param model
	 */
	public void refresh(Model model){
		List<User> users = userService.loadUsers();
		model.addAttribute("users", users);
	}
	
	/**
	 * 注销用户
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/cancellation")
	public String cancellation(Model model, HttpSession session) {
		// 清空session
		session.removeAttribute("user");
		return "sys/login";
	}
	
	@RequestMapping("goToMain")
	public String goToMain(Model model) {
		return "sys/main";
	}
}