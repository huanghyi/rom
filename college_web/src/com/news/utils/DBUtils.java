package com.news.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.junit.Test;

public class DBUtils {
	public static Connection conn = null;
	public static PreparedStatement ps = null;
	public static ResultSet rs = null;
	// 存储配置文件的mep集合
	private static final Properties PR = new Properties();
	static {
		InputStream is = DBUtils.class.getResourceAsStream("/db.properties");
		try {
			PR.load(is);// 通过流把配置文件内容加载到集合
			Class.forName(PR.getProperty("driver"));
		} catch (IOException e) {

			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
	}

	/**
	 * 连接数据库的方法
	 */
	@Test
	public static Connection getConnection() {

		try {
			conn = DriverManager.getConnection(PR.getProperty("url"), PR.getProperty("username"),
					PR.getProperty("password"));

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return conn;
	}

	/**
	 * 关闭连接的方法
	 */
	public static void closeAll() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}
}
