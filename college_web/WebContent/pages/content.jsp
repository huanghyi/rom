<%@ page language="java"
	import="com.news.service.NewsService,com.news.serviceimpl.NewsServiceImpl,com.news.utils.College,com.news.dao.impl.NewsDaoImpl,java.util.List,com.news.entity.News"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>寒语学院</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/static/css/style.css">

</head>

<body>
	<!-- 头部导航部分 -->
	<header>
		<!-- 导航 -->
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- 小屏幕导航按钮和logo -->
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="../index.jsp" class="navbar-brand">Hanyu Admin</a>
				</div>
				<!-- 导航右 -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="../index.jsp"><i class="icon-home"></i>&nbsp;&nbsp;后台首页</a></li>
						<li><a href="user_list.jsp"><i class="icon-user"></i>&nbsp;&nbsp;用户管理</a></li>
						<li class="active"><a href="content.jsp"><i
								class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
						<li><a href="tag.jsp"><i class="icon-tags"></i>&nbsp;&nbsp;标签管理</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a id="dLabel" type="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								admin <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dLabel">
								<li><a href="../index.jsp"><i class="icon-screenshot"></i>&nbsp;&nbsp;前台首页</a></li>
								<li><a href="../index.jsp"><i class="icon-user"></i>&nbsp;&nbsp;个人主页</a></li>
								<li><a href="../index.jsp"><i class="icon-cog"></i>&nbsp;&nbsp;个人设置</a></li>
								<li><a href="../index.jsp"><i class="icon-credit-card"></i>&nbsp;&nbsp;账户中心</a></li>
								<li><a href="../index.jsp"><i class="icon-heart"></i>&nbsp;&nbsp;我的收藏</a></li>
							</ul></li>

						<li><a href="#bbs"><i class="icon-off"></i>&nbsp;&nbsp;退出</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-md-2">

				<div class="list-group">
					<a href="user_list.jsp" class="list-group-item active">内容管理</a> <a
						href="content_post.jsp" class="list-group-item">添加内容</a>
				</div>
			</div>
			<div class="col-md-10">
				<div class="page-header">
					<h1>内容管理</h1>
				</div>
				<ul class="nav nav-tabs">
					<li class="active"><a href="user_list.jsp active">内容管理</a></li>
					<li><a href="content_post.jsp">添加内容</a></li>
				</ul>
				<table class="table">
					<thead>
						<tr>
							<th>文章标题</th>
							<th>作者</th>
							<th>发布时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<%
							String currPageNo = request.getParameter("currPageNo");
							NewsService ns = new NewsServiceImpl();
							College college = new College();
							college.setTotalCount(ns.count());
							if (currPageNo != null && !"".equals(currPageNo)) {
								try {
									college.setCurrPageNo(Integer.parseInt(currPageNo));
								} catch (Exception e) {
									college.setCurrPageNo(1);
								}
							}
							college.list = ns.pading(college.pageNo, college.getPageSize());
							for (int i = 0; i < college.list.size(); i++) {
								News news = college.list.get(i);
						%>
						<tr>
							<th scope="row"><%=news.getTitle()%></th>
							<td><%=news.getAuthor()%></td>
							<td><%=news.getCreateTime()%></td>
							<td>
								<div role="presentation" class="dropdown">
									<button class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" href="#" role="button"
										aria-haspopup="true" aria-expanded="false">
										操作 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">编辑</a></li>
										<li><a href="#">删除</a></li>
										<li><a href="#">全局置顶</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<!-- 分页 -->
				<nav class="pull-right">
					<ul class="pagination">
						<%
							if (college.getCurrPageNo() <= 1) {
						%>
						<li class="disabled"><a href="content.jsp?currPageNo=1"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						<%
							} else {
						%>

						<li><a href="content.jsp?currPageNo=1" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<%
							}
						%>
						<%
							for (int i = 1; i <= college.getTotalPageCount(); i++) {
								if (i == college.getCurrPageNo()) {
						%>
						<li class="active"><a href="content.jsp?currPageNo=<%=i%>"><%=i%></a></li>
						<%
							} else {
						%>
						<li><a href="content.jsp?currPageNo=<%=i%>"><%=i%></a></li>
						<%
							}
						%>
						<%
							}
						%>
						<%
							if (college.getCurrPageNo() == college.getTotalPageCount()) {
						%>
						<li class="disabled"><a
							href="content.jsp?currPageNo=<%=college.getTotalPageCount()%>"><span
								aria-hidden="true">&raquo;</span></a></li>
						<%
							} else {
						%>
						<li><a
							href="content.jsp?currPageNo=<%=college.getTotalPageCount()%>"><span
								aria-hidden="true">&raquo;</span></a></li>
						<%
							}
						%>

						<label style="display: inline-flex; margin: 5px 11px">跳转到第：
							<form action="content.jsp">
								<input name="currPageNo" style="width: 63px" /><span>页</span>
								<button type="submit">确定</button>
							</form>
						</label>
					</ul>
				</nav>

			</div>
		</div>
	</div>


	<!-- footer -->
	<footer>
		<div class="container">
			<div class="row wow lightSpeedInLeft">
				<div class="col-md-12">
					<p>Copuright &copy;2018-2020 www.hanyu.com 呼ICP2344号-9</p>
				</div>
			</div>
		</div>
	</footer>
</body>
<script src="../static/js/jquery-3.5.1.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>


</html>