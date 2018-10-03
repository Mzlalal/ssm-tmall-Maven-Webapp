package com.huawei.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huawei.model.Article;

public interface ArticleMapper {

	/**
	 * 查询不同审核级别所有Article
	 * 
	 * @return
	 */
	List<Article> queryDisplay(Integer display);

	/**
	 * 查询所有Article
	 * 
	 * @return
	 */
	List<Article> queryAll();

	/**
	 * 通过文章类别查询文章
	 * 
	 * @param type
	 * @return
	 */
	List<Article> queryByType(Integer type);

	/**
	 * 通过文章Id查询文章
	 * 
	 * @param type
	 * @return
	 */
	Article queryById(Integer id);

	/**
	 * 保存文章信息
	 * 
	 * @param article
	 * @return
	 */
	int saveArticle(Article article);

	/**
	 * 文章通过审核
	 * 
	 * @param artId
	 * @return
	 */
	int passArticle(@Param("display")Integer display,@Param("artId")Integer artId);
	
	/**
	 * 查询用户的文章
	 * @param userId
	 * @return
	 */
	List<Article> queryArticleUser(Integer userId);
	
	/**
	 * 获取文章总行数
	 * @return
	 */
	int selectCount();
	
	List<Article> loadByPage(HashMap<String, Object> map);
	
	/**
	 * 删除文章
	 * @param artId
	 * @return
	 */
	int deleteArticleById(Integer artId);
	
}