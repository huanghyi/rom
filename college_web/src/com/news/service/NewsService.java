package com.news.service;

import java.util.List;

import com.news.entity.News;

public interface NewsService {
	/**
	 * 计数
	 * @return
	 */
	public int count();
	/**
	 * 计算总页数
	 * @param currPageNo
	 * @param pageSize
	 * @return
	 */
	public List<News> pading(Integer currPageNo,Integer pageSize);
	public List<News> limit(Integer currenPage, Integer pageSize);
}
