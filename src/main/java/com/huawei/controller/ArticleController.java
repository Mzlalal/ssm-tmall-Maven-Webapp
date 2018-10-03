package com.huawei.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.huawei.model.Article;
import com.huawei.model.User;
import com.huawei.service.ArticleService;
import com.huawei.service.CategoryService;
import com.huawei.util.MvcUtils;

@Controller
@RequestMapping("/")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/index")
	public String showNavigation(Model model,@RequestParam(defaultValue = "1")int curPage){
		for (int i = 1; i < 4; i++) {
			model.addAttribute("moudle"+i, articleService.loadByType(i));
		}
		model.addAttribute("moudle4", articleService.loadByPage(curPage,2));
		model.addAttribute("types", categoryService.findAllCategory());

		return "article/index";
	}
	
	
	@RequestMapping("/articleDetail")
	public String articleDetail(Model model,Integer id){
		model.addAttribute("details", articleService.loadById(id));
		return "article/articleDetail";
	}
	
	@RequestMapping(value = "/articleMore",method = RequestMethod.GET)
	public String articleMore(Model model,Integer type){
		model.addAttribute("details", articleService.loadByType(type));
		return "article/articleMore";
	}
	
	@RequestMapping("/saveArticle")
	public String saveArticle(Model model, Article article,HttpSession session) {
		int res = articleService.saveArticle(article);
		User user = (User)session.getAttribute("user");
		if(res == 1){
			if(user.getUserType() == 2) {
				return "sys/main";
			} else {
				return "forward:/index";
			}
		}
		model.addAttribute("msg","添加文章失败！");
		return "util/error";
	}
	
	@RequestMapping("batchDelete")
	public String batchDelete(Model model ,Integer[] ids){
		if(ids.length != 0){
			for(int i : ids){
				articleService.deleteArticleById(i);
			}
			// 删除成功后跳至主页
			model.addAttribute("moudle4", articleService.loadArticles());
			return "article/articleList";
		}
		return"util/error";
	}
	
	@RequestMapping("/deleteArticle")
	public String deleteArticle(Model model, Integer artId) {
		int res = articleService.deleteArticleById(artId);
		if(res == 1) {
			model.addAttribute("moudle4", articleService.loadArticles());
			return "article/articleList";
		}
		model.addAttribute("msg","删除文章失败！");
		return "util/error";
	}
	
	@RequestMapping("/checkArticles")
	public String checkArticles(Model model){
		model.addAttribute("checkArticles", articleService.loadArticlesDisplay(1));
		return "article/checkArticles";
	}
	
	@RequestMapping("/passArticle")
	public String passArticle(Integer display,Integer artId){
		int flag = articleService.passArticle(display,artId);
		if(flag == 0){
			return "util/error";
		}
		return "forward:checkArticles";
	}
	
	@RequestMapping("/queryAllActicle")
	public String queryAllActicle(Model model) {
		model.addAttribute("moudle4", articleService.loadArticlesDisplay(2));
		return "article/articleList";
	}
	
	@RequestMapping("/myArticle")
	public String myActicle(Model model,HttpServletRequest req) {
		model.addAttribute("myArticle", articleService.loadArticleUser(MvcUtils.getUser(req).getUserId()));
		return "article/myArticle";
	}
}