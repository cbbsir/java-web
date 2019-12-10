<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/my.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container">
        <div class="row">

    <!--        导航栏-->
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="#">BingChen First Page</a>
                            <button type="button" class="btn btn-success my-navbtn-change" onclick="window.location.href = 'register.html'">注册</button>

                    </div>

                </div>
            </nav>


            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container" align="center">
                    <h2>Welcome To My Little Site!</h2>
                </div>
            </div>

            <!-- The justified navigation menu is meant for single line per list item.
               Multiple lines will require custom code not provided by Bootstrap. -->
<!--            <div class="masthead">-->
<!--                <h3 class="text-muted">Project name</h3>-->
<!--                <nav>-->
<!--                    <ul class="nav nav-justified">-->
<!--                        <li class="active"><a href="#">Home</a></li>-->
<!--                        <li><a href="#">Projects</a></li>-->
<!--                        <li><a href="#">Services</a></li>-->
<!--                        <li><a href="#">Downloads</a></li>-->
<!--                        <li><a href="#">About</a></li>-->
<!--                        <li><a href="#">Contact</a></li>-->
<!--                    </ul>-->
<!--                </nav>-->
<!--            </div>-->

<!--            &lt;!&ndash; Jumbotron &ndash;&gt;-->
<!--            <div class="jumbotron">-->
<!--                <h1>Marketing stuff!</h1>-->
<!--                <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.</p>-->
<!--                <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>-->
<!--            </div>-->





            <!-- 左侧栏目 -->
            <div class="col-md-4 col-xl-3" align="center">
                <img src="${pageContext.request.contextPath}/imgs/img1.jpg" alt="..." class="img-circle" width="165px">

            </div>

            <!--中间登陆-->
            <div class="col-md-4 col-xl-3">
                <span><h2>${sucMsg}</h2></span>
                <form action="login.do" method="post">
                    <div class="form-group">
                        <label >User Name</label>
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="User Name">
                    </div>
                    <div class="form-group">
                        <label >Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>
                    </div>

                    <div align="center">
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </form>
            </div>

            <!-- 右侧栏目 -->
            <div class="col-md-4 col-xl-3" align="center">
                <img src="${pageContext.request.contextPath}/imgs/img1.jpg" alt="..." class="img-circle" width="165px">
            </div>
        </div>

        <hr>

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/imgs/r1.png" alt="网络卡顿">
                    <div class="carousel-caption">
                        The  Beatiful Night
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/imgs/r2.png" alt="网络卡顿">
                    <div class="carousel-caption">
                        The Pretty Tower
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/imgs/r3.png" alt="网络卡顿">
                    <div class="carousel-caption">
                        The Save Haven
                    </div>
                </div>
            </div>


            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <hr>
        <!-- Site footer -->
        <footer class="footer">
            <p>&copy; 2019 Personal, BingChen.</p>
        </footer>
    </div>

<script>

    //设置轮播图轮询时间
    $('.carousel').carousel({
        interval: 2000
    })


</script>
</body>
</html>