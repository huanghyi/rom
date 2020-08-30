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
                        <li><a href="content.jsp"><i class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
                        <li class="active"><a href="tag.jsp"><i class="icon-tags"></i>&nbsp;&nbsp;标签管理</a></li>
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
            <div class="col-md-12">
                <div class="page-header">
                    <h1>TAG标签管理</h1>
                </div>

                <div class="col-md-12 pad0">
                    <form action="#">
                        <div class="col-md-10">
                            <input type="text" class="form-control" placeholder="请输入要添加的标签">
                        </div>
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-default">添加</button>
                        </div>
                        <div class="col-md-12 taglist">
                            <div class="alert alert-success alert-dismissible pull-left" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <strong>Bootstrap</strong>
                            </div>
                            <div class="alert alert-info alert-dismissible pull-left" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <strong>寒语学院</strong>
                            </div>
                            <div class="alert alert-warning alert-dismissible pull-left" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <strong>前端课程</strong>
                            </div>
                        </div>
                    </form>
                </div>
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