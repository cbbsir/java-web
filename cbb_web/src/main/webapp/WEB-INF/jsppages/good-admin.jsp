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
    <title>GoodShow</title>
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
            商品管理 <small>全部商品</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <a href="${pageContext.request.contextPath}/index1.jsp"><i
                    class="fa fa-dashboard"></i> 首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/user/findAll.do">商品管理</a>
            </li>

        </ol>
    </section>
    <!-- 内容头部 /-->

    <div class="content-wrapper my-content-container my-content-border">

        <div class="col-md-4 col-xl-3">

            <!-- 分类 -->
            <div class="card ">
                    <h4 class="card-header"><i class="fa fa-bars" aria-hidden="true"></i> 菜单</h4>
                        <ul class="list-group">
<%--                            此页面为ModelAndView解析并返回的页面，若超链接写成usertest/admin.do才能通过转发，并且转发到user/usertest/admin--%>
                            <a href="${pageContext.request.contextPath}/user/usertest/admin.do" class="list-group-item">
                                用户管理
                            </a>
                            <a href="${pageContext.request.contextPath}/good/goodtest/admin.do" class="list-group-item">
                                商品管理
                            </a>
                            <a href="${pageContext.request.contextPath}/order/ordertest/admin.do" class="list-group-item">
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
                                        <th>商品名称</th>
                                        <th>商品价格</th>
                                        <th>商品信息</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${goodList}" var="good">
                                            <td>${good.goodname }</td>
                                            <td>￥${good.price }</td>
                                            <td>${good.information }</td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/good/${good.id}/delete.do"><span class="glyphicon glyphicon-remove-circle">删除</span></a>
                                                <a href="${pageContext.request.contextPath}/good/${good.id}/update.do"><span class="glyphicon glyphicon-pencil">修改</span></a>
                                            </td>
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


                                总共${pageInfoGoodList.pages}页，共${pageInfoGoodList.total}条数据。 每页 <select class="form-control" id="changePageSize" onchange="changePageSize()">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>10</option>
                                <option>20</option>
                                <option>100</option>
                            </select> 条
                            </div>
                        </div>

                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/good/goodtest/admin.do?page=1&size=${pageInfoGoodList.pageSize}" aria-label="Previous">首页</a></li>
                                <li><a href="${pageContext.request.contextPath}/good/goodtest/admin.do?page=${pageInfoGoodList.pageNum-1}&size=${pageInfoGoodList.pageSize}">上一页</a></li>
                                <c:forEach begin="1" end="${pageInfoGoodList.pages}" var="pageNum">
                                    <li><a href="${pageContext.request.contextPath}/good/goodtest/admin.do?page=${pageNum}&size=${pageInfoGoodList.pageSize}">${pageNum}</a></li>
                                </c:forEach>
                                <li><a href="${pageContext.request.contextPath}/good/goodtest/admin.do?page=${pageInfoGoodList.pageNum+1}&size=${pageInfoGoodList.pageSize}">下一页</a></li>
                                <li><a href="${pageContext.request.contextPath}/good/goodtest/admin.do?page=${pageInfoGoodList.pages}&size=${pageInfoGoodList.pageSize}" aria-label="Next">尾页</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.box-footer-->

                </div>

            </section>
            <!-- 正文区域 /-->
        </div>
    </div>

</div>

<script>

    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();

        //向服务器发送请求，改变每页显示条数
        location.href = "${pageContext.request.contextPath}/good/goodtest/admin.do?page=1&size="
            + pageSize;
    }
</script>

</body>
</html>
