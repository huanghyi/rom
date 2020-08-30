package com.news.test;

import java.util.List;

import org.junit.Test;

import com.news.dao.NewsDao;
import com.news.dao.impl.NewsDaoImpl;
import com.news.entity.News;

public class TestSelect{
	public static void main(String[] args) {
		NewsDaoImpl nd = new NewsDaoImpl();
		List<News> newsList = nd.selectAll();
		for (News n : newsList) {
			System.out.println(n);
		}
	}
	@Test
	public void TestInsert() {
		int result=0;
		NewsDao newsDao=new NewsDaoImpl();
		News news=new News();
		news.setTitle("大S万不可");
		news.setContent("汪小菲和大 s可算是闪婚了，两人在安以轩的生日会上一见钟情，大 s说第一眼见到汪小菲，就觉得会嫁给他，给他生孩子，女人的直觉好可怕！四、见面时，二人便订婚，半年后举行婚礼。");
		result=newsDao.insert(news);
		if(result>0) {
			System.out.println("成功");
		}else {
			System.out.println("失败");
		}
	
	
	}
}
