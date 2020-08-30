package com.news.utils;

import java.util.ArrayList;
import java.util.List;

import com.news.entity.News;

public class College {
/**
 * 当前页码
 */
	private int currPageNo=1;
	/**
	 * 页面大小，即每页显示记录数
	 */
    private int pageSize=3;
    /**
     * 记录总数
     */
    private int tatalCount; 
    /**
     * 总页数
     */
    private int totalPageCount; 
 
    public Integer pageNo=0;
    /**
     * 每页新闻集合
     */
   public List<News> list=new ArrayList<News>();
	/**
	 * @return the currPageNo
	 */
	public int getCurrPageNo() {
		return currPageNo;
	}
	/**
	 * @param currPageNo the currPageNo to set
	 */
	public void setCurrPageNo(int currPageNo) {
		//最小页码不能为负数
		currPageNo=currPageNo<=0?1:currPageNo;
		//最大页码不能超过总页数
		currPageNo=currPageNo>totalPageCount?totalPageCount:currPageNo;
		this.pageNo = (currPageNo-1)*this.pageSize;
		this.currPageNo=currPageNo;
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
	 * @return the totalCount
	 */
	public int getTotalCount() {
		return tatalCount;
	}
	/**
	 * @param totalCount the totalCount to set
	 */
	public void setTotalCount(int totalCount) {
		if(totalCount>0) {
	
			this.tatalCount = totalCount;
			int tatalPageCount=totalCount%this.pageSize==0?totalCount/this.pageSize:(totalCount/this.pageSize+1);		
			this.setTotalPageCount(tatalPageCount);
		}
		
	}
	/**
	 * @return the totalPageCount
	 */
	public int getTotalPageCount() {
		return totalPageCount;
	}
	/**
	 * @param totalPageCount the totalPageCount to set
	 */
	public void setTotalPageCount(int totalPageCount) {
	
		this.totalPageCount = totalPageCount;
		
	}
	

	@Override
	public String toString() {
		return "Page [currPageNo=" + currPageNo + ", pageSize=" + pageSize + ", totalCount=" + tatalCount
				+ ", totalPageCount=" + totalPageCount + "]";
	}     
    
}
