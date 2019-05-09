<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/25
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% String path = request.getContextPath(); %>
    <meta charset="utf-8"/>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="Shortcut Icon" href=/favicon.ico>
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/firstPage.css">
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/head.css"/>
    <title>乡土文化教育网</title>

    <link href="<%= path%>/Content/layui/src/css/layui.css" rel="stylesheet">

    <link href="<%= path%>/css/lb-default.css" rel="stylesheet">
    <link href="<%= path%>/css/jquery.tiles.min.css" rel="stylesheet">

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
<%@include file="head.jsp" %>


<!--top-->
<div class="banner_lb">
    <div class="hd">
        <ul class="clearfix">
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <div class="bd">
        <ul>
            <li>
                <a href="http://www.yxzsxxw.com/" target="_blank"><img
                        src="http://112.25.215.35:80/Resource/Images/Banner/Primary/24ff62e2-5ae6-4848-b4aa-eabfe0637999.jpg"/></a>


            </li>


            <li>

                <a href="http://www.yxzsxxw.com/" target="_blank"><img
                        src="http://112.25.215.35:80/Resource/Images/Banner/Primary/58a5b584-9f0d-43a4-bc44-623a69db0a5b.jpg"/></a>
            </li>
            <li>
                <a href="http://www.yxzsxxw.com/" target="_blank"><img
                        src="http://112.25.215.35:80/Resource/Images/Banner/Primary/db0fbd00-3035-457b-83b9-8044564fc1f6.jpg"/></a>
            </li>


        </ul>
    </div>


</div>

<!--新闻动态和排名-->
<div class="newNotice-login clearfix">
    <div class="newNotice l">
        <!--图片新闻-->
        <div class="news l">
            <div class="news-title">
                图片新闻
            </div>
            <div class="sqhd_lb">
                <div class="hd">
                    <ul class="clearfix">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </div>
                <div class="bd">
                    <ul id="show">
                        <%--                        <li>--%>
                        <%--                            <a href="file:///C:/Article/Details?id=7546" target="_blank">--%>
                        <%--&lt;%&ndash;--%>
                        <%--                                <img src="Index_files/6e0fc38d-8548-4002-9567-b0f68a10bc39.jpg" onerror="this.src = &#39;/images/renwenxiuyang.jpg&#39;">--%>
                        <%--&ndash;%&gt;--%>
                        <%--                                <div class="text">--%>
                        <%--                                    <p>乡愁不老 思念不改—...</p>--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                        <%--                        <li>--%>
                        <%--                            <a href="file:///C:/Article/Details?id=7473" target="_blank">--%>
                        <%--&lt;%&ndash;--%>
                        <%--                                <img src="Index_files/2510b36d-21f0-4421-8d3f-179c4e142f88.jpg" onerror="this.src = &#39;/images/renwenxiuyang.jpg&#39;">--%>
                        <%--&ndash;%&gt;--%>
                        <%--                                <div class="text">--%>
                        <%--                                    <p>乡音嘹亮，唱响精彩万...</p>--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                        <%--                        <li>--%>
                        <%--                            <a href="file:///C:/Article/Details?id=7354" target="_blank">--%>
                        <%--&lt;%&ndash;--%>
                        <%--                                <img src="Index_files/a9f07aec-a1ad-48f4-81dc-8b6d2e2ba061.jpg" onerror="this.src = &#39;/images/renwenxiuyang.jpg&#39;">--%>
                        <%--&ndash;%&gt;--%>
                        <%--                                <div class="text">--%>
                        <%--                                    <p>2018年度全国会计专业...</p>--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                    </ul>
                </div>

            </div>
        </div>
        <div class="notice l">
            <div class="notice-title clearfix">
                <div class="notice-title-list l">
                    <ul>
                        <li class="on">新闻动态</li>
                        <li>通知公告</li>
                    </ul>
                </div>
                <a href="/Article/Index" class="notice-more"><img src="images/more.png"></a>
            </div>
            <div class="notice-con">
                <div class="ncl-first clearfix">
                    <p class="nclf-icon l"><img src="<%= path%>/images/new-up.png"></p>
                    <p class="nclf-text l" style="cursor:pointer;"
                       onclick="location.href = &#39;/Article/Details?id=7264&#39;">xx村被认定为国家级非物质文化教育示范村</p>
                </div>
                <ul id="news">
                    <%--                    <li><a href="file:///C:/Article/Details?id=8194">【04-12】<span style="color:#FF9933">【荐】</span>西渚镇社区教育工作会议暨业务培训班顺利召开</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8193">【04-12】周铁镇隆重举办2019年竺山风筝节</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8192">【04-12】周铁社区教育中心举办《三国演义》图片展</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8183">【04-08】缅怀革命先烈 共筑远大理想——徐舍镇开展青少年清明...</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8182">【04-08】“追寻烈士足迹，重温入党誓词”祭扫烈士墓主题党日活...</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8181">【04-05】新时代文明实践在太华：红色热土传承红色精神，太华缅...</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=8180">【04-03】缅怀先烈 牢记使命</a></li>--%>
                </ul>

            </div>
            <div class="notice-con" style="display: none;">
                <div class="ncl-first clearfix">
                    <p class="nclf-icon l"><img src="<%= path%>/images/new-up.png"></p>
                    <p class="nclf-text l" style="cursor:pointer;"
                       onclick="location.href = &#39;/Article/Details?id=7660&#39;">“乡土文化教育网”投稿文章发布规则(试行)</p>

                </div>
                <ul id="news2">
                    <%--                    <li><a href="file:///C:/Article/Details?id=8190">【04-11】<span style="color:#FF9933">【荐】</span>“乡土文化教育网”2018年度奖励领取通知</a></li>                                                    <li><a href="file:///C:/Article/Details?id=8076">【03-09】2018年度“乡土文化教育网”学习币兑换通知及年度奖励...</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=6769">【03-21】“乡土文化教育网”2017年度奖励领取通知</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=6606">【02-24】2017年度“乡土文化教育网”学习币兑换通知及年度奖励...</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=6198">【10-09】关于禁封恶意刷分账号的公示(2017.10)</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=5827">【04-28】关于组织召开民办教育新政解读培训会的预备通知</a></li>--%>
                    <%--                    <li><a href="file:///C:/Article/Details?id=5586">【03-03】“乡土文化教育网”2016年度奖励领取通知</a></li>--%>
                </ul>
            </div>
        </div>
    </div>
    <div class="login l">
        <div class="login-title">
            <img src="images/login-icon1.png">登录
        </div>
        <div class="logining">
            <div class="login-ac clearfix">
                <img src="<%= path%>/images/account-img.png"><input type="text" name="" id="userName" value=""
                                                                    placeholder="请输入用户名或账号">
            </div>
            <div class="login-pw">
                <img src="<%= path%>/images/password-img.png"><input type="password" name="" id="pwd" value=""
                                                                     placeholder="请输入用户密码">
            </div>
            <div class="logining-text clearfix">
                <p><a href="/User/Register">账号注册</a></p>
                <a href="/User/ForgetPwd">忘记密码？</a>
            </div>
            <div class="logining-bottom">
                <button type="submit" id="btnlogin" onclick="login()">
                    登 录
                </button>
            </div>
        </div>

        <div class="login-bottom clearfix">
            <div class="logined-bt">
                <p class="title">注册成员</p>
                <p class="num">82924人</p>
            </div>
            <div class="logined-bt">
                <p class="title">当前在线</p>
                <p class="num">3622人</p>
            </div>
            <div class="logined-bt boder-rn">
                <p class="title">总访问量</p>
                <p class="num">66657人</p>
            </div>
        </div>
    </div>
</div>


<!--乡土文化-->
<!-- <div class="courseCenter">
<div class="cc-title clearfix">
    <div class="cc-title1 l">
        乡土文化中心
    </div>
    <div class="cc-title2 l">
        <ul class="clearfix">
                            <li class="course_left_on" onmouseover="ShowCourse(242)">
                                <input type="hidden" id="hdCourseId" value="242">
                                <a target="_blank" href="/Course/Index/242">文化遗产</a>
                            </li>
                            <li onmouseover="ShowCourse(211)">
                                <a target="_blank" href="/Course/Index/211">特色美食</a>
                            </li>
                            <li onmouseover="ShowCourse(197)">
                                <a target="_blank" href="/Course/Index/197">名人趣事</a>
                            </li>
                            <li onmouseover="ShowCourse(190)">
                                <a target="_blank" href="/Course/Index/190">民俗风情</a>
                            </li>
                            <li onmouseover="ShowCourse(184)">
                                <a target="_blank" href="/Course/Index/184">文化遗址</a>
                            </li>
                            <li onmouseover="ShowCourse(178)">
                                <a target="_blank" href="/Course/Index/178">文化讯息</a>
                            </li>
        </ul>
    </div>
    <div style="margin-left: 90px" class="cc-title3 l">
        <a href="/Course"><img src="images/more.png"></a>
    </div>

</div>
    <div class="cc-con" id="ChannelCourse">
        正在加载文化信息...
    </div>
</div>

 -->
<div class="tc-prize clearfix">
    <!--土特产轮播图topicCourse-->
    <div class="tc l">
        <div class="tc-title clearfix">
            <p>乡土特产</p>
            <a href="/Course/TopicIndex"><img src="<%= path%>/images/more.png"></a>
        </div>
        <div class="tc-con">
            <div class="tcl-lb">
                <div class="bd">
                    <ul class="picList">
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11541" target="_blank">
                                    <img src="images/product/119684567.jpeg"/>

                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11541">
                                    无痛英语01建立模型理...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11542" target="_blank">
                                    <img src="images/product/119684567.jpeg"/>
                                    <%--
                                                                        <img src="Index_files/8af8ca21-bb5e-43d8-9ace-38315d70ae9a.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11542">
                                    无痛英语02英汉排序差...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11543" target="_blank">
                                    <img src="images/product/119684567.jpeg"/>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11543">
                                    无痛英语03主干定位</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11544" target="_blank">
                                    <img src="images/product/119684567.jpeg"/>
                                    <%--
                                                                        <img src="Index_files/4a66b8c6-7cbb-4e9a-bb32-02669d374f8e.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11544">
                                    无痛英语04英汉公式神...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11545" target="_blank">
                                    <img src="images/product/119684567.jpeg"/>
                                    <%--
                                                                        <img src="Index_files/dcdf7fb6-2deb-4dc4-9862-a18ffda647a0.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11545">
                                    无痛英语05英汉公式神...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11546" target="_blank">
                                    <%--
                                                                        <img src="Index_files/9c252126-f975-4928-8d5d-1b00f7190f71.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11546">
                                    无痛英语06修辞的排序...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11547" target="_blank">
                                    <%--
                                                                        <img src="Index_files/612ecc7d-d104-48e2-9a0a-f90ac8d562c1.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11547">
                                    无痛英语07修辞的排序...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11548" target="_blank">
                                    <%--
                                                                        <img src="Index_files/1954f1e1-2d5c-42ad-8d5a-8e83169ba4fb.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11548">
                                    无痛英语08并列不变序...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11549" target="_blank">
                                    <%--
                                                                        <img src="Index_files/aa931aa0-3a16-4a23-becd-82756b750cb7.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11549">
                                    无痛英语09并列不变序...</a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/Course/Details?id=11550" target="_blank">
                                    <%--
                                                                        <img src="Index_files/1267df7e-ad2c-44e0-b7a4-f7847b98c6aa.jpg">
                                    --%>
                                </a>
                            </div>
                            <div class="title">
                                <a href="/Course/Details?id=11550">
                                    无痛英语10公式大练兵</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
        </div>
    </div>
    <div class="prize r">
        <div class="prize-title clearfix">
            <div class="pt1 clearfix"><img src="images/prize-img2.png">
                <p>公布</p></div>

        </div>
        <div class="prize-con">
            <ul>
                <li>
                    <a href="javascript:;" class="prize-nl clearfix">
                        <div class="prize-nl-img l">
                            <img src="<%= path%>/images/prize-head.png"
                                 onerror="this.src =&#39;images/prize-head.png&#39;">
                        </div>
                        <div class="prize-nl-text l">
                            <p class="prize-nl-text1">用户名:qq1212</p>
                            <p class="prize-nl-text2" title="实物100元实物礼品(需本人领取)">奖品:实物100元实物礼品(...</p>
                            <p class="prize-nl-text3">获奖时间:2019/3/13</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" class="prize-nl clearfix">
                        <div class="prize-nl-img l">
                            <img src="<%= path%>/images/prize-head.png"
                                 onerror="this.src =&#39;images/prize-head.png&#39;">
                        </div>
                        <div class="prize-nl-text l">
                            <p class="prize-nl-text1">用户名:cheng1212</p>
                            <p class="prize-nl-text2" title="实物100元实物礼品(需本人领取)">奖品:实物100元实物礼品(...</p>
                            <p class="prize-nl-text3">获奖时间:2019/3/13</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" class="prize-nl clearfix">
                        <div class="prize-nl-img l">
                            <img src="<%= path%>/images/prize-head.png"
                                 onerror="this.src =&#39;images/prize-head.png&#39;">
                        </div>
                        <div class="prize-nl-text l">
                            <p class="prize-nl-text1">用户名:zqzqzq</p>
                            <p class="prize-nl-text2" title="实物100元实物礼品(需本人领取)">奖品:实物100元实物礼品(...</p>
                            <p class="prize-nl-text3">获奖时间:2019/3/12</p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="show-rank clearfix">
    <div class="show l">
        <div class="show-title clearfix">
            <p>乡土文化</p>
            <a href="/Article/Index?id=127"><img src="f../../images/more.png"></a>
        </div>
        <div class="show-con clearfix">
            <div class="sc-list">
                <a href="/Article/Index?id=128" class="sc-list-img scl1">
                    <img src="f../../images/show-img1.png">
                    <p class="sc-list-text">民宿风情</p>
                </a>
                <ul>
                    <li>
                        <a href="/Article/Details?id=7208">
                            万石荟萃~快来这里赏...
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=7071">
                            芹菜里谱写青春华章
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=6803">
                            行业尖兵热血搏击——...
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=6128">
                            相见甚是怀念！——『...
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sc-list">
                <a href="/Article/Index?id=129" class="sc-list-img scl2">
                    <img src="f../../images/show-img2.png">
                    <p class="sc-list-text">【名人趣事】</p>
                </a>
                <ul>
                    <li>
                        <a href="/Article/Details?id=6480">
                            曾经同枕漕桥河——致...
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=5723">
                            东城人的骄傲—无线电...
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=5327">
                            蛤蟆皮旧二胡成就辉煌...
                        </a>
                    </li>
                    <li>
                        <a href="/Article/Details?id=5324">
                            爱心荡漾送春风-----...
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sc-list" >
                <div id="sc_list_img_scl3">

                </div>
                <%--<a href="/Article/Index?id=131" class="sc-list-img scl3" >
                    <img id="img3">
                    &lt;%&ndash;<img src="f../../images/show-img3.png">&ndash;%&gt;
                    <p class="sc-list-text">【文化遗产】</p>
                </a>--%>
                <ul id="cs_show">

                </ul>
            </div>

        </div>
    </div>
    <div class="rank l">
        <div class="rank-title clearfix">
            <div class="rt1 l">
                排行榜
            </div>
            <div class="rt2 l">
                <a href="javascript:;" class="rank-c on">活动点击排行</a>/<a href="javascript:;" class="rank-s">文化排行</a>
            </div>
            <div class="rt3 l">

            </div>
        </div>
        <div class="rank-con rc-course">
            <ul>
                <li>
                    <a href="javascript:void();" class="rc-name">乌龟的繁殖 </a>
                    <p class="rc-score">12431</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">社会关系的拓展和管理... </a>
                    <p class="rc-score">11210</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">少儿美术快乐营3 </a>
                    <p class="rc-score">8255</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">篱笆形枣园 </a>
                    <p class="rc-score">6912</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">草地枣园 </a>
                    <p class="rc-score">6611</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">莆田黑鸭 </a>
                    <p class="rc-score">6089</p>
                </li>

            </ul>
        </div>
        <div class="rank-con rc-study">
            <ul>
                <li>
                    <a href="javascript:void();" class="rc-name">紫砂茶杯 </a>
                    <p class="rc-score">9850</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">皮影戏 </a>
                    <p class="rc-score">9623</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">华拉面 </a>
                    <p class="rc-score">9513</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">杭州宋城 </a>
                    <p class="rc-score">9505</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">西湖 </a>
                    <p class="rc-score">9397</p>
                </li>
                <li>
                    <a href="javascript:void();" class="rc-name">白娘子 </a>
                    <p class="rc-score">9245</p>
                </li>

            </ul>
        </div>


    </div>
</div>
<!-- 底部 -->
<%@include file="foot.jsp" %>

<div style="position: fixed;">

</div>

<!-- JS加载顺序的问题 会导致轮播图失效-->


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

    $(".footer-right").click(function () {
        $("html,body").animate({scrollTop: 0}, 500);
    });
</script>


<script src="<%=path%>/js/jquery-1.11.2.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/js/firstPage.js" type="text/javascript" charset="utf-8"></script>

<script src="<%=path%>/Content/layui/src/layui.js"></script>
<script src="<%=path%>/js/jquery.tiles.js"></script>
<!---客服JS-->

<!---课程模块JS-->
<%--<script type="text/javascript">
    (function init() {

        //初始化加载课程信息
        var channelId = $("#hdCourseId").val();
        ShowCourse(channelId);

    }());

    function ShowCourse(channelId) {
        //var channelId = $(".course_left_on input[type=hidden]").val();
        //console.log("channelId：" + channelId);
        var params = {
            ChannelType: channelId, //频道
            Limit: 8 //记录数
        }

        $.ajax({
            type: "post", //type：(string)请求方式，POST或GET
            dataType: "json", //dataType：(string)预期返回的数据类型。xml,html,json,text等
            url: "/Course/LoadModelJson", //url：(string)发送请求的地址，可以是服务器页面也可以是WebService动作。
            data: params,
            success: function(data) {
                var str = "<ul class=\"clearfix\">";
                if (data.code == '0') {
                    var data = data.data;
                    for (i in data) {
                        str += "<li class='cc-list' > "
                            + "<a href='/Course/Details/" + data[i].CourseId + "' class='cc-list-img'>"
                            + "<img src='" + data[i].CourseImage + "'onerror='this.src =\"/images/renwenxiuyang.jpg\"'/></a>"
                            + "<a href='/Course/Details?id=" + data[i].CourseId + "' class='cc-list-title'>"
                            + "<img src='/images/play.png'/>" + data[i].CourseName + "</a>"
                            + "</li>";
                    }
                    str += "</ul>";
                    $("#ChannelCourse").html(str);
                }

            }
        });
    }
    function func(s, n) {
        var s2 = s.slice(0, n).replace(/([^x00-xff])/g, "$1a").slice(0, n).replace(/([^x00-xff])a/g, "$1");
        if (s2 != s) {
            s2 += "...";
        }
        return s2;
    }
</script>--%>

<!---社区新闻动态更多-->
<script type="text/javascript">

    function ArticleMore() {
        var text = $(".nr_news_title1 ul li a.on").text().trim();
        if (text == '活动简报') {
            var link1 = '/Article/Index?id=120';
            $("#NewsMore").attr('href', link1);
        } else {
            var link2 = '/Article/Index?id=144';
            $("#NewsMore").attr('href', link2);
        }
        // console.log(text);
    }
</script>

<!---课程推荐更多-->
<script type="text/javascript">

    function CourseMore() {
        var text = $("#RecommendCourseTab li a.on").text().trim();
        if (text == '推荐课程') {
            var link1 = '/Course/Index?type=0';
            $("#RecommendCourseTabMore").attr('href', link1);
        } else {
            var link2 = '/Course/Index?type=1';
            $("#RecommendCourseTabMore").attr('href', link2);
        }
    }
</script>

<!---登录-->
<script type="text/javascript">
    function login() {
        var userName = $.trim($("#userName").val());
        var password = $.trim($("#pwd").val());
        var remember = $("input[type='checkbox']").is(':checked');
        //var Remeber = $("#Remeber").val();
        $.post("/Home/Login", {userName: userName, password: password, remember: remember}, function (msg) {
            if (msg.success) {

                window.location.reload();
            } else {
                alert(msg.message);
            }
        });
    }

    $(document).ready(function () {

        $(".nr_rank_xy tr").eq(1).find("td span").css({"background": "red", "color": "#fff"})
        $(".nr_rank_xy tr").eq(2).find("td span").css({"background": "red", "color": "#fff"})
        $(".nr_rank_xy tr").eq(3).find("td span").css({"background": "red", "color": "#fff"})

        $(".nr_rank_title1").click(function () {
            $(".nr_rank_ad").show();
            $("#ArticleRankMore").attr('href', '/Article/Index?id=121');
            $(".nr_rank_xy").hide();
        })
        $(".nr_rank_title2").click(function () {
            $(".nr_rank_ad").hide();
            $(".nr_rank_xy").show();
            $("#ArticleRankMore").attr('href', '/UserCenter/MyCreditRank');
        })
    })
    $(".slider").tilesSlider({random: true, loop: true, auto: true});
</script>

<%--

<script type="text/javascript">
    layui.use('table', function () {
        var table = layui.table, form = layui.form;
    });

    $(document).ready(function () {
        $(".nr_rank_xy tr").eq(1).find("td span").css({ "background": "red", "color": "#fff" })
        $(".nr_rank_xy tr").eq(2).find("td span").css({ "background": "red", "color": "#fff" })
        $(".nr_rank_xy tr").eq(3).find("td span").css({ "background": "red", "color": "#fff" })

        $(".nr_rank_title1").click(function () {
            $(".nr_map").show();
            $(".nr_rank_ad").hide();
            $(".nr_rank_xy").hide();
        })
        $(".nr_rank_title2").click(function () {
            $(".nr_rank_ad").show();
            $(".nr_rank_xy").hide();
            $(".nr_map").hide();
        });
        $(".nr_rank_title3").click(function () {
            $(".nr_rank_ad").hide();
            $(".nr_rank_xy").show();
            $(".nr_map").hide();
        });
        $(".slider").tilesSlider({ random: true, loop: true, auto: true })
    })

    $(function () {
        $('#close_im').bind('click', function () {
            $('#main-im').css("height", "0");
            $('#im_main').hide();
            $('#open_im').show();
        });
        $('#open_im').bind('click', function (e) {
            $('#main-im').css("height", "272");
            $('#im_main').show();
            $(this).hide();
        });
        $('.go-top').bind('click', function () {
            $(window).scrollTop(0);
        });
        $(".weixing-container").bind('mouseenter', function () {
            $('.weixing-show').show();
        })
        $(".weixing-container").bind('mouseleave', function () {
            $('.weixing-show').hide();
        });
        var ad = new AdMove("ad1");
        ad.Run();
        var ad2 = new AdMove("ad2");
        ad2.Run();




    });
    function addEvent(obj, evtType, func, cap) {

        cap = cap || false;

        if (obj.addEventListener) {

            obj.addEventListener(evtType, func, cap);

            return true;

        } else if (obj.attachEvent) {

            if (cap) {

                obj.setCapture();

                return true;

            } else {

                return obj.attachEvent("on" + evtType, func);

            }

        } else {

            return false;

        }

    }
    function getPageScroll() {

        var xScroll, yScroll;

        if (self.pageXOffset) {

            xScroll = self.pageXOffset;

        } else if (document.documentElement && document.documentElement.scrollLeft) {

            xScroll = document.documentElement.scrollLeft;

        } else if (document.body) {

            xScroll = document.body.scrollLeft;

        }

        if (self.pageYOffset) {

            yScroll = self.pageYOffset;

        } else if (document.documentElement && document.documentElement.scrollTop) {

            yScroll = document.documentElement.scrollTop;

        } else if (document.body) {

            yScroll = document.body.scrollTop;

        }

        arrayPageScroll = new Array(xScroll, yScroll);

        return arrayPageScroll;

    }

    function GetPageSize() {

        var xScroll, yScroll;

        if (window.innerHeight && window.scrollMaxY) {

            xScroll = document.body.scrollWidth;

            yScroll = window.innerHeight + window.scrollMaxY;

        } else if (document.body.scrollHeight > document.body.offsetHeight) {

            xScroll = document.body.scrollWidth;

            yScroll = document.body.scrollHeight;

        } else {

            xScroll = document.body.offsetWidth;

            yScroll = document.body.offsetHeight;

        }

        var windowWidth, windowHeight;

        if (self.innerHeight) {

            windowWidth = self.innerWidth;

            windowHeight = self.innerHeight;

        } else if (document.documentElement && document.documentElement.clientHeight) {

            windowWidth = document.documentElement.clientWidth;

            windowHeight = document.documentElement.clientHeight;

        } else if (document.body) {

            windowWidth = document.body.clientWidth;

            windowHeight = document.body.clientHeight;

        }

        if (yScroll < windowHeight) {

            pageHeight = windowHeight;

        } else {

            pageHeight = yScroll;

        }

        if (xScroll < windowWidth) {

            pageWidth = windowWidth;

        } else {

            pageWidth = xScroll;

        }

        arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight)

        return arrayPageSize;

    }

    var AdMoveConfig = new Object();

    AdMoveConfig.IsInitialized = false;

    AdMoveConfig.ScrollX = 0;

    AdMoveConfig.ScrollY = 0;

    AdMoveConfig.MoveWidth = 0;

    AdMoveConfig.MoveHeight = 0;

    AdMoveConfig.Resize = function () {

        var winsize = GetPageSize();

        AdMoveConfig.MoveWidth = winsize[2];

        AdMoveConfig.MoveHeight = winsize[3];

        AdMoveConfig.Scroll();

    }

    AdMoveConfig.Scroll = function () {

        var winscroll = getPageScroll();

        AdMoveConfig.ScrollX = winscroll[0];

        AdMoveConfig.ScrollY = winscroll[1];

    }

    addEvent(window, "resize", AdMoveConfig.Resize);

    addEvent(window, "scroll", AdMoveConfig.Scroll);

    function AdMove(id) {

        if (!AdMoveConfig.IsInitialized) {

            AdMoveConfig.Resize();

            AdMoveConfig.IsInitialized = true;

        }

        var obj = document.getElementById(id);

        obj.style.position = "absolute";

        obj.style.display = "";

        var W = AdMoveConfig.MoveWidth - obj.offsetWidth;

        var H = AdMoveConfig.MoveHeight - obj.offsetHeight;

        var x = W * Math.random(), y = H * Math.random();

        var rad = (Math.random() + 1) * Math.PI / 6;

        var kx = Math.sin(rad), ky = Math.cos(rad);

        var dirx = (Math.random() < 0.5 ? 1 : -1), diry = (Math.random() < 0.5 ? 1 : -1);

        var step = 1;

        var interval;

        this.SetLocation = function (vx, vy) { x = vx; y = vy; }

        this.SetDirection = function (vx, vy) { dirx = vx; diry = vy; }

        obj.CustomMethod = function () {

            obj.style.left = (x + AdMoveConfig.ScrollX) + "px";

            obj.style.top = (y + AdMoveConfig.ScrollY) + "px";

            rad = (Math.random() + 1) * Math.PI / 6;

            W = AdMoveConfig.MoveWidth - obj.offsetWidth;

            H = AdMoveConfig.MoveHeight - obj.offsetHeight;

            x = x + step * kx * dirx;

            if (x < 0) { dirx = 1; x = 0; kx = Math.sin(rad); ky = Math.cos(rad); }

            if (x > W) { dirx = -1; x = W; kx = Math.sin(rad); ky = Math.cos(rad); }

            y = y + step * ky * diry;

            if (y < 0) { diry = 1; y = 0; kx = Math.sin(rad); ky = Math.cos(rad); }

            if (y > H) { diry = -1; y = H; kx = Math.sin(rad); ky = Math.cos(rad); }

        }

        this.Run = function () {

            var delay = 10;

            interval = setInterval(obj.CustomMethod, delay);

            obj.onmouseover = function () { clearInterval(interval); }

            obj.onmouseout = function () { interval = setInterval(obj.CustomMethod, delay); }

        }

    }

    var delparent = function (o) {
        o.parentNode.parentNode.removeChild(o.parentNode);
    }

    function scroll() {

        function fnb() {
            var t = $(window).scrollTop();
            var m = window.sc_scrollT || 200;

            if (t < m) {
                $(".zb_px").stop().animate({ top: m }, 500);

            } else {
                $(".zb_px").stop().animate({ top: t + 200 }, 500)

            }

        }

        fnb();
        $(window).scroll(function () { fnb(); });

    };
    scroll();
</script>

--%>


<%--

<script type="text/javascript">
    layui.use('table', function () {
        var table = layui.table, form = layui.form;
    });

    $(document).ready(function () {
        $(".nr_rank_xy tr").eq(1).find("td span").css({ "background": "red", "color": "#fff" })
        $(".nr_rank_xy tr").eq(2).find("td span").css({ "background": "red", "color": "#fff" })
        $(".nr_rank_xy tr").eq(3).find("td span").css({ "background": "red", "color": "#fff" })

        $(".nr_rank_title1").click(function () {
            $(".nr_map").show();
            $(".nr_rank_ad").hide();
            $(".nr_rank_xy").hide();
        })
        $(".nr_rank_title2").click(function () {
            $(".nr_rank_ad").show();
            $(".nr_rank_xy").hide();
            $(".nr_map").hide();
        });
        $(".nr_rank_title3").click(function () {
            $(".nr_rank_ad").hide();
            $(".nr_rank_xy").show();
            $(".nr_map").hide();
        });
        $(".slider").tilesSlider({ random: true, loop: true, auto: true })
    })

    $(function () {
        $('#close_im').bind('click', function () {
            $('#main-im').css("height", "0");
            $('#im_main').hide();
            $('#open_im').show();
        });
        $('#open_im').bind('click', function (e) {
            $('#main-im').css("height", "272");
            $('#im_main').show();
            $(this).hide();
        });
        $('.go-top').bind('click', function () {
            $(window).scrollTop(0);
        });
        $(".weixing-container").bind('mouseenter', function () {
            $('.weixing-show').show();
        })
        $(".weixing-container").bind('mouseleave', function () {
            $('.weixing-show').hide();
        });
        var ad = new AdMove("ad1");
        ad.Run();
        var ad2 = new AdMove("ad2");
        ad2.Run();




    });
    function addEvent(obj, evtType, func, cap) {

        cap = cap || false;

        if (obj.addEventListener) {

            obj.addEventListener(evtType, func, cap);

            return true;

        } else if (obj.attachEvent) {

            if (cap) {

                obj.setCapture();

                return true;

            } else {

                return obj.attachEvent("on" + evtType, func);

            }

        } else {

            return false;

        }

    }
    function getPageScroll() {

        var xScroll, yScroll;

        if (self.pageXOffset) {

            xScroll = self.pageXOffset;

        } else if (document.documentElement && document.documentElement.scrollLeft) {

            xScroll = document.documentElement.scrollLeft;

        } else if (document.body) {

            xScroll = document.body.scrollLeft;

        }

        if (self.pageYOffset) {

            yScroll = self.pageYOffset;

        } else if (document.documentElement && document.documentElement.scrollTop) {

            yScroll = document.documentElement.scrollTop;

        } else if (document.body) {

            yScroll = document.body.scrollTop;

        }

        arrayPageScroll = new Array(xScroll, yScroll);

        return arrayPageScroll;

    }

    function GetPageSize() {

        var xScroll, yScroll;

        if (window.innerHeight && window.scrollMaxY) {

            xScroll = document.body.scrollWidth;

            yScroll = window.innerHeight + window.scrollMaxY;

        } else if (document.body.scrollHeight > document.body.offsetHeight) {

            xScroll = document.body.scrollWidth;

            yScroll = document.body.scrollHeight;

        } else {

            xScroll = document.body.offsetWidth;

            yScroll = document.body.offsetHeight;

        }

        var windowWidth, windowHeight;

        if (self.innerHeight) {

            windowWidth = self.innerWidth;

            windowHeight = self.innerHeight;

        } else if (document.documentElement && document.documentElement.clientHeight) {

            windowWidth = document.documentElement.clientWidth;

            windowHeight = document.documentElement.clientHeight;

        } else if (document.body) {

            windowWidth = document.body.clientWidth;

            windowHeight = document.body.clientHeight;

        }

        if (yScroll < windowHeight) {

            pageHeight = windowHeight;

        } else {

            pageHeight = yScroll;

        }

        if (xScroll < windowWidth) {

            pageWidth = windowWidth;

        } else {

            pageWidth = xScroll;

        }

        arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight)

        return arrayPageSize;

    }

    var AdMoveConfig = new Object();

    AdMoveConfig.IsInitialized = false;

    AdMoveConfig.ScrollX = 0;

    AdMoveConfig.ScrollY = 0;

    AdMoveConfig.MoveWidth = 0;

    AdMoveConfig.MoveHeight = 0;

    AdMoveConfig.Resize = function () {

        var winsize = GetPageSize();

        AdMoveConfig.MoveWidth = winsize[2];

        AdMoveConfig.MoveHeight = winsize[3];

        AdMoveConfig.Scroll();

    }

    AdMoveConfig.Scroll = function () {

        var winscroll = getPageScroll();

        AdMoveConfig.ScrollX = winscroll[0];

        AdMoveConfig.ScrollY = winscroll[1];

    }

    addEvent(window, "resize", AdMoveConfig.Resize);

    addEvent(window, "scroll", AdMoveConfig.Scroll);

    function AdMove(id) {

        if (!AdMoveConfig.IsInitialized) {

            AdMoveConfig.Resize();

            AdMoveConfig.IsInitialized = true;

        }

        var obj = document.getElementById(id);

        obj.style.position = "absolute";

        obj.style.display = "";

        var W = AdMoveConfig.MoveWidth - obj.offsetWidth;

        var H = AdMoveConfig.MoveHeight - obj.offsetHeight;

        var x = W * Math.random(), y = H * Math.random();

        var rad = (Math.random() + 1) * Math.PI / 6;

        var kx = Math.sin(rad), ky = Math.cos(rad);

        var dirx = (Math.random() < 0.5 ? 1 : -1), diry = (Math.random() < 0.5 ? 1 : -1);

        var step = 1;

        var interval;

        this.SetLocation = function (vx, vy) { x = vx; y = vy; }

        this.SetDirection = function (vx, vy) { dirx = vx; diry = vy; }

        obj.CustomMethod = function () {

            obj.style.left = (x + AdMoveConfig.ScrollX) + "px";

            obj.style.top = (y + AdMoveConfig.ScrollY) + "px";

            rad = (Math.random() + 1) * Math.PI / 6;

            W = AdMoveConfig.MoveWidth - obj.offsetWidth;

            H = AdMoveConfig.MoveHeight - obj.offsetHeight;

            x = x + step * kx * dirx;

            if (x < 0) { dirx = 1; x = 0; kx = Math.sin(rad); ky = Math.cos(rad); }

            if (x > W) { dirx = -1; x = W; kx = Math.sin(rad); ky = Math.cos(rad); }

            y = y + step * ky * diry;

            if (y < 0) { diry = 1; y = 0; kx = Math.sin(rad); ky = Math.cos(rad); }

            if (y > H) { diry = -1; y = H; kx = Math.sin(rad); ky = Math.cos(rad); }

        }

        this.Run = function () {

            var delay = 10;

            interval = setInterval(obj.CustomMethod, delay);

            obj.onmouseover = function () { clearInterval(interval); }

            obj.onmouseout = function () { interval = setInterval(obj.CustomMethod, delay); }

        }

    }

    var delparent = function (o) {
        o.parentNode.parentNode.removeChild(o.parentNode);
    }

    function scroll() {

        function fnb() {
            var t = $(window).scrollTop();
            var m = window.sc_scrollT || 200;

            if (t < m) {
                $(".zb_px").stop().animate({ top: m }, 500);

            } else {
                $(".zb_px").stop().animate({ top: t + 200 }, 500)

            }

        }

        fnb();
        $(window).scroll(function () { fnb(); });

    };
    scroll();
</script>--%>

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


        nativeproduct();
        cultrueNews();
        cultureSites();


        <!--新闻部分 -->
        function cultrueNews() {
            xhr.open("GET", "<%=path %>/index?method=CultrueNews", true);
            // alert(xhr.readyState);
            xhr.onreadystatechange = function () {
                // alert(xhr.readyState);
                if (4 == xhr.readyState) {
                    if (200 == xhr.status) {
                        var result = xhr.responseText;
                        // alert(typeof result);
                        // 类型转换 object
                        result = JSON.parse(result);
                        displayCultrueNews(result);
                    }
                }
            };
            xhr.send();

            // 解析字符串
            function displayCultrueNews(json) {

                var show = document.getElementById("show");
                show.innerHTML = "";

                var news = document.getElementById("news");
                news.innerHTML = "";

                var news2 = document.getElementById("news2");
                news2.innerHTML = "";

                var len = json.length;
                for (var i = 0; i < len; i++) {
                    var obj = json[i];
                    var id = obj.id;
                    var img = obj.img;
                    var consistent = obj.consistent;
                    var time = obj.time;
                    // alert(id+img+consistent+time);
                    // alert(consistent);
                    show.innerHTML += "<li><a href=\'file:///C:/Article/Details?id=" + id + "\' target=\'_blank\'><img src='" + img + "' ><div class=\"text\"><p>乡愁不老 思念不改—...</p></div></a></li>";
                    news.innerHTML += "<li><a href=\'file:///C:/Article/Details?id=" + id + "\'>【" + time + "】" + consistent + "</a></li>";
                    news2.innerHTML += "<li><a href=\"file:///C:/Article/Details?id=" + id + "\">【" + time + "】" + consistent + "</a></li>";
                }
            }

        }

        <!--文化遗址 -->
        function cultureSites() {
            xhr.open("GET", "<%=path %>/index?method=CultureSites", true);
            alert(xhr.readyState);
            xhr.onreadystatechange = function () {
                alert(xhr.readyState);
                if (4 == xhr.readyState) {
                    if (200 == xhr.status) {
                        var result = xhr.responseText;
                        // alert(typeof result);
                        // 类型转换 object
                        result = JSON.parse(result);
                        displayCultureSites(result);
                    }
                }
            };
            xhr.send();

            // 解析字符串
            function displayCultureSites(json) {

                /*var img3 = document.getElementById("img3");
                img3.innerHTML = "";*/

                var cs_show = document.getElementById("cs_show");
                cs_show.innerHTML = "";

                var sc_list_img_scl3 = document.getElementById("cs_show");
                sc_list_img_scl3.innerHTML = "";

                sc_list_img_scl3.innerHTML += "<a href='/Article/Index?id=131' class='sc-list-img scl3' >" +
                    "<img src='images/sites/txgz.jpg'>" +
                    "<p class=\"sc-list-text\">【文化遗产】</p>" +
                    "</a>";
                var len = json.length;
                for (var i = 0; i < 4; i++) {
                    var obj = json[i];
                    var id = obj.id;
                    var img = obj.img;
                    var title = obj.title;
                    var onlinetime = obj.onlinetime;
                    var locationid = obj.locationid;
                    // alert(id+img+consistent+time);
                    // alert(consistent);
                    cs_show.innerHTML += "<li><a href=\'file:///C:/Article/Details?id=" + id + "\'>" + title + "</a></li>";
                }
                //img3.innerHTML += "<img src='images/sites/txgz.jpg'>";




            }

        }

        function nativeproduct() {
            xhr.open("GET", "<%=path %>/index?method=NativeProduct", true);
            xhr.onreadystatechange = function () {
                if (4 == xhr.readyState) {
                    if (200 == xhr.status) {
                        var result = xhr.responseText;
                        //   alert(typeof result);
                        // 类型转换 object
                        result = JSON.parse(result);
                        //   alert(typeof result);
                        displaySixProduct1(result);
                    }
                }
            };
            xhr.send();

            // 解析字符串
            function displaySixProduct1(json) {
                var len = json.length;
                var picList = document.getElementsByClassName("picList");
                //alert(ul.length);
                picList[0].innerHTML = "";
                for (var i = 0; i < len; i++) {
                    var obj = json[i];
                    var id = obj.id;
                    var name = obj.name;
                    var img = obj.img;
                    /*  // alert(obj);
                       alert(id);
                       alert(name);
                       alert(img);*/


                    picList[0].innerHTML += "<li><div class='pic'>" +
                        "<a href='/Course/Details?id=11541' target='_blank'>" +
                        "<img src='<%=path%>/"+img+"'/>" +
                        "</a></div>" +
                        "<div class='title'>" +
                        "<a href='/Course/Details?id=11541'>" +
                        name + id +
                        "</a></div></li>";
                }
            }
        }



        cultrueNews();
        nativeproduct();

</script>
</html>
