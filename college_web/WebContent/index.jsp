<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>寒语学院</title>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/static/css/style.css">

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
					<a href="index.jsp" class="navbar-brand">Hanyu Admin</a>
				</div>
				<!-- 导航右 -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp"><i
								class="icon-home"></i>&nbsp;&nbsp;后台首页</a></li>
						<li><a
							href="${pageContext.servletContext.contextPath}/pages/user_list.jsp"><i
								class="icon-user"></i>&nbsp;&nbsp;用户管理</a></li>
						<li><a
							href="${pageContext.servletContext.contextPath}/pages/content.jsp"><i
								class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
						<li><a
							href="${pageContext.servletContext.contextPath}/pages/tag.jsp"><i
								class="icon-tags"></i>&nbsp;&nbsp;标签管理</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a id="dLabel" type="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								admin <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dLabel">
								<li><a href="index.jsp"><i class="icon-screenshot"></i>&nbsp;&nbsp;前台首页</a></li>
								<li><a href="index.jsp"><i class="icon-user"></i>&nbsp;&nbsp;个人主页</a></li>
								<li><a href="index.jsp"><i class="icon-cog"></i>&nbsp;&nbsp;个人设置</a></li>
								<li><a href="index.jsp"><i class="icon-credit-card"></i>&nbsp;&nbsp;账户中心</a></li>
								<li><a href="index.jsp"><i class="icon-heart"></i>&nbsp;&nbsp;我的收藏</a></li>
							</ul></li>

						<li><a href="#bbs"><i class="icon-off"></i>&nbsp;&nbsp;退出</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- 导航 -->

	<!-- 内容 -->
	<div class="container">
		<div class="row">
			<!-- 警告框 -->
			<div class="col-md-12">
				<div class="alert alert-danger alert-dismissible fade in"
					role="alert">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4>Oh snap! You got an error!</h4>
					<p>Change this and that and try again. Duis mollis, est non
						commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem
						nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
					<p>
						<button type="button" class="btn btn-danger">立即修复</button>
						<button type="button" class="btn btn-default" data-dismiss="alert">稍后处理</button>
					</p>
				</div>
			</div>
			<!-- 警告框 -->

			<!-- 面板  网站统计数据-->
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">网站统计数据</div>
					<div class="panel-body">
						<!-- 鼠标悬停表格 -->
						<table class="table table-hover">
							<!-- 表头 -->
							<thead>
								<tr>
									<th>项目统计</th>
									<th>今日</th>
									<th>昨日</th>
								</tr>
							</thead>
							<!-- 表内容 -->
							<tbody>
								<tr>
									<th scope="row">注册会员</th>
									<td>300</td>
									<td>500</td>
								</tr>
								<tr>
									<th scope="row">登录会员</th>
									<td>340</td>
									<td>330</td>
								</tr>
								<tr>
									<th scope="row">今日发帖</th>
									<td>200</td>
									<td>300</td>
								</tr>
								<tr>
									<th scope="row">转载次数</th>
									<td>400</td>
									<td>540</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 网站统计数据 -->

			<!-- 热帖 -->
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">网站热帖</div>
					<!-- 列表组 -->
					<ul class="list-group">
						<li class="list-group-item "><a href="index.html"><i
								class="icon-list-alt"> </i>&nbsp;&nbsp;Cras justo odio <small
								class="pull-right">2015/05/05</small> </a></li>
						<li class="list-group-item"><a href="index.html"> <i
								class="icon-list-alt"></i>&nbsp;&nbsp;Dapibus ac facilisis in<small
								class="pull-right">2015/05/05</small>
						</a></li>
						<li class="list-group-item"><a href="index.html"> <i
								class="icon-list-alt"></i>&nbsp;&nbsp;Morbi leo risus<small
								class="pull-right">2015/05/05</small>
						</a></li>
						<li class="list-group-item"><a href="index.html"> <i
								class="icon-list-alt"></i>&nbsp;&nbsp;Porta ac consectetur ac<small
								class="pull-right">2015/05/05</small>
						</a></li>
						<li class="list-group-item"><a href="index.html"> <i
								class="icon-list-alt"></i>&nbsp;&nbsp;Vestibulum at eros<small
								class="pull-right">2015/05/05</small>
						</a></li>
						<li class="list-group-item "><a href="index.html"><i
								class="icon-list-alt"></i>&nbsp;&nbsp;Cras justo odio <small
								class="pull-right">2015/05/05</small> </a></li>
					</ul>
					<!-- 列表组 -->
				</div>
			</div>
			<!-- 热帖 -->

			<!-- 统计图表 -->
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">今日访客统计</div>
					<div class="panel-body">
						<!-- 创建canvas画布 -->
						<canvas id="canvas" class="col-md-12"></canvas>
						<!-- <canvas id="myChart" width="400" height="400"></canvas> -->
					</div>
				</div>
			</div>
			<!-- 统计图表 -->

			<!-- 服务器状态 -->
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">服务器状态</div>
					<div class="panel-body">
						<!-- 进度条制作 -->
						<p>内存使用率：40%</p>
						<div class="progress">
							<div
								class="progress-bar progress-bar-success progress-bar-striped  active"
								role="progressbar" aria-valuenow="40" aria-valuemin="0"
								aria-valuemax="100" style="width: 40%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>

						<p>数据库使用率：60%</p>
						<div class="progress">
							<div
								class="progress-bar progress-bar-info progress-bar-striped active"
								role="progressbar" aria-valuenow="20" aria-valuemin="0"
								aria-valuemax="100" style="width: 20%">
								<span class="sr-only">20% Complete</span>
							</div>
						</div>

						<p>磁盘使用率：60%</p>
						<div class="progress">
							<div
								class="progress-bar progress-bar-warning progress-bar-striped  active"
								role="progressbar" aria-valuenow="60" aria-valuemin="0"
								aria-valuemax="100" style="width: 60%">
								<span class="sr-only">60% Complete (warning)</span>
							</div>
						</div>

						<p>CPU使用率：80%</p>
						<div class="progress">
							<div
								class="progress-bar progress-bar-danger progress-bar-striped  active"
								role="progressbar" aria-valuenow="80" aria-valuemin="0"
								aria-valuemax="100" style="width: 80%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 服务器状态 -->

			<!-- 团队留言板 -->
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">团队留言板</div>
					<div class="panel-body">
						<div class="col-md-7">
							<!-- 人物一 -->
							<div class="media well">
								<div class="media-left">
									<a href="#"> <img class="media-object"
										src="static/images/timg.jpg" alt="卓">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Media</h4>
									Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nobis
									delectus assumenda, voluptas reiciendis nihil consectetur saepe
									facere excepturi nesciunt aspernatur in accusamus est aperiam
									voluptatem nemo labore fuga, culpa soluta?
								</div>
							</div>
							<!-- 人物二 -->
							<div class="media well">

								<div class="media-body">
									<h4 class="media-heading text-right">Lorem</h4>
									Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nobis
									delectus assumenda, voluptas reiciendis aspernatur in accusamus
									est aperiam voluptatem nemo labore fuga, culpa soluta?
								</div>
								<div class="media-right">
									<a href="#"> <img class="media-object"
										src="static/images/1170739.gif" alt="技术">
									</a>
								</div>
							</div>
							<div class="media well">

								<div class="media-body">
									<h4 class="media-heading text-right">Lorem</h4>
									Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nobis
									delectus assumenda, accusamus est aperiam voluptatem nemo
									labore fuga, culpa soluta?
								</div>
								<div class="media-right">
									<a href="#"> <img class="media-object"
										src="static/images/1170739.gif" alt="技术">
									</a>
								</div>
							</div>

							<!-- 人物一 -->
							<div class="media well">
								<div class="media-left">
									<a href="#"> <img class="media-object"
										src="static/images/timg.jpg" alt="卓">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Media</h4>
									Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								</div>
							</div>
						</div>
						<!-- 留言内容 -->
						<div class="col-md-5">
							<form action="#">
								<div class="form-group">
									<label for="text1">输入留言内容</label>
									<textarea name="" id="text1" cols="10" rows="5"
										class="form-control" placeholder="请输入留言内容"></textarea>
									<button type="submit" class="btn btn-default mar15">留言</button>
								</div>
							</form>
							<div class="panel panel-default">
								<div class="panel-heading">团队联系手册</div>
								<div class="panel-body">
									<ul class="list-group">
										<li class="list-group-item">Lorem :&nbsp; <i
											class="icon-mobile-phone"></i>&nbsp;13154518963
										</li>
										<li class="list-group-item">ipsum :&nbsp;<i
											class="icon-mobile-phone"></i>&nbsp;15856565983
										</li>
										<li class="list-group-item">dolor :&nbsp;<i
											class="icon-mobile-phone"></i>&nbsp17859642285
										</li>
										<li class="list-group-item">sit :&nbsp;<i
											class="icon-mobile-phone"></i>&nbsp;13587549974 &nbsp;<i
											class=" icon-headphones"></i>&nbsp;&nbsp;028-8554522
										</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- 团队留言板 -->
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
<script
	src="${pageContext.servletContext.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>
<!-- 引入chart.js -->
<!-- <script src="js/chart.min.js"></script> -->
<script
	src="${pageContext.servletContext.contextPath}/static/js/Chart1.0.2.js"></script>

<script
	src="${pageContext.servletContext.contextPath}/static/js/script.js"></script>


</html>