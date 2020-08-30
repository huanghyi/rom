<%@ page language="java"
	import="com.news.dao.NewsDao,com.news.dao.impl.NewsDaoImpl,com.news.entity.News"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		NewsDao newsDao = new NewsDaoImpl();
		request.setCharacterEncoding("utf8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		News news = new News();
		news.setTitle(title);
		news.setContent(content);
		int flag = newsDao.insert(news);
		if (flag > 0) {
			request.getRequestDispatcher("pages/content.jsp").forward(request, response);
		}
	%>
</body>
</html>