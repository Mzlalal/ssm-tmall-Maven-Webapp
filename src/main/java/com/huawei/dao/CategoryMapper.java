package com.huawei.dao;

import java.util.List;

import com.huawei.model.Category;

public interface CategoryMapper {

	/**
	 * 获取所有的文章类别
	 * @return
	 */
	List<Category> findAllCategory();
	
	/**
	 * 保存分类
	 */
	void saveCategory(Category cate);
	
	/**
	 * 更新分类
	 */
	void updateCategory(Category cate);
	
	/**
	 * 删除分类
	 */
	void deleteCategoryById(Integer id);
	
	/**
	 * 通过ID查找Category
	 * @param id
	 * @return
	 */
	Category findCategoryById(Integer id);
	
	void batchDeleteCategory(int[] array);
}
