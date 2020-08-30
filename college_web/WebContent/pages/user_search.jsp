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
                        <li class="active"><a href="user_list.jsp"><i class="icon-user"></i>&nbsp;&nbsp;用户管理</a></li>
                        <li><a href="content.jsp"><i class="icon-list-alt"></i>&nbsp;&nbsp;内容管理</a></li>
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
                    <a href="user_list.jsp" class="list-group-item">用户管理</a>
                    <a href="user_search.jsp" class="list-group-item active">用户搜索</a>
                    <a href="" role="button" class="list-group-item" data-toggle="modal" data-target="#myModal">添加用户</a>
                </div>
            </div>
            <div class="col-md-10">
                <div class="page-header">
                    <h1>用户搜索</h1>
                </div>
                <ul class="nav nav-tabs">
                    <li>
                        <a href="user_list.jsp">用户列表</a>
                    </li>
                    <li class="active">
                        <a href="user_search.jsp">用户搜索</a>
                    </li>
                    <li>
                        <!-- Button trigger modal -->
                        <a href="" role="button" data-toggle="modal" data-target="#myModal">添加用户</a>
                    </li>
                </ul>
                <!-- 搜索 -->
                <form action="#" class="user_search">
                    <div class="alert alert-info" role="alert">
                        <strong>技巧提示：</strong>
                        支持模糊搜索和匹配搜索，匹配搜索使用*代替！
                    </div>
                    <div class="form-group">
                        <label for="name">用户名</label>
                        <input type="text" id="name" class="form-control" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="uid">UID</label>
                        <input type="text" id="uid" class="form-control" placeholder="输入用户UID">
                    </div>
                    <div class="form-group">
                        <label for="groups">选择用户组</label>
                        <select name="" id="groups" class="form-control">
                            <option value="">限制会员</option>
                            <option value="">新手上路</option>
                            <option value="">注册会员</option>
                            <option value="">中级会员</option>
                            <option value="">高级会员</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
        </div>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加用户</h4>
                </div>
                <div class="modal-body">
                    <form action="#">
                        <div class="form-group">
                            <label for="addname">用户名</label>
                            <input type="text" id="addname" class="form-control" placeholder="请输入用户名">
                        </div>
                        <div class="form-group">
                            <label for="addpassword">用户密码</label>
                            <input type="text" id="addpassword" class="form-control" placeholder="请输入密码">
                        </div>
                        <div class="form-group">
                            <label for="addpasswordagain">确认用户密码</label>
                            <input type="text" id="addpasswordagain" class="form-control" placeholder="请再次输入用户密码">
                        </div>
                        <div class="form-group">
                            <label for="addemail">邮箱</label>
                            <input type="email" name="addemail" id="addemail" class="form-control"
                                placeholder="请输入用户邮箱">
                        </div>
                        <div class="form-group">
                            <label for="addgroups">所属用户组</label>
                            <select name="" id="addgroups" class="form-control">
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
                    <p>
                        Copuright &copy;2018-2020 www.hanyu.com 呼ICP2344号-9
                    </p>
                </div>
            </div>
        </div>
    </footer>

</body>
<script src="${pageContext.servletContext.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>


</html>