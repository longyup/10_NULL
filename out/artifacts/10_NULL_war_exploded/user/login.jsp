<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/17
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <% String path = request.getContextPath(); %>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="Shortcut Icon" href=/favicon.ico>
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/head.css" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/article.css" />
    <link href="<%= path%>/css/Page.css" type="text/css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="<%= path%>/css/loginm.css" />


    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?426a0ad4105b6ba0c920b36847139756";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>
<body>



<style>
    .section-top1, .section-top2 {
        width: 1200px;
        margin: 0 auto;
        color: #fff;
        height: 25px;
    }

    .section-top1 a, .section-top2 a {
        margin-left: 5px;
        color: #fff;
    }

    .section-top1 a:hover {
        text-decoration: underline;
    }

    .section-top2 a:hover {
        text-decoration: underline;
    }
</style>


<!--nav 导航-->

<div class="header">
    <div class="section-top1">
        您好,欢迎您进入XXXXXX网！<a href="#">登录</a><a href="#">注册</a>
    </div>


    <div class="header-con">
        <div class="top clearfix">
            <div class="top-logo l">
                <img src="<%= path%>/images/logo-yx.png" />
            </div>
            <div class="top_2 r clearfix">
                <div class="search_1 l">
                    <div class="search_con">
                        <div class="type">
                            课程
                        </div>
                        <img src="<%= path%>/images/arrow-down.png" class="search_img">
                    </div>
                    <div class="type_con" id="SreachType">
                        <ul>
                            <li onclick="search('新闻')">新闻</li>
                            <li onclick="search('课程')">课程</li>
                        </ul>
                    </div>
                </div>

                <input type="text" id="SearchKeyword" value="" placeholder="请输入搜索关键字" class="l">
                <div class="search_2 l">
                    <a href="javascript:;" id="Search"><img src="<%= path%>/images/glass.png" /></a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav">
        <div class="nav-con">
            <ul class="clearfix">
                <li><a href="#" style="color:white;" class="nl-title">网站首页</a></li>
                <li><a href="culture.html" style="color:white;" class="nl-title">文化遗址</a></li>
                <li>
                    <a href="culture.html" style="color:white;" class="nl-title">特色美食</a>

                </li>
                <li><a href="culture.html" style="color:white;" class="nl-title">名人风情</a></li>
                <li><a href="culture.html" style="color:white;" class="nl-title">风情民俗</a></li>
                <li><a href="culture.html" style="color:white;" class="nl-title">活动一览</a>
                    <div class="list">
                        <a href="/Course/Index?ChannelId=82" style="color:white;">遗址保护</a>
                        <a href="/Course/Index?ChannelId=83" style="color:white;">美食保护</a>
                        <a href="/Course/Index?ChannelId=84" style="color:white;">民俗保护</a>

                    </div>
                </li>
                <li><a href="#" style="color:white;" class="nl-title">杂谈交流</a></li>
                <li><a href="#" style="color:white;" class="nl-title">关于我们</a></li>
            </ul>
        </div>
    </div>
</div>





<!--登录主页-->
<div class="login_main">
    <div class="login_mainw">
        <div class="login_mainw1 clearfix r">
            <div class="nnl_login ">
                <div class="nnl_title clearfix">
                    <div class="nnl_title1 nnl_lt l">
                        登录<span> / Login</span>
                    </div>
                </div>
                <!--未登录-->
                <form action="<%=request.getContextPath()%>/user/login" class="layui-form" method="post">
                    <input name="__RequestVerificationToken" type="hidden" value="wSIPt1PRSeo9hlM5QXGrcTFQ40LfcRujI9ITnTDIrX55esUpL1L-CxQZ0INBrY5u3bm2tqYzVcg-jjrp0L_-5fbjgCdYpiTFYt0zb_bntp81" />
                    <div class="nnl_logining" style="display: block;">
                    <div class="login_dh_user">
                        <div class="login_dh_userimg">
                            <img src="<%= path%>/images/user_img1.png"/>
                        </div>
                        <input type="text" id="userName" name="account" lay-verify="userName" autocomplete="off" placeholder="用户名" />
                    </div>
                    <div class="login_dh_password">
                        <div class="login_dh_passwordimg">
                            <img src="<%= path%>/images/password_img.png"/>
                        </div>
                        <input type="password" id="ps_wd" name="password" lay-verify="password" autocomplete="off" placeholder="密码" />
                    </div>
                    <div class="sign_forget">
                        <a href="/User/Register" class="sign_forget1">注册新账号</a>|
                        <a href="/User/ForgetPwd" class="sign_forget2">找回账号</a>
                    </div>
                    <div class="login_dl">
                        <input type="submit" value="登陆">
<%--
                        <a href="javascript:void(0)" id="UserLogin" lay-submit lay-filter="login">登录</a>
--%>
                    </div>
                </div>
                </form>            </div>

        </div>

    </div>
</div>







<div class="footer ">
    <div class="footer-con clearfix">
        <div class="footer-left">
            <div class="footer-link">
                <ul class="clearfix">
                    <li><a href="#">首页</a></li>
                    <li><a href="<%=path%>/CourseCenter.html">活动中心</a></li>
                    <li><a href="<%=path%>/CourseCenter.html">个人中心</a></li>

                </ul>
            </div>
            <div class="footer-text">
                <!--  <p>主办单位：宜兴社区培训学院  版权归属：江苏省宜兴中等专业学校(宜兴开放大学)(江苏省宜兴高级技工学校、宜兴市旅游职业学校)</p>
                <p>电话： 0510-87975061  客服QQ群：134806811   苏ICP备05002113号-3    学习访问人次：1182938   课程总数:8954</p> -->
                <p> Copyright@ 10_NULL版权所有</p>
            </div>
        </div>
        <div class="footer-right">
            <img src="<%= path%>/images/back-top.png" />
            <p>返回顶部</p>
        </div>
    </div>

</div>



<script src="<%= path%>/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="<%= path%>/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/schedule.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/jquery.tiles.js"></script>
<script src="<%= path%>/Content/layui/src/layui.js"></script>





<script type="text/javascript">

    $(function () {
        search("课程");
    });
    function search(types) {
        $("#Search").click(function () {
            var keyword = $("#SearchKeyword").val();
            if (keyword == '请输入搜索关键字' || keyword == "") {
                $("#SearchKeyword").val('');
                alert("请输入搜索关键字");
                return false;
            }
            var type = types;
            var url = "";
            if (type.indexOf("新闻") != -1) {
                url = '/Article' + "?keyWords=" + keyword;
            } else {
                url = '/Course' + "?keyWords=" + keyword;
            }
            window.location.href = url;
        });
    }
    $(".search_con").click(function () {
        $(".type_con").show()
    });
    $(".type_con ul li").click(function () {
        $(".type").html($(this).html());
        $(".type_con").hide()
    });
    $(".footer-right").click(function () {
        $("html,body").animate({ scrollTop: 0 }, 500);
    });
</script>


<script src="<%= path%>/Content/layui/src/layui.js"></script>

<script type="text/javascript">

    layui.use(['layer', 'form'], function() {
        var layer = layui.layer,
            $ = layui.jquery,
            form = layui.form;

        form.verify({
            userName: function(value) {
                if (value === '')
                    return '请输入用户名';
            },
            password: function(value) {
                if (value === '')
                    return '请输入密码';
            }
        });


        //验证码输入


        form.on('submit(login)', function (data) {

            submit($, data.field);
            return false;
        });
    });



    function submit($, params) {

        $.post('<%= path%>/user/login', params, function () {
            if (${"login"}) {
                layer.msg(res.message, { icon: 2 });
            } else {
                // 登陆成功 跳转
                layer.msg(res.message, { icon: 1 });
            }
        });
    };
</script>




</body>
</html>
