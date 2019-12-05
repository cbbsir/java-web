<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品更新页面</title>

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/my.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>

<body class="hold-transition skin-purple sidebar-mini">


	<div class="wrapper container">
		<div class="col-md-4">...</div>

		<div class="col-md-4">
		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				商品管理 <small>商品表单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index1.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/user/findAll.do">商品管理</a></li>
				<li class="active">商品表单</li>
			</ol>
			</section>
			<!-- 内容头部 /-->


			<form action="${pageContext.request.contextPath}/good/${good.id}/updateGoodById.do"
				method="post">
				<!-- 正文区域 -->

				<div class="row">
						<div class="panel panel-default">
							<!-- Default panel contents -->
							<div class="panel-heading">商品更新</div>

							<input type="hidden" name="id" id="id" value="${good.id}">

							<div class="row data-type">
								<div class="col-md-4 title my-navbtn-center my-text-container">商品名称</div>
								<div class="col-md-8 data">
									<input type="text" class="form-control" name="goodname" id="goodname"
										   placeholder="商品名称">
								</div>
								<div class="col-md-4 title control-label my-navbtn-center my-text-container">商品价格</div>
								<div class="col-md-8 data">
									<input type="text" class="form-control" name="price" id="price"
										   placeholder="商品价格">
								</div>
								<div class="col-md-4 title control-label my-navbtn-center my-text-container">商品信息</div>
								<div class="col-md-8 data">
									<input type="text" class="form-control" name="information" id="information"
										   placeholder="商品信息">
								</div>

						</div>


					<!--订单信息/--> <!--工具栏-->
					<div class="text-center">
						<button type="submit" class="btn navbar-btn">保存</button>
						<button type="button" class="btn navbar-btn"
							onclick="history.back(-1);">返回</button>
					</div>
				</div>
				<!-- 正文区域 /-->
			</form>


		</div>


		<!-- 内容区域 /-->


		<!-- 底部导航 -->
		<footer class="main-footer">

		<strong>Copyright &copy; 2019-11 <a
			href="http://cbbsir.github.io">BingChen</a>.
		</strong>User update </footer>
		<!-- 底部导航 /-->
		</div>
		<div class="col-md-4">...</div>
	</div>


	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}
	</script>


</body>

</html>