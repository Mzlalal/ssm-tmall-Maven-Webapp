package com.huawei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huawei.model.Article;
import com.huawei.model.Category;
import com.huawei.service.CategoryService;

@Controller
@RequestMapping("/release")
public class ReleaseController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/loadRelease")
	public String loadRelease(Model model){
		this.getCategory(model);
		return "release1/addRelease";
	}
	
	@RequestMapping("/addRelease")
	public String addRelease(Model model, Article article){
		System.out.println(article);
		return "";
	}
	
	public void getCategory(Model model){
		List<Category> cates = categoryService.findAllCategory();
		model.addAttribute("cates", cates);
	}
}
