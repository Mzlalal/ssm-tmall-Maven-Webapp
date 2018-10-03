package com.huawei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.huawei.dao.CategoryMapper;
import com.huawei.model.Category;
import com.huawei.service.CategoryService;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryMapper categoryMapper;
	
	public List<Category> findAllCategory() {
		List<Category> cates = categoryMapper.findAllCategory();
		return cates;
	}

	public int saveCategory(Category cate) {
		try {
			categoryMapper.saveCategory(cate);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int updateCategory(Category cate) {
		try {
			categoryMapper.updateCategory(cate);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int deleteCategoryById(Integer id) {
		try {
			categoryMapper.deleteCategoryById(id);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int batchDeleteCategory(int[] array) {
		try {
			categoryMapper.batchDeleteCategory(array);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

}
