<%@ page import="club.vasilis.xtwh.domain.FolkCustom" %>
<%@ page import="java.util.List" %>><%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/5/16
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <% String path = request.getContextPath(); %>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="Shortcut Icon" href=/favicon.ico>
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/head.css"/>
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/article.css"/>
    <link href="<%= path%>/css/Page.css" type="text/css" rel="stylesheet"/>


    <title>忆乡土</title>


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

<%@include file="head.jsp" %>


<div class="mainwidth1 mt20 clearfix">


    <div class="pc_left l">
        <div class="c_left_menu_wrapper1">
            <div class="treetitle">
                <p>特产</p>
            </div>
            <ul class="c_left_menu">
                <%
                    List<FolkCustom> categoryList = (List<FolkCustom>) request.getAttribute("categoryList");
                    for (FolkCustom category : categoryList) {
                %>
                <li class="c_menu_li">
                    <%----%>
                    <a class="c_menu_main" id="type" href="javascript:void(0)"
                       onclick="findType('<%=category.getId()%>');return false;">
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
                    文章标题： <input type="text" name="" id="ArticleName" value=""/>
                </div>
                <div class="key-show-date l clearfix">
                    <div class="show-date-p1 l">
                        发布日期：
                    </div>
                    <div class="show-date1 l">
                        <img src="images/rili.png" class="starttime_img"><input type="text" id="starttime"
                                                                                placeholder="2017-01-10"
                                                                                class="starttime"/>
                    </div>
                    <div class="show-date-p2 l">-</div>
                    <div class="show-date2 l">
                        <img src="images/rili.png" class="endtime_img"><input type="text" id="endtime"
                                                                              placeholder="2017-01-13" class="endtime"/>
                    </div>
                    <div id='schedule-box' class="boxshaw"></div>

                    <div id='schedule-box1' class="boxshaw"></div>
                </div>
                <div class="key-show-search l">
                    <a href="javascript:void();" onclick="SearchArticle();"><img src="images/search-img.png"/>检索</a>
                </div>
                <div class="key-show-close r">
                    <a href="javascript:;"><img src="images/close.png"/></a>
                </div>
            </div>
            <div class="pc-key-hide">
                <a href="javascript:;">打开索引 <img src="images/search-img.png"/></a>
            </div>
        </div>

        <div class="pr_detail">

            <%
                FolkCustom cusPassageDetails = (FolkCustom) request.getAttribute("cusPassageDetails");
            %>
            <div class="centent_title">
                <span title="标题"><%= cusPassageDetails.getName()%></span>
            </div>
            <div class="article_ori">
                <%--  <p>来源：宜兴社区培训学院 发布时间：2019/4/10 作者：jyadmin 阅读次数：127  </p>--%>
                <p>发布时间：<%= cusPassageDetails.getOnlinetime()%>
                </p>
                <a onclick="javascript:CreateCollection(7264,2);" style="cursor: pointer;">收藏</a>
            </div>
            <div class="article_content">
                <img src="<%=cusPassageDetails.getImg()%>">
                <p><span style="font-family: 宋体, SimSun;">&nbsp; <%=cusPassageDetails.getDetails()%></span></p>
            </div>
            <table width="100%" cellspacing="0" cellpadding="0" class="page_context">
                <tbody>
                <%--<tr id="ctl00_ctl00_ctl00_cp_cp_Left_cp_tr_pre">
                    <td>上一篇：<a href="/Article/Details/7263">丁蜀镇公园路社区市民学校开展“分享阅读，共享书香”朗诵会</a></td>

                </tr>
                <tr id="ctl00_ctl00_ctl00_cp_cp_Left_cp_tr_next">
                    <td>下一篇：<a href="/Article/Details/7265">当诗词遇上古桥老街——宜兴诗词大会徐舍分赛场精彩对决</a></td>

                </tr>--%>
                </tbody>
            </table>

        </div>

    </div>


</div>


<%@include file="foot.jsp" %>


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
        $("html,body").animate({scrollTop: 0}, 500);
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

        $(".c_menu_li").mouseover(function () {
            $(this).find(".c_submenu").show();
        }).mouseleave(function () {
            $(this).find(".c_submenu").hide();
        });
        //推荐课程
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
        //$(".starttime").blur(function () {
        //    $("#schedule-box").hide();
        //});
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
        //$(".endtime").blur(function () {
        //    $("#schedule-box1").hide();
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
        //课程分类
        $(".c_menu_li").mouseover(function () {
            $(this).find(".c_menu_main").css({"color": "#fff"})
        }).mouseleave(function () {
            $(this).find(".c_menu_main").css({"color": "#000"})
        })
        //导航
        $(".nav ul li").mouseover(function () {
            $(this).find("a").css({"color": "#ffc617"})
        }).mouseleave(function () {
            $(this).find("a").css({"color": "#fff"})
        });
        //排序最新最热
        $(".cm-lesson-top2 span").on("click", function () {
            $(this).addClass("on").siblings().removeClass("on");
            $(".cm-lesson-top2 span").find("img").attr("src", "images/arrow-down.png")
            $(this).find("img").attr("src", "images/arrow-down1.png")
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
            $(this).find("a").css({"color": "#5166d7"})
        }).mouseleave(function () {
            $(this).find("a").css({"color": "#000"})
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



