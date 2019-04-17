<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/3/8
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- web-fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //web-fonts -->
</head>
<body>
    <%--<form action=<%=request.getContextPath()%>/admin" method="post">
        用户名: <input type="text" name="name" id="name" /><br/>
        密码：<input type="password" name="pwd" id="pwd"/><br/>
        <input type="submit" value="登陆"/>
        @<%=request.getContextPath() %>@
    </form>--%>




    <!-- bg effect -->
    <div id="bg">
        <canvas></canvas>
        <canvas></canvas>
        <canvas></canvas>
    </div>
    <!-- //bg effect -->
    <!-- title -->
    <h1>Effect Login Form</h1>
    <!-- //title -->
    <!-- content -->
    <div class="sub-main-w3">
        <form action="<%=request.getContextPath()%>/admin" method="post">
            <h2>Login Now
                <i class="fas fa-level-down-alt"></i>
            </h2>
            <div class="form-style-agile">
                <label>
                    <i class="fas fa-user"></i>
                    Username
                </label>
                <input placeholder="Username" name="name" type="text" required="" value="<%
                    Object name = request.getAttribute("name");
                    if(name != null){
                        out.print(name);
                    }
        %>">
            </div>
            <div class="form-style-agile">
                <label>
                    <i class="fas fa-unlock-alt"></i>
                    Password
                </label>
                <input placeholder="Password" name="password" type="password" required="">
            </div>
            <!-- checkbox -->
            <div class="wthree-text">
                <ul>
                    <li>
                        <label class="anim">
                            <input type="checkbox" class="checkbox" required="">
                            <span>Stay Signed In</span>
                        </label>
                    </li>
                    <li>
                        <a href="#">Forgot Password?</a>
                    </li>
                </ul>
            </div>
            <!-- //checkbox -->
            <input type="submit" value="Log In">

        </form>
    </div>
    <!-- //content -->

    <!-- copyright -->
    <div class="footer">

        <p>${msg}<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
        <p><%=request.getAttribute("msg") %><a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
    </div>
    <!-- //copyright -->

    <!-- Jquery -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- //Jquery -->

    <!-- effect js -->
    <script src="js/canva_moving_effect.js"></script>
    <!-- //effect js -->

</body>
<script>
    var name =document.getElementById("name").value;
    if(name==""){
        docecument.getElementById("name").face;
    }else{
        docecument.getElementById("pwd").face;

    }
</script>
</html>
