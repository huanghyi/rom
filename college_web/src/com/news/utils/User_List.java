package com.news.utils;

import java.util.ArrayList;
import java.util.List;

import com.news.entity.News;

public class User_List {
	// 当前页码
	private int currenPage = 1;
	// 每页显示的记录数
	private int pageSize = 3;
	// 总页数
	private int totalpageCount;
	// 总记录数
	private int totalCount;
	// 每页开始的第一条的索引
	public Integer pageNo = 0;
	// 每页新闻集合
	public List<News> list = new ArrayList<News>();

	/**
	 * @return the currenPage
	 */
	public int getCurrenPage() {
		return currenPage;
	}

	/**
	 * 判断是否是最后一页和第一页，计算当前页第一条开始数据的索引
	 */
	public void setCurrenPage(int currenPage) {
		//最小页码不能为负数
		currenPage=currenPage<=0?1:currenPage;
		//最大页码不能超过总页码
		currenPage=currenPage>totalpageCount?totalpageCount:currenPage;
		//当前页开始的第一条数据的索引等于当前页码-1乘以每页条数
		this.pageNo=(currenPage-1)*this.pageSize;
		this.currenPage = currenPage;
	}

	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the totalpageCount
	 */
	public int getTotalpageCount() {
		return totalpageCount;
	}

	/**
	 * @param totalpageCount the totalpageCount to set
	 */
	public void setTotalpageCount(int totalpageCount) {
		this.totalpageCount = totalpageCount;
	}

	/**
	 * @return the totalCount
	 */
	public int getTotalCount() {
		return totalCount;
	}

	/**
	 * 计算总页码
	 */
	public void setTotalCount(int totalCount) {
		if(totalCount>0) {
	
			this.totalCount = totalCount;
			int tatalPageCount=totalCount%this.pageSize==0?totalCount/this.pageSize:(totalCount/this.pageSize+1);		
			this.setTotalpageCount(tatalPageCount);
		}
		
	}


}
