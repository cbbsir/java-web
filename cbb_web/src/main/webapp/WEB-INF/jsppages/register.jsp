<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/my.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body class="my-bgcolor">

<div class="container">

    <div class="col-md-4 col-xl-3"></div>


    <div class="col-md-4 col-xl-3 my-content-container1" align="center">
        <form id="registerForm" class="form-signin" action="register.do" method="post">
            用户名:
            <input type="text" id="username" name="username" class="form-control" placeholder="用户名不能为中文" required autofocus>
            <br>
            密码：
            <input type="password" id="password" name="password" class="form-control" placeholder="密码" required>
            <li id="errorMsg" class="clearfix" style="display: none;color:red;">用户名密码不能为空</li>
            <button class="btn btn-lg btn-primary btn-block" type="submit">--注册--</button>
        </form>
        <span><h2>${errMsg}</h2></span>
    </div>

    <div class="col-md-4 col-xl-3"></div>
</div> <!-- /container -->

<!--<script type="text/javascript">-->

<!--    function doSubmit(){-->
<!--        var username = $('#username').val();-->
<!--        var password = $('#password').val();-->

<!--        //提交注册-->
<!--        $('#registerForm').onsubmit({-->
<!--            datatype : 'json',-->
<!--            success : function(respText) {-->
<!--                var resp = $.parseJSON(respText);-->
<!--                if (resp.errcode==0) {-->
<!--                    $('#errorMsg').show();-->
<!--                    $('#errorMsg').html("注册成功！3s后跳转到登陆页！");-->
<!--                    setTimeout(function(){-->
<!--                        window.location.href="${pageContext.request.contextPath}/index.html";-->
<!--                    },2000)-->
<!--                } else if(resp.errcode == 1) {-->
<!--                    $('#errorMsg').show();-->
<!--                    $('#errorMsg').html("用户名已被注册，请更换！");-->
<!--                }-->
<!--            },-->
<!--            error : function(xhr) {-->

<!--            }-->
<!--        });-->

<!--    }-->
<!--</script>-->

<script>

    function fun2() {
        alert('注册成功');
    }
</script>
</body>
</html>