package com.huawei.service;

import java.util.List;

import com.huawei.model.Article;
import com.huawei.util.PageBean;

public interface ArticleService {

	/**
	 * 加载全部的Article
	 * @return
	 */
	List<Article> loadArticles();
	
	/**
	 * 加载全部的Article
	 * @return
	 */
	List<Article> loadArticlesDisplay(Integer display);
	
	/**
	 * 通过type查询文章类别
	 * @return
	 */
	List<Article> loadByType(Integer type);
	
	/**
	 * 通过文章Id查询文章
	 * @param type
	 * @return
	 */
	Article loadById(Integer id);
	
	/**
	 * 文章通过审核
	 * @param artId
	 */
	int passArticle(Integer display,Integer artId);
	
	/**
	 * 查询用户的文章
	 * @param userId
	 * @return
	 */
	List<Article> loadArticleUser(Integer userId);
	
	/**
	 * 分页查询
	 * @param curPage
	 * @return
	 */
	PageBean<Article> loadByPage(int currentPage,int display);
	
	/**
	 * 保存文章
	 * @param article
	 * @return
	 */
	int saveArticle(Article article);
	
	/**
	 * 删除文章
	 * @param article
	 * @return
	 */
	int deleteArticleById(Integer artId);
}