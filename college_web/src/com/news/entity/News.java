package com.news.entity;

import java.util.Date;

public class News {
	private int id;
	private String title;
	private String content;
	private String desc;
	private String author;
	private int new_type_id;
	private Date createTime;
	private Date updateTime;
	private String small_img;
	private String middle_img;
	private String large_img;
	private String sub_title;
	private String email;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * @return the desc
	 */
	public String getDesc() {
		return desc;
	}
	/**
	 * @param desc the desc to set
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}
	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}
	/**
	 * @param author the author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
	}
	/**
	 * @return the new_type_id
	 */
	public int getNew_type_id() {
		return new_type_id;
	}
	/**
	 * @param new_type_id the new_type_id to set
	 */
	public void setNew_type_id(int new_type_id) {
		this.new_type_id = new_type_id;
	}
	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	/**
	 * @return the small_img
	 */
	public String getSmall_img() {
		return small_img;
	}
	/**
	 * @param small_img the small_img to set
	 */
	public void setSmall_img(String small_img) {
		this.small_img = small_img;
	}
	/**
	 * @return the middle_img
	 */
	public String getMiddle_img() {
		return middle_img;
	}
	/**
	 * @param middle_img the middle_img to set
	 */
	public void setMiddle_img(String middle_img) {
		this.middle_img = middle_img;
	}
	/**
	 * @return the large_img
	 */
	public String getLarge_img() {
		return large_img;
	}
	/**
	 * @param large_img the large_img to set
	 */
	public void setLarge_img(String large_img) {
		this.large_img = large_img;
	}
	/**
	 * @return the sub_title
	 */
	public String getSub_title() {
		return sub_title;
	}
	/**
	 * @param sub_title the sub_title to set
	 */
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	public News(int id, String title, String content, String desc, String author, int new_type_id, Date createTime,
			Date updateTime, String small_img, String middle_img, String large_img, String sub_title, String email) {
	
		this.id = id;
		this.title = title;
		this.content = content;
		this.desc = desc;
		this.author = author;
		this.new_type_id = new_type_id;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.small_img = small_img;
		this.middle_img = middle_img;
		this.large_img = large_img;
		this.sub_title = sub_title;
		this.email = email;
	}
	public News() {
		
	}
	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", content=" + content + ", desc=" + desc + ", author=" + author
				+ ", new_type_id=" + new_type_id + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", small_img=" + small_img + ", middle_img=" + middle_img + ", large_img=" + large_img
				+ ", sub_title=" + sub_title + ", email=" + email + "]";
	}
	
	

}
