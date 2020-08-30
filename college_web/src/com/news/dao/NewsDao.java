package com.news.dao;

import java.util.List;

import com.news.entity.News;

public interface NewsDao {
	/**
	 * 查询内容的方法
	 * @return
	 */
	public List<News> selectAll();
	/**
	 * 添加数据的方法
	 */
	public int insert(News news);
	/**
	 * 统计数据量
	 */
	public int count();
	/**content页面
	 * 分页查询
	 */
	public List<News> pading(Integer currPageNo,Integer pageSize);
	/**
	 * user_list页面分页查询
	 */
	public List<News> limit(Integer currenPage,Integer pageSize);
}
