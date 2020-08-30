package com.news.serviceimpl;

import java.util.List;

import com.news.dao.NewsDao;
import com.news.dao.impl.NewsDaoImpl;
import com.news.entity.News;
import com.news.service.NewsService;

public class NewsServiceImpl implements NewsService {
NewsDao nsDao=new NewsDaoImpl();
	@Override
	public int count() {
		
		return nsDao.count();
	}

	@Override
	public List<News> pading(Integer currPageNo, Integer pageSize) {
		
		return nsDao.pading(currPageNo, pageSize);
	}

	@Override
	public List<News> limit(Integer currenPage, Integer pageSize) {
		
		return nsDao.limit(currenPage, pageSize);
	}

}
