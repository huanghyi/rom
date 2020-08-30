<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="../index.jsp" class="navbar-brand">Hanyu Admin</a>
                </div>
                <!-- 导航右 -->
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../index.jsp"><i class="icon-home"></i>&nbsp;&nbsp;后台首页</a></li>
                        <li><a href="user_list.jsp"><i class="icon-user"></i>&nbsp;&nbsp;用户管理</a></li>
                        <li class="active"><a href="content.jsp"><i class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
                        <li><a href="tag.jsp"><i class="icon-tags"></i>&nbsp;&nbsp;标签管理</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                admin
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dLabel">
                                <li><a href="../index.jsp"><i class="icon-screenshot"></i>&nbsp;&nbsp;前台首页</a></li>
                                <li><a href="../index.jsp"><i class="icon-user"></i>&nbsp;&nbsp;个人主页</a></li>
                                <li><a href="../index.jsp"><i class="icon-cog"></i>&nbsp;&nbsp;个人设置</a></li>
                                <li><a href="../index.jsp"><i class="icon-credit-card"></i>&nbsp;&nbsp;账户中心</a></li>
                                <li><a href="../index.jsp"><i class="icon-heart"></i>&nbsp;&nbsp;我的收藏</a></li>
                            </ul>
                        </li>

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
                    <a href="content.jsp" class="list-group-item">内容管理</a>
                    <a href="content_post.jsp" class="list-group-item active">添加内容</a>
                </div>
            </div>
            <div class="col-md-10">
                <div class="page-header">
                    <h1>内容管理</h1>
                </div>
                <ul class="nav nav-tabs">
                    <li>
                        <a href="content.jsp">内容管理</a>
                    </li>
                    <li class="active">
                        <a href="content_post.jsp">添加内容</a>
                    </li>
                </ul>

                <form action="../contentAdd.jsp" class="mar15">
                    <div class="form-group">
                        <label for="title">标题</label>
                        <input type="text" id="title" class="form-control" placeholder="请输入文章标题" name="title">
                    </div>
                    <div class="form-group">
                        <label for="content">文章内容</label>
                        <textarea name="content" placeholder="请输入文章正文内容" id="content" cols="30" rows="10"
                            class="form-control"></textarea>
                    </div>
                    <div class="checkbox">
                        <label for="">
                            <input type="checkbox" name="" id="">全局置顶
                        </label>
                        <button type="submit" class="btn btn-default pull-right">发布文章</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- footer -->
    <footer>
        <div class="container">
            <div class="row wow lightSpeedInLeft">
                <div class="col-md-12">
                    <p>
                        Copuright &copy;2018-2020 www.hanyu.com 呼ICP2344号-9
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="../static/js/jquery-3.5.1.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>


</html>