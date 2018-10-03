package com.huawei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huawei.model.Category;
import com.huawei.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;
	
	public String findALLCategory(Model model){
		this.getAll(model);
		return "";
	}
	
	@RequestMapping("loadAll")
	public String getAll(Model model){
		List<Category> cates = categoryService.findAllCategory();
		model.addAttribute("cates", cates);
		return "category/categoryList";
	}
	
	@RequestMapping("saveCategory")
	public String saveCategory(Category cate){
		System.out.println(cate);
		int flag = categoryService.saveCategory(cate);
		if (flag == 0) {
			return "util/error";
		}
		return "redirect:loadAll";
	}
	
	@RequestMapping("updateCategory")
	public String updateCategory(Category cate){
		int flag = categoryService.updateCategory(cate);
		if (flag == 0) {
			return "util/error";
		}
		return "redirect:loadAll";
	}
	
	@RequestMapping("deleteCategory")
	public String deleteCategory(Integer cateId){
		int flag = categoryService.deleteCategoryById(cateId);
		if (flag == 0) {
			return "util/error";
		}
		return "redirect:loadAll";
	}
	
	@RequestMapping("batchDelete")
	public String batchDelete(int[] ids){
		int flag = categoryService.batchDeleteCategory(ids);
		if (flag == 0) {
			return "util/error";
		}
		return "redirect:loadAll";
	}
	
}
