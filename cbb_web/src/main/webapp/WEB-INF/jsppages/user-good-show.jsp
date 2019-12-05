<%--
  Created by IntelliJ IDEA.
  User: chenbing
  Date: 2019/12/1
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/my.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>
<body>
<!-- 内容区域 -->
<div class="container">
    <nav class="nav navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <!--在移动端的时候导航条折叠起来，三横的样式出现，点击该样式可以显示或隐藏导航条上的内容-->
                <button class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">logo</a>
            </div>
            <div id="menu" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <div class="btn-group my-navbtn-change">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Bing <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group my-navbtn-change">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Bing <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                    <!--下拉菜单功能的实现-->
                    <li>
                        <!-- Single button -->
                        <div class="btn-group my-navbtn-change">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Chen <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 内容头部 -->
    <section class="content-header my-content-container">
        <h1>
            用户管理 <small>全部用户</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/index1.jsp"><i
                    class="fa fa-dashboard"></i> 首页</a></li>
            <li><a
                    href="${pageContext.request.contextPath}/user/findAll.do">用户管理</a></li>

            <li class="active">全部用户</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <div class="content-wrapper my-content-container my-content-border">

        <div class="col-md-4 col-xl-3">

            <!-- 分类 -->
            <div class="card ">
                    <h4 class="card-header"><i class="fa fa-bars" aria-hidden="true"></i> 菜单</h4>
                        <ul class="list-group">
                            <a href="${pageContext.request.contextPath}/good/goodtest/user/${user.username}/goodManage.do" class="list-group-item">
                                商品管理
                            </a>
                            <a href="${pageContext.request.contextPath}/order/ordertest/user/${user.username}/orderManage.do" class="list-group-item">
                                订单管理
                            </a>


                        </ul>
            </div>
        </div>
        <div class="col-md-8 col-xl-6">


            <!-- 正文区域 -->
            <section class="content"> <!-- .box-body -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">列表</h3>
                    </div>

                    <div class="box-body">

                        <!-- 数据表格 -->
                        <div class="table-box ">

                            <!--工具栏-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="新建">
                                            <i class="fa fa-file-o"></i> 新建
                                        </button>

                                        <button type="button" class="btn btn-default" title="刷新">
                                            <i class="fa fa-refresh"></i> 刷新
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm"
                                           placeholder="搜索"> <span
                                        class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </div>
                            <!--工具栏/-->

                            <!--数据列表-->
                            <div class="tab-pane" id="tab-treetable">
                                <table id="collapse-table"
                                       class="table table-bordered table-hover dataTable">
                                    <thead>
                                    <tr>
                                        <th>名称</th>
                                        <th>价格</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${goodList}" var="good">
                                        <tr>
                                            <td>${good.goodname }</td>
                                            <td>${good.price }</td>
                                        <td><a onclick="fun1()" data-target="#myModal" href="${pageContext.request.contextPath}/good/goodtest/user/${user.username}/buy.do?userid=${user.id}&goodid=${good.id}"><span class="glyphicon glyphicon-plus">购买</span></a></td>
<%--                                            <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myDivButton">购买</button>--%>
<%--                                                <div class="modal fade" id="myDivButton" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--                                                    <div class="modal-dialog" role="document">--%>
<%--                                                        <div class="modal-content">--%>
<%--                                                            <div class="modal-header">--%>
<%--                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--                                                                <h4 class="modal-title" id="myModalLabel">确认购买？</h4>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="modal-body">--%>
<%--                                                                <p class="myClass">商品信息如下：</p><br>--%>
<%--                                                                <p class="myClass">&emsp; &emsp; ${good.goodname}:￥${good.price}, ${good.information}</p>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="modal-footer">--%>
<%--                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--                                                                <a href="${pageContext.request.contextPath}/good/goodtest/user/${user.username}/buy.do?userid=${user.id}&goodid=${good.id}">--%>
<%--                                                                    <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus">确定</span></button>--%>
<%--                                                                </a>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </td>--%>

                                        </tr>

                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!--数据列表/-->

                        </div>
                        <!-- 数据表格 /-->

                    </div>
                    <!-- /.box-body -->

                    <!-- .box-footer-->
                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                总共2 页，共14 条数据。 每页 <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select> 条
                            </div>
                        </div>

                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li><a href="#" aria-label="Previous">首页</a></li>
                                <li><a href="#">上一页</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">下一页</a></li>
                                <li><a href="#" aria-label="Next">尾页</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.box-footer-->

                </div>

            </section>
            <!-- 正文区域 /-->
        </div>
    </div>

    <div class="container my-content-container">
        <table class="table table-hover">

            <thead>
            <tr>
                <th>名称</th>
                <th>描述</th>
            </tr>
            </thead>


                <td colspan="2">${user.username}</td>


            <tbody>
            <c:forEach items="${user.goods}" var="good">
                <tr data-tt-id="${vs.index+1}" data-tt-parent-id="0">
                    <td>${good.goodname }</td>
                    <td>${good.price }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>


</div>

<script>

    function fun1() {
        alert('购买成功');
    }    
</script>
</body>
</html>
