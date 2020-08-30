<%@ page language="java"
	import="com.news.service.NewsService,com.news.serviceimpl.NewsServiceImpl,com.news.utils.College,com.news.dao.impl.NewsDaoImpl,java.util.List,com.news.entity.News,com.news.utils.User_List"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>寒语学院</title>
<link rel="stylesheet" href="../static/css/bootstrap.min.css">
<link rel="stylesheet" href="../static/css/font-awesome.min.css">
<link rel="stylesheet" href="../static/css/style.css">

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
						<li class="active"><a href="user_list.jsp"><i
								class="icon-user"></i>&nbsp;&nbsp;用户管理</a></li>
						<li><a href="content.jsp"><i class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
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
					<a href="user_list.jsp" class="list-group-item active">用户管理</a> <a
						href="user_search.jsp" class="list-group-item">用户搜索</a> <a href=""
						role="button" class="list-group-item" data-toggle="modal"
						data-target="#myModal">添加用户</a>
				</div>
			</div>
			<div class="col-md-10">
				<div class="page-header">
					<h1>用户管理</h1>
				</div>
				<ul class="nav nav-tabs">
					<li class="active"><a href="user_list.jsp active">用户列表</a></li>
					<li><a href="user_search.jsp">用户搜索</a></li>
					<li><a href="" role="button" data-toggle="modal"
						data-target="#myModal">添加用户</a></li>
				</ul>
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>用户名</th>
							<th>邮箱</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<%
							String currenPage = request.getParameter("currenPage");
							NewsService ns = new NewsServiceImpl();
							User_List uli = new User_List();
							//调用计算总页码的方法将总记录参数传进去
							uli.setTotalCount(ns.count());
							//判断如果当前页不为空且不为空字符串和
							if (currenPage != null && !"".equals(currenPage)) {
								try {//把字符串转换为Integer类型，把当前页码参数传入计算
									uli.setCurrenPage(Integer.parseInt(currenPage));
								} catch (Exception e) {
									//处理异常，如果当前页为空，把1赋值给它
									uli.setCurrenPage(1);
								}
							}
							//?号的参数，分页limit的两个参数，开始的索引和没有显示的条数
							uli.list = ns.limit(uli.pageNo, uli.getPageSize());
							for (int i = 0; i < uli.list.size(); i++) {
								News newsGet = uli.list.get(i);
						%>
						<tr>
							<th scope="row"><%=newsGet.getId()%></th>
							<td><%=newsGet.getAuthor()%></td>
							<td><%=newsGet.getEmail()%></td>
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
										<li><a href="#">锁定</a></li>
										<li><a href="#">修改密码</a></li>
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
							if (uli.getCurrenPage() <= 1) {
						%>
						<li class="disabled"><a href="user_list.jsp?currPageNo=1"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						<%
							} else {
						%>

						<li><a href="user_list.jsp?currPageNo=1"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						<%
							}
						%>
						<%
							for (int i = 1; i <= uli.getTotalpageCount(); i++) {
								if (i == uli.getCurrenPage()) {
						%>
						<li class="active"><a href="user_list.jsp?currenPage=<%=i%>"><%=i%></a></li>
						<%
							} else {
						%>
						<li><a href="user_list.jsp?currenPage=<%=i%>"><%=i%></a></li>
						<%
							}
						%>
						<%
							}
						%>
						<%
							if (uli.getCurrenPage() == uli.getTotalpageCount()) {
						%>
						<li class="disabled"><a
							href="user_list.jsp?currenPage=<%=uli.getTotalpageCount()%>"><span
								aria-hidden="true">&raquo;</span></a></li>
						<%
							} else {
						%>
						<li><a
							href="user_list.jsp?currenPage=<%=uli.getTotalpageCount()%>"><span
								aria-hidden="true">&raquo;</span></a></li>
						<%
							}
						%>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form action="#">
						<div class="form-group">
							<label for="addname">用户名</label> <input type="text" id="addname"
								class="form-control" placeholder="请输入用户名">
						</div>
						<div class="form-group">
							<label for="addpassword">用户密码</label> <input type="text"
								id="addpassword" class="form-control" placeholder="请输入密码">
						</div>
						<div class="form-group">
							<label for="addpasswordagain">确认用户密码</label> <input type="text"
								id="addpasswordagain" class="form-control"
								placeholder="请再次输入用户密码">
						</div>
						<div class="form-group">
							<label for="addemail">邮箱</label> <input type="email"
								name="addemail" id="addemail" class="form-control"
								placeholder="请输入用户邮箱">
						</div>
						<div class="form-group">
							<label for="addgroups">所属用户组</label> <select name=""
								id="addgroups" class="form-control">
								<option value="">限制会员</option>
								<option value="">新手上路</option>
								<option value="">注册会员</option>
								<option value="">中级会员</option>
								<option value="">高级会员</option>
							</select>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交</button>
				</div>
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