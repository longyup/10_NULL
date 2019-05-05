<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/25
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li><a href="<%=path%>/index.jsp" style="color:white;" class="nl-title">网站首页</a></li>
                <li><a href="<%=path%>/culture.jsp" style="color:white;" class="nl-title">文化遗址</a></li>
                <li><a href="<%=path%>/culture.jsp" style="color:white;" class="nl-title">特色美食</a></li>
                <li><a href="<%=path%>/culture.jsp" style="color:white;" class="nl-title">名人风情</a></li>
                <li><a href="<%=path%>/culture.jsp" style="color:white;" class="nl-title">风情民俗</a></li>
                <li><a href="<%=path%>/culture.jsp" style="color:white;" class="nl-title">活动一览</a></li>
                <li><a href="<%=path%>/242.jsp" style="color:white;" class="nl-title">杂谈交流</a></li>
                <li><a href="<%=path%>/user/login.jsp" style="color:white;" class="nl-title">关于我们</a></li>
            </ul>
        </div>
    </div>
</div>