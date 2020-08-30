package com.news.test;

import java.util.List;

import org.junit.Test;

import com.news.entity.News;
import com.news.service.NewsService;
import com.news.serviceimpl.NewsServiceImpl;
import com.news.utils.College;
import com.news.utils.User_List;


public class TestLimt {
	private NewsService newsService = new NewsServiceImpl();

	@Test
	public void testCount() {
		System.out.println("总记录数" + newsService.count());
	}

	@Test
	public void TestPading() {
		College cloo = new College();
		cloo.setTotalCount(newsService.count());
		System.out.println("总记录数" + cloo.getTotalCount());
		System.out.println("每页条数" + cloo.getPageSize());
		System.out.println("总页数" + cloo.getTotalPageCount());
		cloo.setCurrPageNo(3);
		List<News> l = newsService.pading(cloo.getCurrPageNo(), cloo.getPageSize());
		for (News n : l) {
			System.out.println(n);
		}

	}
	@Test
	public void TestUserLimit() {
		User_List ul=new User_List();
		ul.setTotalCount(newsService.count());
		System.out.println("总记录数"+ul.getTotalCount());
		System.out.println("总页数"+ul.getTotalpageCount());
		System.out.println("每页条数"+ul.getPageSize());
		//第2页
		ul.setCurrenPage(2);
		List<News> list=newsService.limit(ul.getCurrenPage(), ul.getPageSize());
		for(News n:list) {
			System.out.println(n);
		}
	}
}
