<%@ page import="club.vasilis.xtwh.domain.NativeProduct" %>
<%@ page import="club.vasilis.xtwh.domain.NativeProductCategory" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/19
  Time: 9:38
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


    <title>宜兴终身学习网</title>


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
            <div class="treetitle">
                <p>特产</p>
            </div>
            <ul class="c_left_menu">
                <%
                    List<NativeProductCategory> categoryList = (List<NativeProductCategory>) request.getAttribute("categoryList");
                    for (NativeProductCategory category : categoryList) {
                %>
                <li class="c_menu_li">
                    <a class="c_menu_main" href="/product?methood=findbytype&id=<%=category.getId()%>">
                        <div class="c_menu_icon"></div>
                        <div class="c_menu_name">
                           <%= category.getName()%>

                        </div>
                        <div class="c_menu_dot"></div>
                    </a>
                </li>
                <%
                    }
                %>


            </ul>
        </div>
        <div class="c_left_menu_wrapper2">
            <div class="menu-course-title">
                最新资讯
            </div>
            <ul class="menu-ul-article">

                <li>
                    <a href="/Article/Details?id=8205">
                        <p><span>1</span>旅游服务公益培训，让农家...</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8203">
                        <p><span>2</span>“光明行动”走进徐舍•奖墅</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8202">
                        <p><span>3</span>芳桥社区开展“文明共创，...</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8201">
                        <p><span>4</span>筝奇斗艳，放飞我的中国梦</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8198">
                        <p><span>5</span>新时代文明实践在万石——...</p>
                    </a>
                </li>


            </ul>
        </div>


    </div>










    <div class="pc_right r">
        <div class="pc-key">
            <div class="pc-key-show">
                <div class="key-show-title l">
                    文章标题： <input type="text" name="" id="ArticleName" value="" />
                </div>
                <div class="key-show-date l clearfix">
                    <div class="show-date-p1 l">
                        发布日期：
                    </div>
                    <div class="show-date1 l">
                        <img src="images/rili.png" class="starttime_img"><input type="text" id="starttime" placeholder="2017-01-10" class="starttime" />
                    </div>
                    <div class="show-date-p2 l">-</div>
                    <div class="show-date2 l">
                        <img src="images/rili.png" class="endtime_img"><input type="text" id="endtime" placeholder="2017-01-13" class="endtime" />
                    </div>
                    <div id='schedule-box' class="boxshaw"></div>

                    <div id='schedule-box1' class="boxshaw"></div>
                </div>
                <div class="key-show-search l">
                    <a href="javascript:void();" onclick="SearchArticle();"><img src="images/search-img.png" />检索</a>
                </div>
                <div class="key-show-close r">
                    <a href="javascript:;"><img src="images/close.png" /></a>
                </div>
            </div>
            <div class="pc-key-hide">
                <a href="javascript:;">打开索引 <img src="images/search-img.png" /></a>
            </div>
        </div>

        <div class="cm-lesson">
            <div class="cm-lesson-top clearfix">
                <div class="cm-lesson-top1 l">
                    全部文章
                </div>
                <div class="cm-lesson-top2 l">
                    排序 <span id="span1" onclick="location.href = '/Article?Sort=1&amp;pageSize=20'">最新  <img src="images/arrow-down1.png" />
                    </span> <span id="span2" onclick="location.href = '/Article?Sort=2&amp;pageSize=20'">最热  <img src="images/arrow-down.png" /> </span>
                </div>
                <div class="cm-lesson-top3 l">
                    <p class="l">视图</p>
                    <ul class="l">
                        <li class="on" ><img src="images/sort2-img2.png" /></li>
                        <li ><img src="images/sort3-img1.png" /></li>
                    </ul>
                </div>
                <div class="cm-lesson-top4 l">
                    <p class="l">条目</p>
                    <ul class="l">
                        <li id="pagesize20" onclick="location.href='/Article?pageSize=20&amp;Sort=1'">20</li>
                        <li id="pagesize25" onclick="location.href='/Article?pageSize=25&amp;Sort=1'">25</li>
                        <li id="pagesize30" onclick="location.href='/Article?pageSize=30&amp;Sort=1'">30</li>
                    </ul>
                </div>
            </div>

            <div class="cm-lesson-con" style="display:block;">
                <div class="cm-lesson-title">
                    <ul class="clearfix">
                        <li class="cm-lesson-title1">编号</li>
                        <li class="cm-lesson-title2">文章标题</li>
                        <li class="cm-lesson-title4">上传时间</li>
                    </ul>
                </div>
                <table border="" cellspacing="" cellpadding="" class="cml-table">

                    <%
                        List<NativeProduct> productList = (List<NativeProduct>) request.getAttribute("productList");
                        for (NativeProduct product : productList) {
                    %>
                    <tr>
                        <th width="107"><%= product.getId()%></th>
                        <th width="418"><a href="/Article/Details?id=7264"><%= product.getName()%></a></th>


                        <th width="180"><%= product.getOnlinetime()%></th>
                    </tr>
                    <%
                        }
                    %>
                </table>

                <ul class='pages'><li class='pgNext'><a href="/Article?page=1">首页</a></li><li class='pgNext'><a href="#">上一页</a></li><li class='page-number'><span>1</span><a href="/Article?page=2">2</a><a href="/Article?page=3">3</a><a href="/Article?page=4">4</a><a href="/Article?page=5">5</a><a href="/Article?page=6">6</a><a href="/Article?page=7">7</a><a href="/Article?page=8">8</a><a href="/Article?page=9">9</a><a href="/Article?page=10">10</a></li><li class='pgNext'><a href="/Article?page=2">下一页</a></li><li class='pgNext'><a href="/Article?page=289">末页</a></li></ul>
            </div>
            <div class="cm-lesson-con" style="display:none;">
                <ul>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=7264"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=7264" class="l">宜兴市被认定为国家级农村职业教育和成人教育示范县</a>
                                        <span class="r">2018-07-30</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：2018年6月25日，教育部、科技部等五部门联合发文，公布第三批国家级农村职业教育和成人教育示范县，宜兴市榜上有名，成为无锡地区唯一入围县市。  宜兴市职成教事业跑出了“宜兴加速度”。宜兴市2009年8月2日被评为全国社区教育实验区，2009年11月21日被教育部确认为...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8205"><img src="http://112.25.215.35:80/Resourceimages/Article/afdaafe1-adc9-49f6-8788-0f575b2a2819.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8205" class="l"><span style='color:#FF9933'>【荐】</span>旅游服务公益培训，让农家乐、民宿更好地服务游客</a>
                                        <span class="r">2019-04-15</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：随着太华乡村旅游的阔步前行，农家乐、民宿日益增多。为提升民宿、农家乐的服务意识、创新意识、品牌意识，太华成校、太华镇旅游办联合举办“乡村振兴，服务先行”系列公益培训，4月9日—11日，以 “餐饮创新，民宿布草”为主题的二期培训圆满举行，民宿、农家乐主人...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8203"><img src="http://112.25.215.35:80/Resourceimages/Article/fb9f79ae-38fe-4667-b7ad-ef21fb700ae1.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8203" class="l">“光明行动”走进徐舍•奖墅</a>
                                        <span class="r">2019-04-15</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：随着年龄的增长，很多老人的视力开始下降，但由于有关眼病知识的缺乏，往往在平时体检中忽略对眼睛的检查。为了让老人们对眼病加以重视，引导他们做到及早预防、及时治疗，把握眼病治疗最佳时机，徐舍镇奖墅村村民业余学校发起了“光明爱心行动”，计划用2年时间，切实...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8202"><img src="http://112.25.215.35:80/Resourceimages/Article/45c5c5b7-e88d-4a42-b2d9-c6714820782c.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8202" class="l">芳桥社区开展“文明共创，志愿同行”活动</a>
                                        <span class="r">2019-04-15</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：扎实推进新时代文明实践，推动志愿服务全面化全域化全民化开展，提高志愿服务工作影响力、知晓率和认同度，4月9日下午，芳桥街道广场志愿服务日活动在文体中心广场举行，来自机关各部门的青年志愿者们参与了此次志愿服务日活动，他们冒着小雨，热情洋溢，发扬志愿者...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8201"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8201" class="l">筝奇斗艳，放飞我的中国梦</a>
                                        <span class="r">2019-04-15</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：太湖风筝是中国江南风筝流派的重要组成部分。宜兴周铁镇是太湖风筝的主要流传地，也是风筝这项非物质文化遗产的重要传承和发展地，更是享有“中国风筝之乡”的美誉。4月14日，宜兴市青少年活动中心组织宜兴城区60多名青少年学生来到中国风筝之乡--周铁，开展了“筝奇斗...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8198"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8198" class="l">新时代文明实践在万石——聆听湾斗里的音乐梦想！</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：春光明媚，阳光温暖，花儿飘香，又是一年踏青时，桃红李白春暖人间。在这里，追忆大师的精神；在这里，聆听梦想的初心；在这里，碰撞民乐的激情！4月9日，万石社区新时代文明实践所联合宜兴市青少年活动中心二胡乐团，在闵惠芬文化公园开展“聆听梦想 追忆大师”爱国主...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8196"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8196" class="l">弘扬志愿服务精神、助力推进乡村振兴！听听沈建书记说了啥？</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：春暖花开,风和日丽的日子，市委书记沈建带领市委组织部、市农业农村局、市文明办等单位相关负责同志，来到万石社区马庄村调研农村工作和新时代文明实践中心建设情况，并以普通志愿者身份参加志愿服务活动。在马庄村钱家塘规划整齐的民房、干净整洁的村庄环境给沈建一行...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8195"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8195" class="l">周铁社区教育中心召开2019年老年工作会议</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：2019年4月12日，周铁镇2019年老年工作会议在周铁社区教育中心隆重召开，周铁镇人民政府相关领导、镇老干部协会、镇老年体协、镇文化站、各村（居委）老龄委领导和社区教育中心的领导共20多人参加了会议。周铁镇党校张平副校长主持会议，会议主要有四项议程：一是老年协...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8194"><img src="http://112.25.215.35:80/Resourceimages/Article/0965ffbb-0f59-494b-be76-0859499c93e6.JPG" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8194" class="l"><span style='color:#FF9933'>【荐】</span>西渚镇社区教育工作会议暨业务培训班顺利召开</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：4月11日下午，西渚镇社区教育工作会议暨业务培训班在溪东村村民业余学校顺利召开。会议由文教办主任雷远平主持，西渚镇人民政府副镇长徐煜、各村村主任、村社区教育工作联络员以及2018年宜兴市、西渚镇“百姓学习之星”和宜兴市首届老年书法获奖者约30人参加了会议。 会...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8193"><img src="http://112.25.215.35:80/Resourceimages/Article/7b260b6a-1dd8-4f7a-acfd-85be33a1b52f.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8193" class="l">周铁镇隆重举办2019年竺山风筝节</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：4月10日，竺山风筝节暨社区（村）风筝邀请赛在周铁镇沙塘港村村民业余学校广场隆重举办。本次活动由周铁社区教育中心、宜兴市风筝协会、沙塘港村共同承办。 参加本次比赛的有来自周铁镇和周边乡镇的24支风筝代表队，代表队员计250余人，各带上20个项目风筝品种，前来参...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8192"><img src="http://112.25.215.35:80/Resourceimages/Article/87d44609-e8b9-4db3-9e08-bda2f3f3cebf.jpg" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8192" class="l">周铁社区教育中心举办《三国演义》图片展</a>
                                        <span class="r">2019-04-12</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：《三国演义》描写的是从东汉末年到西晋初年之间近一百年的历史风云。全书反映了三国时代的政治军事斗争，反映了三国时代各类社会矛盾的渗透与转化，概括了这一时代的历史巨变，塑造了一批咤叱风云的英雄人物。在对三国历史的把握上，作者表现出明显的拥刘反曹倾向，以刘...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8190"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8190" class="l"><span style='color:#FF9933'>【荐】</span>“宜兴终身学习网”2018年度奖励领取通知</a>
                                        <span class="r">2019-04-11</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：“宜兴终身学习网”2018年度学习币兑换及学分排名奖励领取已经开始，具体说明如下：1、  领奖时间：2019年4月15号—5月31号，过期不领自动作废；2、  领奖地点：教育西路29号（宜兴开放大学 成教处）2号楼204办公室；3、  领奖需获奖人本人凭身份证原件签名领取，我们将...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8183"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8183" class="l">缅怀革命先烈 共筑远大理想——徐舍镇开展青少年清明祭扫活动</a>
                                        <span class="r">2019-04-08</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：风儿声声，松涛阵阵，又是一年清明时。为追思英烈，弘扬民族精神，4月5日，徐舍镇社区教育中心联合徐舍小学、徐舍镇关工委、民主社区志愿者，组织青少年学生开展了以“英烈精神记心中”为主题的清明祭扫活动。25名青少年学生代表穿戴整齐，怀着对烈士无限崇敬的心情来到...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8182"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8182" class="l">“追寻烈士足迹，重温入党誓词”祭扫烈士墓主题党日活动</a>
                                        <span class="r">2019-04-08</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：【英雄功绩昭百世，烈士芳名炳千秋】4月4日，宜兴市税务局高塍分局、宜兴市高塍镇党成校全体同志在邵振烈士墓，举行了“追寻烈士足迹，重温入党誓词”祭扫烈士墓主题党日活动。上午9点18分，邵振烈士墓松涛阵阵，柏树青青。高塍税务分局和党成校40多位同志手持洁白的菊...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8181"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8181" class="l">新时代文明实践在太华：红色热土传承红色精神，太华缅怀英烈，牢...</a>
                                        <span class="r">2019-04-05</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：太华镇在太华山新四军和苏南抗日根据地纪念馆开展“缅怀英烈、牢记使命”清明主题活动。  太华镇机关党群代表、太华镇中小学学生代表、太华镇派出所代表以及太华山新四军纪念馆及社区教育中心全体工作人员参与该次活动。  深切缅怀革命先烈的丰功伟绩，铭记历史，坚定...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8180"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8180" class="l">缅怀先烈 牢记使命</a>
                                        <span class="r">2019-04-03</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：为进一步弘扬民族精神，祭奠革命先烈，缅怀英雄伟绩，4月3日上午，宜兴经济技术开发区管委会副主任、屺亭街道党工委书记刘英、屺亭街道办事处主任杨卓云等一行带领街道机关第六支部、七支部全体党员、五星社区定员干部，前往唐俊烈士墓开展清明集中祭扫烈士活动。  ...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8178"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8178" class="l">杜绝“祸从天降”，以行动登高</a>
                                        <span class="r">2019-04-03</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：为扎实开展和桥镇安全生产工作，从源头抓好安全事故的防控，2019年4月1日起，和桥成校认真组织50多名企业职工，开展了为期9天的登高作业培训，旨在提高登高作业人员技能水平，科学地预防事故的发生，同时，和桥成校进一步配合企业做好操作人员的安全管理工作，扎实有效...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8179"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8179" class="l">彩笔绘祖国</a>
                                        <span class="r">2019-04-03</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：弘扬中华传统文化，弘扬悲鸿精神，传承书画艺术，丰富辖区青少年精神文化生活，3月31日，奔马社区新时代文明实践站在奔马社区党建广场开展了“水墨奔马”青少年彩笔绘祖国现场书画展示活动。    活动现场挂满了孩子们的绘画、书法作品，老师、家长、孩子们人头攒动...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8177"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8177" class="l">东郊志愿者在行动</a>
                                        <span class="r">2019-04-03</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：2019年宜兴国际马拉松赛即将开跑，为盛情迎接各路体育健儿和八方宾朋的到来，营建更加整洁、卫生、靓丽的马拉松赛道，确保赛事的顺利进行。4月2日，东郊社区开展新时代文明实践志愿活动，针对赛道及周边进行环境整治。    活动中，志愿者们热情高涨，分工合作，默...
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson-brief2 clearfix">
                        <div class="lb2-left l">
                            <a href="/Article/Details?id=8176"><img src="http://112.25.215.35:80/Resource/" onerror="this.src = 'images/renwenxiuyang.jpg'" /></a>
                        </div>
                        <div class="lb2-right l">
                            <div class="lb2-right-hd clearfix">
                                <div class="lb2-right-hd1 ">
                                    <p class="lb2-right-hd1-p1 clearfix">
                                        <a href="/Article/Details?id=8176" class="l">高塍成校举办花卉园艺培训班</a>
                                        <span class="r">2019-04-03</span>
                                    </p>
                                </div>
                                <div class="lb2-right-hd3 ">
                                    内容简介：3月25日-27日，宜兴市农培学校在高塍镇举办2019年新型职业农民（花卉园艺）培训班，来自全市的绿植爱好者50余人踊跃报名参加培训。培训特别邀请农林局专家储锡初为学员们讲解了常见家庭绿植的种植及维护，提高了学员们家庭养花的技术水平；同时还聘请宜兴市园林绿化管理...
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class='pages'><li class='pgNext'><a href="/Article?page=1">首页</a></li><li class='pgNext'><a href="#">上一页</a></li><li class='page-number'><span>1</span><a href="/Article?page=2">2</a><a href="/Article?page=3">3</a><a href="/Article?page=4">4</a><a href="/Article?page=5">5</a><a href="/Article?page=6">6</a><a href="/Article?page=7">7</a><a href="/Article?page=8">8</a><a href="/Article?page=9">9</a><a href="/Article?page=10">10</a></li><li class='pgNext'><a href="/Article?page=2">下一页</a></li><li class='pgNext'><a href="/Article?page=289">末页</a></li></ul>
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



<script src="<%= path%>/js/article.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function SearchArticle() {
        var coursename = $("#ArticleName").val();
        var StartDate = $("#starttime").val();
        var EndDate = $("#endtime").val();
        location.href = "/Article/Index?keyWords=" + coursename + "&StartDate=" + StartDate + "&EndDate=" + EndDate;
    }

    $(document).ready(function () {
        $("#pagesize20").addClass("on");
        $("#span1").addClass("on");
        $(".cm-lesson-top2 span").find("img").attr("src", "images/arrow-down.png");
        $("#span1").find("img").attr("src", "images/arrow-down1.png");

        $(".c_menu_li").mouseover(function(){
            $(this).find(".c_submenu").show();
        }).mouseleave(function  () {
            $(this).find(".c_submenu").hide();
        });
        //推荐课程
        $(".menu-cul li").mouseover(function  () {
            $(".menu-cul li").removeClass("on");
            $(this).addClass("on");
        });

        $(".starttime").click(function  () {
            $("#schedule-box").show();
        });
        //日历的选择
        $(".starttime_img").click(function  () {
            $("#schedule-box").show();
        });
        //$(".starttime").blur(function () {
        //    $("#schedule-box").hide();
        //});
        var mySchedule = new Schedule({
            el: '#schedule-box',
            //date: '2018-9-20',
            clickCb: function (y,m,d) {
                var aa = document.querySelector('.starttime').innerHTML = y+'-'+m+'-'+d;
                $(".starttime").val(aa);
                $("#schedule-box").hide();
            },
            nextMonthCb: function (y,m,d) {
                document.querySelector('.starttime').innerHTML = y+'-'+m+'-'+d
            },
            nextYeayCb: function (y,m,d) {
                document.querySelector('.starttime').innerHTML = y+'-'+m+'-'+d
            },
            prevMonthCb: function (y,m,d) {
                document.querySelector('.starttime').innerHTML = y+'-'+m+'-'+d
            },
            prevYearCb: function (y,m,d) {
                document.querySelector('.starttime').innerHTML = y+'-'+m+'-'+d
            }
        });

        $(".endtime").click(function  () {
            $("#schedule-box1").show();
        });
        $(".endtime_img").click(function  () {
            $("#schedule-box1").show();
        });
        //$(".endtime").blur(function () {
        //    $("#schedule-box1").hide();
        //});

        var mySchedule1 = new Schedule({
            el: '#schedule-box1',
            //date: '2018-9-20',
            clickCb: function (y,m,d) {
                var bb =  document.querySelector('.endtime').innerHTML = y+'-'+m+'-'+d;
                $(".endtime").val(bb);
                $("#schedule-box1").hide();
            },
            nextMonthCb: function (y,m,d) {
                document.querySelector('.endtime').innerHTML = y+'-'+m+'-'+d;
            },
            nextYeayCb: function (y,m,d) {
                document.querySelector('.endtime').innerHTML = y+'-'+m+'-'+d;
            },
            prevMonthCb: function (y,m,d) {
                document.querySelector('.endtime').innerHTML = y+'-'+m+'-'+d;
            },
            prevYearCb: function (y,m,d) {
                document.querySelector('.endtime').innerHTML = y+'-'+m+'-'+d;
            }
        });

        $(".pc-key-hide a").click(function  () {
            $(".pc-key-hide").hide();
            $(".pc-key-show").show();
        });
        $(".key-show-close").click(function  () {
            $(".pc-key-hide").show();
            $(".pc-key-show").hide();
        });
        //课程分类
        $(".c_menu_li").mouseover(function(){
            $(this).find(".c_menu_main").css({"color":"#fff"})
        }).mouseleave(function  () {
            $(this).find(".c_menu_main").css({"color":"#000"})
        })
        //导航
        $(".nav ul li").mouseover(function  () {
            $(this).find("a").css({"color":"#ffc617"})
        }).mouseleave(function  () {
            $(this).find("a").css({"color":"#fff"})
        });
        //排序最新最热
        $(".cm-lesson-top2 span").on("click",function(){
            $(this).addClass("on").siblings().removeClass("on");
            $(".cm-lesson-top2 span").find("img").attr("src","images/arrow-down.png")
            $(this).find("img").attr("src","images/arrow-down1.png")
        })
        //条目切换
        $(".cm-lesson-top4 ul li").click(function  () {
            $(".cm-lesson-top4 ul li").removeClass("on");
            $(this).addClass("on")
        });
        $(".lesson-brief1").mouseover(function  () {
            $(this).find(".lb1-con-hd p").show();
        }).mouseleave(function(){
            $(this).find(".lb1-con-hd p").hide();
        })
        //页面间的内部切换
        $(".cm-lesson-top3 ul li").on("click",function  () {
            var index=$(this).index();
            var length = $(".cm-lesson-top3 ul li").length;
            $(".cm-lesson-top3 ul li").removeClass("on");
            $(this).addClass("on");
            $(".cm-lesson-con").hide();
            $(".cm-lesson-con").eq(index).show();
            for ( var i=0;i<length;i++  ) {
                var src1 = $(".cm-lesson-top3 ul li").eq(i).find("img").attr("src");
                var src2 = src1.slice(0,17);
                $(".cm-lesson-top3 ul li").eq(i).find("img").attr("src",src2+"1.png")
            }
            var src3 = $(this).find("img").attr("src");
            var src4 = src3.slice(0,17);
            $(this).find("img").attr("src",src4+"2.png")
        });
        $(".cml-table tr").mouseover(function () {
            $(this).find("a").css({ "color": "#5166d7" })
        }).mouseleave(function () {
            $(this).find("a").css({ "color": "#000" })
        });
        $(".c_menu_li ul li").mouseover(function () {
            $(this).find(".list").show()
        }).mouseleave(function () {
            $(this).find(".list").hide()
        })

    });

</script>

</body>
</html>


