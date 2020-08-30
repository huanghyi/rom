package com.news.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.news.dao.NewsDao;
import com.news.entity.News;
import com.news.utils.DBUtils;

public class NewsDaoImpl extends DBUtils implements NewsDao {
	@Override
	public List<News> selectAll() {
		List<News> list = new ArrayList<News>();

		try {
			conn = DBUtils.getConnection();
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT `id`,`title`,`author`,`createTime` FROM `news`");
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			while (rs.next()) {
				News news = new News();
				news.setId(rs.getInt(1));
				news.setTitle(rs.getString("title"));
				news.setAuthor(rs.getString("author"));
				news.setCreateTime(rs.getDate("createTime"));
				list.add(news);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtils.closeAll();
		}
		return list;
	}

	@Override
	public int insert(News news) {
		int flag = 0;

		try {
			conn = DBUtils.getConnection();
			StringBuffer sb = new StringBuffer();
			sb.append("INSERT INTO news (`title`,`content`) VALUES (?,?)");
			ps = conn.prepareStatement(sb.toString());
			// 给？赋值
			ps.setString(1, news.getTitle());
			ps.setString(2, news.getContent());
			flag = ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return flag;
	}

	@Override
	public int count() {
		int count = 0;

		try {
			DBUtils.getConnection();
			StringBuffer sb = new StringBuffer();
			sb.append("select count(1) from news");
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtils.closeAll();
		}

		return count;
	}

	@Override
	public List<News> pading(Integer currPageNo, Integer pageSize) {
		List<News> newList = null;

		try {
			DBUtils.getConnection();
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT `title`,`author`,`createTime` FROM `news` LIMIT ?,?");
			ps = conn.prepareStatement(sb.toString());
			// 给？号赋值
			ps.setInt(1, currPageNo);
			ps.setInt(2, pageSize);
			rs = ps.executeQuery();
			newList = new ArrayList<News>();
			while (rs.next()) {
				News news = new News();
				news.setTitle(rs.getString(1));
				news.setAuthor(rs.getString(2));
				news.setCreateTime(rs.getDate(3));
				newList.add(news);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtils.closeAll();
		}

		return newList;
	}

	@Override
	public List<News> limit(Integer currenPage, Integer pageSize) {
		List<News> limitList=null;		
		try {
			DBUtils.getConnection();
			StringBuffer sb=new StringBuffer();
			sb.append("SELECT `id`,`author`,`email` FROM `news` LIMIT ?,?");
			ps=conn.prepareStatement(sb.toString());
			//给？号赋值
			ps.setInt(1, currenPage);
			ps.setInt(2, pageSize);
			//执行sql语句
			rs=ps.executeQuery();
			limitList=new ArrayList<News>();
			while(rs.next()) {
			News ne=new News();
			ne.setId(rs.getInt(1));
			ne.setAuthor(rs.getString(2));
			ne.setEmail(rs.getString(3));
			limitList.add(ne);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return limitList;
	}


}
