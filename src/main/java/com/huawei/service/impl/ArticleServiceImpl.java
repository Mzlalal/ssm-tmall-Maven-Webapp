package com.huawei.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huawei.dao.ArticleMapper;
import com.huawei.model.Article;
import com.huawei.service.ArticleService;
import com.huawei.util.PageBean;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	ArticleMapper articleMapper;

	public List<Article> loadArticles() {
		return articleMapper.queryAll();
	}
	
	public List<Article> loadArticlesDisplay(Integer display) {
		return articleMapper.queryDisplay(display);
	}

	public List<Article> loadByType(Integer type) {
		return articleMapper.queryByType(type);
	}

	public Article loadById(Integer id) {
		return articleMapper.queryById(id);
	}

	public int saveArticle(Article article) {
		if(article != null) {
			articleMapper.saveArticle(article);
			return 1;
		}
		return 0;
	
	}

	public int passArticle(Integer display,Integer artId) {
		return articleMapper.passArticle(display,artId);
	}
	
	public int deleteArticleById(Integer artId) {
		if(artId != 0){
			articleMapper.deleteArticleById(artId);
			return 1;
		}
		return 0;
	}

	public List<Article> loadArticleUser(Integer userId) {
		return articleMapper.queryArticleUser(userId);
	}

	public PageBean<Article> loadByPage(int currentPage,int display) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		PageBean<Article> pageBean = new PageBean<Article>();
		
		// 当前页数
		pageBean.setCurrentPage(currentPage);
		
		// 总行数
		int totalCount = articleMapper.selectCount();
		
		// 设置总行数
		pageBean.setTotalCount(totalCount);
		
		// 设置条件
		map.put("display", display);
		map.put("start", (currentPage-1)*pageBean.getPageCount());
		map.put("size", pageBean.getPageCount());
		
		// 获取数据
		List<Article> pageData = articleMapper.loadByPage(map);
		pageBean.setPageData(pageData);
		
		return pageBean;
	}


}
