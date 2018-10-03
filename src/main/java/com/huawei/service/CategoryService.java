package com.huawei.service;

import java.util.List;

import com.huawei.model.Category;

public interface CategoryService {
	/**
	 * 查询所有分类
	 * @return
	 */
	List<Category> findAllCategory();
	
	/**
	 * 保存分类
	 * @return 0 失败 1 成功
	 */
	int saveCategory(Category cate);
	
	/**
	 * 更新分类
	 * @return 0 失败 1 成功
	 */
	int updateCategory(Category cate);
	
	/**
	 * 删除分类
	 * @return 0 失败 1 成功
	 */
	int deleteCategoryById(Integer id);
	
	int batchDeleteCategory(int[] array);
}
