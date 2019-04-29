<%--
  Created by IntelliJ IDEA.
  User: Zhilin
  Date: 2019/4/17
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        String path =request.getContextPath();
    %>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="Shortcut Icon" href=/favicon.ico>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/head.css" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/article.css" />
    <link href="<%=path %>/css/Page.css" type="text/css" rel="stylesheet" />


    <title>宜兴终身学习网</title>




    <link href="css/Page.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_234130_nem7eskcrkpdgqfr.css">

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




<div class="mainwidth1 mt20 clearfix">






    <div class="pc_left l">

        <div class="c_left_menu_wrapper1">
            <div class="treetitle"> <p>活动分类</p></div>
            <ul class="c_left_menu">
                <li class="c_menu_li">
                    <a class="c_menu_main" href="/Course/Index/242" onmouseover="ShowChildrenChannel(242)">
                        <div class="c_menu_icon"></div>
                        <div class="c_menu_name">
                            遗产保护
                        </div>
                        <div class="c_menu_dot"></div>
                    </a>
                    <ul class="c_submenu" id="Channel_242">
                        <input type="hidden" name="ctl00$ctl11$rpt_channel$ctl0(0)$hid1" id="ctl11_rpt_channel_hid1_0" value="400">

                    </ul>
                </li>
                <li class="c_menu_li">
                    <a class="c_menu_main" href="/Course/Index/211" onmouseover="ShowChildrenChannel(211)">
                        <div class="c_menu_icon"></div>
                        <div class="c_menu_name">
                            美食保护
                        </div>
                        <div class="c_menu_dot"></div>
                    </a>
                    <ul class="c_submenu" id="Channel_211">
                        <input type="hidden" name="ctl00$ctl11$rpt_channel$ctl0(0)$hid1" id="ctl11_rpt_channel_hid1_0" value="400">

                    </ul>
                </li>
                <li class="c_menu_li">
                    <a class="c_menu_main" href="/Course/Index/197" onmouseover="ShowChildrenChannel(197)">
                        <div class="c_menu_icon"></div>
                        <div class="c_menu_name">
                            民俗保护
                        </div>
                        <div class="c_menu_dot"></div>
                    </a>
                    <ul class="c_submenu" id="Channel_197">
                        <input type="hidden" name="ctl00$ctl11$rpt_channel$ctl0(0)$hid1" id="ctl11_rpt_channel_hid1_0" value="400">

                    </ul>
                </li>


            </ul>
        </div>
        <div class="c_left_menu_wrapper2">
            <div class="menu-course-title">
                推荐活动
            </div>
            <ul class="menu-cul course-tj">
                <li class="on">
                    <a href="/Course/Details?id=7161">
                        <p><span>1</span>小企业会计准则...</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/2cf03829-425c-46a3-b661-a2bc6520b50a.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=7161">
                        <p><span>1</span>小企业会计准则...</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/2cf03829-425c-46a3-b661-a2bc6520b50a.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=5810">
                        <p><span>2</span>爵士舞（一）</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/dc39ccab-08e5-4572-8353-68df3d5bdc4c.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=5834">
                        <p><span>3</span>合理饮食 远离慢...</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/2b68f6a6-e6d8-44da-8242-3bff5ba0a564.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=2711">
                        <p><span>4</span>紫砂艺术欣赏</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/ab36e2d2-7ae0-4068-a36e-65fab0ac4ae5.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=11389">
                        <p><span>5</span>迪士尼纪录片 我...</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/9b570d61-f275-4597-9fac-1a79ddc01467.jpg" />
                    </a>
                </li>




            </ul>
        </div>
        <div class="c_left_menu_wrapper2">
            <div class="menu-course-title">
                热门活动
            </div>
            <ul class="menu-cul course-hot">
                <li class="on">
                    <a href="/Course/Details?id=4641">
                        <p><span>1</span>乌龟的繁殖</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course//乌龟的繁殖.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=7281">
                        <p><span>2</span>社会关系的拓展...</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=508">
                        <p><span>3</span>少儿美术快乐营3</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course/a794b9c5-6287-4528-bc86-d375b50208ec.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=4619">
                        <p><span>4</span>篱笆形枣园</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course//篱笆形枣园.jpg" />
                    </a>
                </li>
                <li class="">
                    <a href="/Course/Details?id=4620">
                        <p><span>5</span>草地枣园</p>
                        <img src="http://112.25.215.35:80/Resource/Images/Course//草地枣园.jpg" />
                    </a>
                </li>


            </ul>
        </div>

    </div>





    <!---活动模块JS-->
    <script type="text/javascript">


        function ShowChildrenChannel(channelId) {
            //var channelId = $(".course_left_on input[type=hidden]").val();
            //console.log("channelId：" + channelId);
            var params = {
                ParentId: channelId  //频道
                //Limit:8   //记录数
            }

            $.ajax({
                type: "post", //type：(string)请求方式，POST或GET
                dataType: "json", //dataType：(string)预期返回的数据类型。xml,html,json,text等
                url: "/Course/LoadChildrenChannelJson", //url：(string)发送请求的地址，可以是服务器页面也可以是WebService动作。
                data: params,
                success: function (data) {
                    var str = "";
                    if (data.code == '0') {
                        var data = data.data;
                        for (i in data) {

                            str += "<li>";
                            str += "<a href=\"/Course/Index?id=" + data[i].ChannelId + "\"> " + data[i].ChannelName + "</a>";
                            str += " </li>";
                        }
                        $("#Channel_" + channelId).html(str);
                    }

                }
            });
        }

    </script>

    <div class="pc_right r">
        <div class="pc-key">
            <div class="pc-key-show">
                <div class="key-show-title l">
                    活动标题： <input type="text" name="" id="CourseName" value="" />
                </div>
                <div class="key-show-date l clearfix">
                    <div class="show-date-p1 l">
                        发布日期：
                    </div>
                    <div class="show-date1 l">
                        <img src="<%=path %>/images/rili.png" class="starttime_img"><input type="text" placeholder="2017-01-10" class="starttime" />
                    </div>
                    <div class="show-date-p2 l">-</div>
                    <div class="show-date2 l">
                        <img src="<%=path %>/images/rili.png" class="endtime_img"><input type="text" placeholder="2017-01-13" class="endtime" />
                    </div>
                    <div id='schedule-box' class="boxshaw"></div>

                    <div id='schedule-box1' class="boxshaw"></div>
                </div>
                <div class="key-show-search l">
                    <a href="javascript:void();" onclick="SearchCourse();"><img src="<%=path %>/images/search-img.png" />检索</a>
                </div>
                <div class="key-show-close r">
                    <a href="javascript:;"><img src="<%=path %>/images/close.png" /></a>
                </div>
            </div>
            <div class="pc-key-hide">
                <a href="javascript:;">打开索引 <img src="<%=path %>/images/search-img.png" /></a>
            </div>
        </div>
        <div class="cm-lesson">
            <div class="cm-lesson-top clearfix">
                <div class="cm-lesson-top1 l">
                    全部活动
                </div>
                <div class="cm-lesson-top2 l">
                    排序 <span id="span1" onclick="location.href = '/Course/Index/242?type=1&amp;pageSize=20'">最新  <img src="<%=path %>/images/arrow-down1.png" /> </span>
                    <span id="span2" onclick="location.href = '/Course/Index/242?type=2&amp;pageSize=20'">最热  <img src="<%=path %>/images/arrow-down.png" /> </span>
                </div>
                <div class="cm-lesson-top3 l">
                    <p class="l">视图</p>
                    <ul class="l">
                        <li class="on"><img src="images/sort2-img2.png" /></li>
                        <li><img src="images/sort3-img1.png" /></li>
                        <li><img src="images/sort3-img1.png" /></li>
                    </ul>
                </div>
                <div class="cm-lesson-top4 l">
                    <p class="l">条目</p>
                    <ul class="l">
                        <li id="pagesize20" onclick="location.href='/Course/Index/242?pageSize=20&amp;type=1'">20</li>
                        <li id="pagesize25" onclick="location.href='/Course/Index/242?pageSize=25&amp;type=1'">25</li>
                        <li id="pagesize30" onclick="location.href='/Course/Index/242?pageSize=30&amp;type=1'">30</li>
                    </ul>
                </div>
            </div>

            <div class="cm-lesson-con">
                <ul class="clearfix">
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10414">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="<%=path %>/images/eye-1.png" />476次</span> <span class="r"><img src="images/clock.png" />1080秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">市场需求、供给与均衡...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10454">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="/images/eye-1.png" />1666次</span> <span class="r"><img src="<%=path %>/images/clock.png" />864秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">所得税会计的处理方法...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10455">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />1230次</span> <span class="r"><img src="<%=path %>/images/clock.png" />780秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">租赁会计准则操作实务...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10456">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />1079次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1403秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">租赁会计准则操作实务...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10457">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />987次</span> <span class="r"><img src="<%=path %>/images/clock.png" />840秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">首次执行企业会计准则...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10458">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />930次</span> <span class="r"><img src="<%=path %>/images/clock.png" />886秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">首次执行企业会计准则...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10459">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />973次</span> <span class="r"><img src="<%=path %>/images/clock.png" />720秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">会计政策、会计估计变...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10460">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />862次</span> <span class="r"><img src="<%=path %>/images/clock.png" />686秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">会计政策、会计估计变...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10461">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />890次</span> <span class="r"><img src="<%=path %>/images/clock.png" />900秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">外币折算会计准则1</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10462">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />839次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1030秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">外币折算会计准则2</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10463">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />843次</span> <span class="r"><img src="<%=path %>/images/clock.png" />900秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">企业合并的会计处理1</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10464">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />723次</span> <span class="r"><img src="<%=path %>/images/clock.png" />899秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">企业合并的会计处理2</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10465">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />780次</span> <span class="r"><img src="<%=path %>/images/clock.png" />736秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">企业合并的会计处理3</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10480">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />798次</span> <span class="r"><img src="<%=path %>/images/clock.png" />900秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">财务报告类准则会计处...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10481">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />749次</span> <span class="r"><img src="<%=path %>/images/clock.png" />899秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">财务报告类准则会计处...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10482">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />788次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1121秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">财务报告类准则会计处...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10483">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />841次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1080秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">新会计准则实施对上市...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10484">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />848次</span> <span class="r"><img src="<%=path %>/images/clock.png" />460秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">新会计准则实施对上市...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10485">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />768次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1080秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">新会计准则实施对上市...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                    <li class="lesson-brief1">
                        <div class="lb1-con">
                            <a href="/Course/Details?id=10486">
                                <div class="lb1-con-hd">
                                    <img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" class="lb1-con-hd-img" />
                                    <p class="clearfix"><span class="l"><img src="images/eye-1.png" />714次</span> <span class="r"><img src="<%=path %>/images/clock.png" />1051秒</span></p>
                                </div>
                                <div class="lb1-con-bd">
                                    <p class="lb1-con-bd-p1">新会计准则实施对上市...</p>
                                    <p class="lb1-con-bd-p2">上传日期：2017-08-15</p>
                                </div>
                            </a>

                        </div>
                    </li>
                </ul>
                <ul class='pages'><li class='pgNext'><a href="/Course/Index/242?page=1">首页</a></li><li class='pgNext'><a href="#">上一页</a></li><li class='page-number'><span>1</span><a href="/Course/Index/242?page=2">2</a><a href="/Course/Index/242?page=3">3</a><a href="/Course/Index/242?page=4">4</a><a href="/Course/Index/242?page=5">5</a><a href="/Course/Index/242?page=6">6</a><a href="/Course/Index/242?page=7">7</a><a href="/Course/Index/242?page=8">8</a><a href="/Course/Index/242?page=9">9</a><a href="/Course/Index/242?page=10">10</a></li><li class='pgNext'><a href="/Course/Index/242?page=2">下一页</a></li><li class='pgNext'><a href="/Course/Index/242?page=13">末页</a></li></ul>
            </div>
            <div class="cm-lesson-con" style="display:none;">
                <div class="cm-lesson-title">
                    <ul class="clearfix">
                        <li class="cm-lesson-title1">编号</li>
                        <li class="cm-lesson-title2">活动标题</li>
                        <li class="cm-lesson-title3">点击数</li>
                        <li class="cm-lesson-title3">时长</li>
                        <li class="cm-lesson-title4">上传时间</li>
                    </ul>
                </div>
                <table border="" cellspacing="" cellpadding="" class="cml-table">
                    <tr>
                        <th width="107">10414</th>
                        <th width="418"><a href="/course/details?id=10414">市场需求、供给与均衡...</a></th>
                        <th width="80">476</th>
                        <th width="80">1080</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10454</th>
                        <th width="418"><a href="/course/details?id=10454">所得税会计的处理方法...</a></th>
                        <th width="80">1666</th>
                        <th width="80">864</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10455</th>
                        <th width="418"><a href="/course/details?id=10455">租赁会计准则操作实务...</a></th>
                        <th width="80">1230</th>
                        <th width="80">780</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10456</th>
                        <th width="418"><a href="/course/details?id=10456">租赁会计准则操作实务...</a></th>
                        <th width="80">1079</th>
                        <th width="80">1403</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10457</th>
                        <th width="418"><a href="/course/details?id=10457">首次执行企业会计准则...</a></th>
                        <th width="80">987</th>
                        <th width="80">840</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10458</th>
                        <th width="418"><a href="/course/details?id=10458">首次执行企业会计准则...</a></th>
                        <th width="80">930</th>
                        <th width="80">886</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10459</th>
                        <th width="418"><a href="/course/details?id=10459">会计政策、会计估计变...</a></th>
                        <th width="80">973</th>
                        <th width="80">720</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10460</th>
                        <th width="418"><a href="/course/details?id=10460">会计政策、会计估计变...</a></th>
                        <th width="80">862</th>
                        <th width="80">686</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10461</th>
                        <th width="418"><a href="/course/details?id=10461">外币折算会计准则1</a></th>
                        <th width="80">890</th>
                        <th width="80">900</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10462</th>
                        <th width="418"><a href="/course/details?id=10462">外币折算会计准则2</a></th>
                        <th width="80">839</th>
                        <th width="80">1030</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10463</th>
                        <th width="418"><a href="/course/details?id=10463">企业合并的会计处理1</a></th>
                        <th width="80">843</th>
                        <th width="80">900</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10464</th>
                        <th width="418"><a href="/course/details?id=10464">企业合并的会计处理2</a></th>
                        <th width="80">723</th>
                        <th width="80">899</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10465</th>
                        <th width="418"><a href="/course/details?id=10465">企业合并的会计处理3</a></th>
                        <th width="80">780</th>
                        <th width="80">736</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10480</th>
                        <th width="418"><a href="/course/details?id=10480">财务报告类准则会计处...</a></th>
                        <th width="80">798</th>
                        <th width="80">900</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10481</th>
                        <th width="418"><a href="/course/details?id=10481">财务报告类准则会计处...</a></th>
                        <th width="80">749</th>
                        <th width="80">899</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10482</th>
                        <th width="418"><a href="/course/details?id=10482">财务报告类准则会计处...</a></th>
                        <th width="80">788</th>
                        <th width="80">1121</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10483</th>
                        <th width="418"><a href="/course/details?id=10483">新会计准则实施对上市...</a></th>
                        <th width="80">841</th>
                        <th width="80">1080</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10484</th>
                        <th width="418"><a href="/course/details?id=10484">新会计准则实施对上市...</a></th>
                        <th width="80">848</th>
                        <th width="80">460</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10485</th>
                        <th width="418"><a href="/course/details?id=10485">新会计准则实施对上市...</a></th>
                        <th width="80">768</th>
                        <th width="80">1080</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                    <tr>
                        <th width="107">10486</th>
                        <th width="418"><a href="/course/details?id=10486">新会计准则实施对上市...</a></th>
                        <th width="80">714</th>
                        <th width="80">1051</th>
                        <th width="180">2017-08-15</th>
                    </tr>
                </table>
                <ul class='pages'><li class='pgNext'><a href="/Course/Index/242?page=1">首页</a></li><li class='pgNext'><a href="#">上一页</a></li><li class='page-number'><span>1</span><a href="/Course/Index/242?page=2">2</a><a href="/Course/Index/242?page=3">3</a><a href="/Course/Index/242?page=4">4</a><a href="/Course/Index/242?page=5">5</a><a href="/Course/Index/242?page=6">6</a><a href="/Course/Index/242?page=7">7</a><a href="/Course/Index/242?page=8">8</a><a href="/Course/Index/242?page=9">9</a><a href="/Course/Index/242?page=10">10</a></li><li class='pgNext'><a href="/Course/Index/242?page=2">下一页</a></li><li class='pgNext'><a href="/Course/Index/242?page=13">末页</a></li></ul>
            </div>
            <div class="cm-lesson-con" style="display:none;">
                <ul>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10414"><img src="http://112.25.215.35:80/Resource/Images/Course/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10414">市场需求、供给与均衡价格</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：张云</span>
                                        <span>时长：1080</span>
                                        <span>点击次数：476次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：《企业会计准则》及《所得税准则》的颁布；所得税会计的形成及特点；所得税会计的处理程序；计税基础。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10454"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10454">所得税会计的处理方法2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：张敦力</span>
                                        <span>时长：864</span>
                                        <span>点击次数：1666次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：所得税对企业的影响及核算方法；所得税会计准则的难点；所得税会计准则的主要变化。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10455"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10455">租赁会计准则操作实务1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：张敦力</span>
                                        <span>时长：780</span>
                                        <span>点击次数：1230次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：租赁业务的基本类别；租赁引发的会计问题；融资租赁中承租人的会计处理；融资租赁中出租人的会计处理；经营租赁中承租人、出租人的会计处理。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10456"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10456">租赁会计准则操作实务2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：张敦力</span>
                                        <span>时长：1403</span>
                                        <span>点击次数：1079次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：租赁业务的基本类别；租赁引发的会计问题；融资租赁中承租人的会计处理；融资租赁中出租人的会计处理；经营租赁中承租人、出租人的会计处理。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10457"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10457">首次执行企业会计准则1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：840</span>
                                        <span>点击次数：987次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：首次执行企业会计准则的范围与定义；首次执行企业会计准则的要点；首次执行企业会计准则与国际会计准则比较；首次执行企业会计准则与现行会计处理比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10458"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10458">首次执行企业会计准则2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：886</span>
                                        <span>点击次数：930次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：首次执行企业会计准则的范围与定义；首次执行企业会计准则的要点；首次执行企业会计准则与国际会计准则比较；首次执行企业会计准则与现行会计处理比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10459"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10459">会计政策、会计估计变更和差错更正1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：720</span>
                                        <span>点击次数：973次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：会计政策、会计估计变更和差错更正的范围、定义和要点；会计政策、会计估计变更和差错更正准则与国际会计准则的比较；会计政策、会计估计变更和差错更正新旧准则比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10460"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10460">会计政策、会计估计变更和差错更正2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：686</span>
                                        <span>点击次数：862次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：会计政策、会计估计变更和差错更正的范围、定义和要点；会计政策、会计估计变更和差错更正准则与国际会计准则的比较；会计政策、会计估计变更和差错更正新旧准则比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10461"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10461">外币折算会计准则1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：900</span>
                                        <span>点击次数：890次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：外币折算的范围和定义；外币折算准则的主要内容；外币折算准则与国际会计准则比较；新旧外币折算规定比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10462"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10462">外币折算会计准则2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：1030</span>
                                        <span>点击次数：839次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：外币折算的范围和定义；外币折算准则的主要内容；外币折算准则与国际会计准则比较；新旧外币折算规定比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10463"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10463">企业合并的会计处理1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：900</span>
                                        <span>点击次数：843次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：企业合并的范围和定义；企业合并准则的主要内容；企业合并准则和国际财务报告准则比较；新旧企业合并规定比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10464"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10464">企业合并的会计处理2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：899</span>
                                        <span>点击次数：723次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：企业合并的范围和定义；企业合并准则的主要内容；企业合并准则和国际财务报告准则比较；新旧企业合并规定比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10465"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10465">企业合并的会计处理3</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：唐予华</span>
                                        <span>时长：736</span>
                                        <span>点击次数：780次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：企业合并的范围和定义；企业合并准则的主要内容；企业合并准则和国际财务报告准则比较；新旧企业合并规定比较。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10480"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10480">财务报告类准则会计处理1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：宗文龙</span>
                                        <span>时长：900</span>
                                        <span>点击次数：798次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：分部报告准则；每股收益准则；资产负债表日后事项准则；中期财务报告准则；现金流量表准则。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10481"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10481">财务报告类准则会计处理2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：宗文龙</span>
                                        <span>时长：899</span>
                                        <span>点击次数：749次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：分部报告准则；每股收益准则；资产负债表日后事项准则；中期财务报告准则；现金流量表准则。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10482"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10482">财务报告类准则会计处理3</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：宗文龙</span>
                                        <span>时长：1121</span>
                                        <span>点击次数：788次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：分部报告准则；每股收益准则；资产负债表日后事项准则；中期财务报告准则；现金流量表准则。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10483"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10483">新会计准则实施对上市公司的影响1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：沈雅琴</span>
                                        <span>时长：1080</span>
                                        <span>点击次数：841次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：新会计准则实施对上市公司的影响；新会计准则对上市公司经营行为的影响。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10484"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10484">新会计准则实施对上市公司的影响2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：沈雅琴</span>
                                        <span>时长：460</span>
                                        <span>点击次数：848次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：新会计准则实施对上市公司的影响；新会计准则对上市公司经营行为的影响。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10485"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10485">新会计准则实施对上市公司影响的案例分析1</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：沈雅琴</span>
                                        <span>时长：1080</span>
                                        <span>点击次数：768次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：新会计准则实施对上市公司影响的具体表现；新会计准则影响上市公司行业案例；上市公司实施新准则的准备。
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Course/Details?id=10486"><img src="http://112.25.215.35:80/Resource/Images/Course/会计实务.jpg" onerror="this.src = '<%=path %>/images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 l">
                                    <p class="lb2-right-hd1-p1"><a href="/course/details?id=10486">新会计准则实施对上市公司影响的案例分析2</a></p>
                                    <p class="lb2-right-hd1-p2">

                                        <span>分类：会计专栏</span>
                                        <span>演讲人：沈雅琴</span>
                                        <span>时长：1051</span>
                                        <span>点击次数：714次</span>
                                        <span>上传时间：2017-08-15</span>
                                    </p>

                                </div>
                                <div class="lb2-right-hd2 l">
                                    内容简介：本活动主要内容有：新会计准则实施对上市公司影响的具体表现；新会计准则影响上市公司行业案例；上市公司实施新准则的准备。
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class='pages'><li class='pgNext'><a href="/Course/Index/242?page=1">首页</a></li><li class='pgNext'><a href="#">上一页</a></li><li class='page-number'><span>1</span><a href="/Course/Index/242?page=2">2</a><a href="/Course/Index/242?page=3">3</a><a href="/Course/Index/242?page=4">4</a><a href="/Course/Index/242?page=5">5</a><a href="/Course/Index/242?page=6">6</a><a href="/Course/Index/242?page=7">7</a><a href="/Course/Index/242?page=8">8</a><a href="/Course/Index/242?page=9">9</a><a href="/Course/Index/242?page=10">10</a></li><li class='pgNext'><a href="/Course/Index/242?page=2">下一页</a></li><li class='pgNext'><a href="/Course/Index/242?page=13">末页</a></li></ul>
            </div>
        </div>
    </div>
</div>



<%@include file="foot.jsp"%>



<script src="<%=path %>/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="<%=path %>/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path %>/js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path %>/js/schedule.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path %>/js/jquery.tiles.js"></script>
<script src="<%=path %>/Content/layui/src/layui.js"></script>





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
                url = '/Course/Index/242' + "?keyWords=" + keyword;
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


<script src="<%=path %>/js/newjs/article.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function SearchCourse() {
        var coursename = $("#CourseName").val();
        var starttime = $(".starttime").val();
        var endtime = $(".endtime").val();
        location.href = "/Course/Index?keyWords=" + coursename + "&StartDate=" + starttime + "&EndDate=" + endtime;
    }


    $(document).ready(function () {
        $("#pagesize20").addClass("on");
        $("#span1").addClass("on");
        $(".cm-lesson-top2 span").find("img").attr("src", "<%=path %>/images/arrow-down.png");
        $("#span1").find("img").attr("src", "images/arrow-down1.png");


        $(".c_menu_li").mouseover(function () {
            $(this).find(".c_submenu").show();
        }).mouseleave(function () {
            $(this).find(".c_submenu").hide();
        });
        //推荐活动
        $(".menu-cul li").mouseover(function () {
            $(".menu-cul li").removeClass("on");
            $(this).addClass("on");
        });

        $(".starttime").click(function () {
            $("#schedule-box").show();
        });
        //日历的选择
        $(".starttime_img").click(function () {
            $("#schedule-box").show();
        });
        var mySchedule = new Schedule({
            el: '#schedule-box',
            //date: '2018-9-20',
            clickCb: function (y, m, d) {
                var aa = document.querySelector('.starttime').innerHTML = y + '-' + m + '-' + d;
                $(".starttime").val(aa);
                $("#schedule-box").hide();
            },
            nextMonthCb: function (y, m, d) {
                document.querySelector('.starttime').innerHTML = y + '-' + m + '-' + d
            },
            nextYeayCb: function (y, m, d) {
                document.querySelector('.starttime').innerHTML = y + '-' + m + '-' + d
            },
            prevMonthCb: function (y, m, d) {
                document.querySelector('.starttime').innerHTML = y + '-' + m + '-' + d
            },
            prevYearCb: function (y, m, d) {
                document.querySelector('.starttime').innerHTML = y + '-' + m + '-' + d
            }
        });

        $(".endtime").click(function () {
            $("#schedule-box1").show();
        });
        $(".endtime_img").click(function () {
            $("#schedule-box1").show();
        });
        //$("#schedule-box1").blur(function () {
        //    $("#schedule-box1").hide();
        //});
        //$("#schedule-box").blur(function () {
        //    $("#schedule-box").hide();
        //});
        var mySchedule1 = new Schedule({
            el: '#schedule-box1',
            //date: '2018-9-20',
            clickCb: function (y, m, d) {
                var bb = document.querySelector('.endtime').innerHTML = y + '-' + m + '-' + d;
                $(".endtime").val(bb);
                $("#schedule-box1").hide();
            },
            nextMonthCb: function (y, m, d) {
                document.querySelector('.endtime').innerHTML = y + '-' + m + '-' + d;
            },
            nextYeayCb: function (y, m, d) {
                document.querySelector('.endtime').innerHTML = y + '-' + m + '-' + d;
            },
            prevMonthCb: function (y, m, d) {
                document.querySelector('.endtime').innerHTML = y + '-' + m + '-' + d;
            },
            prevYearCb: function (y, m, d) {
                document.querySelector('.endtime').innerHTML = y + '-' + m + '-' + d;
            }
        });

        $(".pc-key-hide a").click(function () {
            $(".pc-key-hide").hide();
            $(".pc-key-show").show();
        });
        $(".key-show-close").click(function () {
            $(".pc-key-hide").show();
            $(".pc-key-show").hide();
        });
        //活动分类
        $(".c_menu_li").mouseover(function () {
            $(this).find(".c_menu_main").css({ "color": "#fff" })
        }).mouseleave(function () {
            $(this).find(".c_menu_main").css({ "color": "#000" })
        })
        //导航
        //$(".nav ul li").mouseover(function () {
        //    $(this).find("a").css({ "color": "#ffc617" })
        //}).mouseleave(function () {
        //    $(this).find("a").css({ "color": "#fff" })
        //});
        //排序最新最热
        $(".cm-lesson-top2 span").on("click", function () {
            $(this).addClass("on").siblings().removeClass("on");
            $(".cm-lesson-top2 span").find("img").attr("src", "<%=path %>/images/arrow-down.png")
            $(this).find("img").attr("src", "<%=path %>/images/arrow-down1.png")
        })
        //条目切换
        $(".cm-lesson-top4 ul li").click(function () {
            $(".cm-lesson-top4 ul li").removeClass("on");
            $(this).addClass("on")
        });
        $(".lesson-brief1").mouseover(function () {
            $(this).find(".lb1-con-hd p").show();
        }).mouseleave(function () {
            $(this).find(".lb1-con-hd p").hide();
        })
        //页面间的内部切换
        $(".cm-lesson-top3 ul li").on("click", function () {
            var index = $(this).index();
            var length = $(".cm-lesson-top3 ul li").length;
            $(".cm-lesson-top3 ul li").removeClass("on");
            $(this).addClass("on");
            $(".cm-lesson-con").hide();
            $(".cm-lesson-con").eq(index).show();
            for (var i = 0; i < length; i++) {
                var src1 = $(".cm-lesson-top3 ul li").eq(i).find("img").attr("src");
                var src2 = src1.slice(0, 17);
                $(".cm-lesson-top3 ul li").eq(i).find("img").attr("src", src2 + "1.png")
            }
            var src3 = $(this).find("img").attr("src");
            var src4 = src3.slice(0, 17);
            $(this).find("img").attr("src", src4 + "2.png")
        });
        $(".cml-table tr").mouseover(function () {
            $(this).find("a").css({ "color": "#5166d7" })
        }).mouseleave(function () {
            $(this).find("a").css({ "color": "#000" })
        })

    });
</script>



</body>
</html>


