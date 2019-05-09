<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/29
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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


    <title>乡土文化</title>


    <link rel="stylesheet" type="text/css" href="<%= path%>/css/topicCourse.css" />


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

<%@include file="head.jsp"%>



<div class="course-rank clearfix">
    <div class="course-tj l">
        <div class="course-tj-title clearfix">
            <p><span>推荐活动</span>/Recommended course</p>
            <a href="/Course/Index"><img src="images/more.png" /></a>
        </div>
        <div class="course-tj-con">
            <div class="ctj-lb">
                <div class="bd">
                    <ul>
                        <li class="clearfix">
                            <div class="pic l">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/81a4d82e-88a5-4c95-9175-477556d2d148.jpg" alt="" onerror="this.src ='images/renwenxiuyang.jpg'" class="pic-cimg" />
                                <div class="text clearfix">
                                    <p class="num l"><img src="images/eye-1.png" />719次</p>
                                    <p class="time r"><img src="images/clock.png" />1680秒</p>
                                </div>
                            </div>
                            <div class="article-info l clearfix">
                                <h3>健身先健骨 下</h3>
                                <p>

                                </p>
                                <a href="/Course/Details?id=6">进入活动</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="pic l">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/99cbbaab-78d4-4fbc-9d96-bf35b8c603b2.jpg" alt="" onerror="this.src ='images/renwenxiuyang.jpg'" class="pic-cimg" />
                                <div class="text clearfix">
                                    <p class="num l"><img src="images/eye-1.png" />542次</p>
                                    <p class="time r"><img src="images/clock.png" />1680秒</p>
                                </div>
                            </div>
                            <div class="article-info l clearfix">
                                <h3>健身先健骨 上</h3>
                                <p>

                                </p>
                                <a href="/Course/Details?id=1373">进入活动</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="pic l">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/04314bb5-cbd7-4766-a502-3054284254d0.jpg" alt="" onerror="this.src ='images/renwenxiuyang.jpg'" class="pic-cimg" />
                                <div class="text clearfix">
                                    <p class="num l"><img src="images/eye-1.png" />369次</p>
                                    <p class="time r"><img src="images/clock.png" />2760秒</p>
                                </div>
                            </div>
                            <div class="article-info l clearfix">
                                <h3>数控车床操作指南5</h3>
                                <p>

                                </p>
                                <a href="/Course/Details?id=7">进入活动</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
        </div>
    </div>
    <div class="rank l">
        <div class="rank-title clearfix">
            <p><span>点击排行榜</span>/Ranking</p>

        </div>
        <div class="rank-con">
            <ul>
                <li class="clearfix">
                    <p class="rank-list-num1 l">1</p>
                    <a href="/Course/Details?id=4641" class="rank-list-text l">乌龟的繁殖</a>
                    <p class="rank-list-num2 l">12395次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">2</p>
                    <a href="/Course/Details?id=7281" class="rank-list-text l">社会关系的拓展和管理...</a>
                    <p class="rank-list-num2 l">11150次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">3</p>
                    <a href="/Course/Details?id=508" class="rank-list-text l">少儿美术快乐营3</a>
                    <p class="rank-list-num2 l">8347次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">4</p>
                    <a href="/Course/Details?id=4619" class="rank-list-text l">篱笆形枣园</a>
                    <p class="rank-list-num2 l">6660次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">5</p>
                    <a href="/Course/Details?id=4620" class="rank-list-text l">草地枣园</a>
                    <p class="rank-list-num2 l">6419次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">6</p>
                    <a href="/Course/Details?id=4733" class="rank-list-text l">莆田黑鸭</a>
                    <p class="rank-list-num2 l">6030次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">7</p>
                    <a href="/Course/Details?id=4621" class="rank-list-text l">山地丘陵节水灌溉</a>
                    <p class="rank-list-num2 l">5883次</p>
                </li>
                <li class="clearfix">
                    <p class="rank-list-num1 l">8</p>
                    <a href="/Course/Details?id=4642" class="rank-list-text l">乌龟的护养</a>
                    <p class="rank-list-num2 l">5633次</p>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="course-classify">
    <div class="cc-title clearfix">
        <p><span>活动分类</span>/Category</p>
        <div class="cc-title-list l">
            <ul>
                <li class="on" onmouseover="ShowCourse(82)">
                    <input type="hidden" id="hdCourseId" value="82" />
                    <a href="/Course/Index/82">遗产保护</a>
                </li>
                <li class="on" onmouseover="ShowCourse(83)">
                    <input type="hidden" id="hdCourseId" value="83" />
                    <a href="/Course/Index/83">美食保护</a>
                </li>
                <li class="on" onmouseover="ShowCourse(84)">
                    <input type="hidden" id="hdCourseId" value="84" />
                    <a href="/Course/Index/84">民俗保护</a>
                </li>


            </ul>
        </div>
        <a href="/Course"><img src="images/more.png" /></a>
    </div>
    <div class="cc-con" id="ChannelCourse">
        <ul class="picList">
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=5" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/414f92ca-0803-4a29-982b-63fd41df49f1.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />645次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />1560秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=5">采购物流（生产企业现代物流系列）1 下</a>
                    <p class="title-time">
                        上传日期：2012-10-25 14-33
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11541" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/2df0210e-b6bc-40ba-8591-c1f21254ec5b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />1054次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />650秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11541">无痛英语01建立模型理解英语</a>
                    <p class="title-time">
                        上传日期：2018-10-09 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=5232" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/1d955eed-8832-40a7-ac6c-9bbaed3d40bc.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />768次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />4612秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=5232">新会计准则讲座01</a>
                    <p class="title-time">
                        上传日期：2015-05-14 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11561" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/77baa924-fa6e-46ca-ba9c-ec7e251cf98b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />442次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />264秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11561">赢得时间的30种妙计6_与人沟通</a>
                    <p class="title-time">
                        上传日期：2018-10-09 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11562" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/aa9b0de1-57a6-4a2d-aebd-1e7421aff418.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />422次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />206秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11562">赢得时间的30种妙计7_会议</a>
                    <p class="title-time">
                        上传日期：2018-10-09 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11556" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/8c0bff46-af88-40e7-860c-b6ac0b83f841.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />845次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />73秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11556">赢得时间的30种妙计1_概述</a>
                    <p class="title-time">
                        上传日期：2018-10-09 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11534" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/131ede5a-1ec1-4b62-a04d-252b387d2e0e.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />422次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />1404秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11534">手机摄影达人速成01.器材：手机像素够用吗？光圈有多大？</a>
                    <p class="title-time">
                        上传日期：2018-10-08 00-00
                    </p>

                </div>
            </li>
            <li>
                <div class="pic">
                    <a href="/Course/Details?id=11519" target="_blank">
                        <img src="http://112.25.215.35:80/Resource/Images/Course/0617b331-d34d-474f-be25-960cc41e7da3.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                        <div class="pic-nt clearfix">
                            <p class=" pic-num l"><img src="images/eye-1.png" />656次</p>
                            <p class=" pic-time r"><img src="images/clock.png" />1450秒</p>
                        </div>
                    </a>
                </div>
                <div class="title">
                    <a href="/Course/Details?id=11519">我的牛顿教练1</a>
                    <p class="title-time">
                        上传日期：2018-09-26 00-00
                    </p>

                </div>
            </li>
        </ul>

    </div>
</div>
<div class="course-enjoy">
    <div class="topic-title clearfix">
        <p>
            <span>猜你喜欢</span>/Recommended
        </p>
        <a href="/Course/Index"><img src="images/more.png" /></a>
    </div>
    <div class="topic-con">
        <div class="mainlb-item enjoyCourse-lb">
            <div class="bd">
                <ul class="picList">
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=5" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/414f92ca-0803-4a29-982b-63fd41df49f1.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />645次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />1560秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=5">采购物流（生产企业现代物流系列）1 下</a>
                            <p class="title-time">
                                上传日期：2012-10-25 14-33
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11541" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/2df0210e-b6bc-40ba-8591-c1f21254ec5b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />1054次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />650秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11541">无痛英语01建立模型理解英语</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=5232" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/1d955eed-8832-40a7-ac6c-9bbaed3d40bc.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />768次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />4612秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=5232">新会计准则讲座01</a>
                            <p class="title-time">
                                上传日期：2015-05-14 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11561" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/77baa924-fa6e-46ca-ba9c-ec7e251cf98b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />442次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />264秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11561">赢得时间的30种妙计6_与人沟通</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11562" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/aa9b0de1-57a6-4a2d-aebd-1e7421aff418.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />422次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />206秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11562">赢得时间的30种妙计7_会议</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11556" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/8c0bff46-af88-40e7-860c-b6ac0b83f841.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />845次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />73秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11556">赢得时间的30种妙计1_概述</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11534" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/131ede5a-1ec1-4b62-a04d-252b387d2e0e.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />422次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />1404秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11534">手机摄影达人速成01.器材：手机像素够用吗？光圈有多大？</a>
                            <p class="title-time">
                                上传日期：2018-10-08 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11519" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/0617b331-d34d-474f-be25-960cc41e7da3.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />656次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />1450秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11519">我的牛顿教练1</a>
                            <p class="title-time">
                                上传日期：2018-09-26 00-00
                            </p>

                        </div>
                    </li>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
    </div>
</div>
<!--最新活动-->
<div class="course-new">
    <div class="topic-title clearfix">
        <p>
            <span>最新活动</span>/Latest
        </p>
        <a href="/Course/Index"><img src="images/more.png" /></a>
    </div>
    <div class="topic-con">
        <div class="mainlb-item newCourse-lb">
            <div class="bd">
                <ul class="picList">
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11563" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/470bd6f7-b01e-4909-8f40-5b7ba6b5b77f.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />481次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />77秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11563">赢得时间的30种妙计8_总结</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11541" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/2df0210e-b6bc-40ba-8591-c1f21254ec5b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />1054次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />650秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11541">无痛英语01建立模型理解英语</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11561" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/77baa924-fa6e-46ca-ba9c-ec7e251cf98b.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />442次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />264秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11561">赢得时间的30种妙计6_与人沟通</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11562" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/aa9b0de1-57a6-4a2d-aebd-1e7421aff418.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />422次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />206秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11562">赢得时间的30种妙计7_会议</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11560" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/efc341a1-420a-4c2a-8f1b-02a7deebf14c.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />390次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />227秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11560">赢得时间的30种妙计5_通讯-电话</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11559" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/a11a72dc-7b55-419e-810f-2b1815cd6e1e.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />390次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />287秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11559">赢得时间的30种妙计4_通讯-电子邮件</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11558" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/bf8331bc-8d34-4875-a67b-b1230550a6b8.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />396次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />101秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11558">赢得时间的30种妙计3_高效的工作</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                    <li>
                        <div class="pic">
                            <a href="/Course/Details?id=11557" target="_blank">
                                <img src="http://112.25.215.35:80/Resource/Images/Course/9d12edb1-99ea-47d9-8f7d-df9092ca65d5.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                <div class="pic-nt clearfix">
                                    <p class=" pic-num l"><img src="images/eye-1.png" />441次</p>
                                    <p class=" pic-time r"><img src="images/clock.png" />333秒</p>
                                </div>
                            </a>
                        </div>
                        <div class="title">
                            <a href="/Course/Details?id=11557">赢得时间的30种妙计2_要有条理</a>
                            <p class="title-time">
                                上传日期：2018-10-09 00-00
                            </p>

                        </div>
                    </li>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
    </div>
</div>
<!--热门活动、热搜活动-->
<div class="course-hot clearfix">
    <!--热门活动-->
    <div class="popular-course l">
        <div class="topic-title clearfix">
            <p>
                <span>热门活动</span>/Popular
            </p>
            <div class="pct-list l">
                <ul>
                    <li><a href="javascript:;">热门点击</a></li>
                    <li><a href="javascript:;">热门评论</a></li>
                    <li><a href="javascript:;">热门收藏</a></li>
                </ul>
            </div>
            <a href="/Course/Index"><img src="images/more.png" /></a>
        </div>
        <div class="pc-con">
            <div class="pclb-item pcCourse-lb1">
                <div class="bd">
                    <ul class="picList">
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4641" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//乌龟的繁殖.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />12395次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />33秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4641">乌龟的繁殖</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=7281" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />11150次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />1980秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=7281">社会关系的拓展和管理（二）</a>
                                <p class="title-time">
                                    上传日期：2016-09-21 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=508" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/a794b9c5-6287-4528-bc86-d375b50208ec.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />8347次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />900秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=508">少儿美术快乐营3</a>
                                <p class="title-time">
                                    上传日期：2012-11-23 12-40
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4619" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//篱笆形枣园.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />6660次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />319秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4619">篱笆形枣园</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4620" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//草地枣园.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />6419次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />444秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4620">草地枣园</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4733" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//莆田黑鸭.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />6030次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />56秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4733">莆田黑鸭</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
            <div class="pclb-item pcCourse-lb2" style="display:none;">
                <div class="bd">
                    <ul class="picList">
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4621" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//山地丘陵节水灌溉.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5883次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />559秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4621">山地丘陵节水灌溉</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4642" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//乌龟的护养.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5633次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />71秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4642">乌龟的护养</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4622" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//病险水库除险加固技术.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5513次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />582秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4622">病险水库除险加固技术</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4624" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//菜地高效节水灌溉.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5423次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />571秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4624">菜地高效节水灌溉</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=2725" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/58f7d85a-8bf0-4b03-98ab-db336b4af026.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5401次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />719秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=2725">萎缩性胃炎的防治和保健（下）</a>
                                <p class="title-time">
                                    上传日期：2013-11-18 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4643" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//乌龟疾病治疗.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5296次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />69秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4643">乌龟疾病治疗</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
            <div class="pclb-item pcCourse-lb3" style="display:none;">
                <div class="bd">
                    <ul class="picList">
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4623" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//北方沼气能源生态模式.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />5020次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />344秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4623">北方沼气能源生态模式</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4625" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//大中型畜禽养殖场能源环境工程建设.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />4580次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />576秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4625">大中型畜禽养殖场能源环境工程建设</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4728" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//珍珠鸡.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />4457次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />56秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4728">珍珠鸡</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4626" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//调控净化器及沼气燃具.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />4399次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />483秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4626">调控净化器及沼气燃具</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4627" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//虾蛄围塘养殖技术.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />4280次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />526秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4627">虾蛄围塘养殖技术</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=4628" target="_blank">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course//美国大口胭脂鱼养殖技术.jpg" onerror="this.src ='images/renwenxiuyang.jpg'" class="course-picImg" />
                                    <div class="pic-nt clearfix">
                                        <p class="pic-num l"><img src="images/eye-1.png" />4166次</p>
                                        <p class="pic-time r"><img src="images/clock.png" />627秒</p>
                                    </div>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=4628">美国大口胭脂鱼养殖技术</a>
                                <p class="title-time">
                                    上传日期：2014-12-05 00-00
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
        </div>
    </div>
    <div class="hot-search-course r">
        <div class="topic-title clearfix">
            <p>
                <span>热搜活动</span>/Hot search
            </p>

        </div>
        <div class="hsc-con">
            <div id="tagscloud">
                <a href="/Course/Index?keyWords=沟通" target="_blank" class="tagc1 size2">文化</a>
                <a href="/Course/Index?keyWords=医疗" target="_blank" class="tagc2 size2">遗产</a>
                <a href="/Course/Index?keyWords=人文" target="_blank" class="tagc3 size1">建筑</a>
                <a href="/Course/Index?keyWords=育儿" target="_blank" class="tagc4 size2">美食</a>
                <a href="/Course/Index?keyWords=法律法规" target="_blank" class="tagc5 size3">文化保护</a>
                <a href="/Course/Index?keyWords=养生" target="_blank" class="tagc6 size2">民俗</a>
                <a href="/Course/Index?keyWords=娱乐" target="_blank" class="tagc7 size1">娱乐</a>
                <a href="/Course/Index?keyWords=职业规划" target="_blank" class="tagc8 size2">文化生活</a>
            </div>
        </div>
    </div>


</div>





<%@include file="foot.jsp"%>



<script src="<%= path%>/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="<%= path%>/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/schedule.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/jquery.tiles.js"></script>
<script src="<%= path%>/Content/layui/src/layui.js"></script>





<script type="text/javascript">

    $(function () {
        search("活动");
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


<script type="text/javascript">
    (function init() {

        //初始化加载活动信息
        var channelId = $("#hdCourseId").val();
        ShowCourse(channelId);
        //ShowCourses(1);
    }());

    function ShowCourse(channelId) {
        //var channelId = $(".course_left_on input[type=hidden]").val();
        //console.log("channelId：" + channelId);
        var params = {
            ChannelType: channelId, //频道
            Limit: 10 //记录数
        }

        $.ajax({
            type: "post", //type：(string)请求方式，POST或GET
            dataType: "json", //dataType：(string)预期返回的数据类型。xml,html,json,text等
            url: "/Course/TopicLoadModelJson", //url：(string)发送请求的地址，可以是服务器页面也可以是WebService动作。
            data: params,
            success: function (data) {
                var str = "<ul class=\"clearfix\">";
                if (data.code == '0') {
                    var data = data.data;
                    for (i in data) {
                        str += "<li> <div class='pic'>"
                            + "<a href='/Course/Details/" + data[i].CourseId + "'target='_blank'>"
                            + "<img class='cc-picImg' src='" + data[i].CourseImage + "'onerror='this.src =\"/images/renwenxiuyang.jpg\"'/>"
                            + "<div class='pic-nt clearfix'>"
                            + "<p class='pic-num l'><img src='/images/eye-1.png'/>" + data[i].ClickCount + "次</p>"
                            + "<p class='pic-time r'><img src='/images/clock.png'/>" + data[i].Duration + "秒</p>"
                            + "</div></a></div>"
                            + "<div class='title'>"
                            + "<a href='/Course/Details/" + data[i].CourseId + "'>" + data[i].CourseName + "</a>"
                            + "<p class='title-time'>上传日期：" + data[i].CreateDate + "</p>"
                            + "</div></li>";
                    }
                    str += "</ul>";
                    $("#ChannelCourse").html(str);
                }

            }
        });
    }




</script>

<script src="<%= path%>/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>

<script src="<%= path%>/js/tagscloud.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path%>/js/topicCourse.js" type="text/javascript" charset="utf-8"></script>



</body>
<script>
    window.onload = function () {
        var xhr;
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            try {
                xhr = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }

        //活动分类


    };
</script>
</html>