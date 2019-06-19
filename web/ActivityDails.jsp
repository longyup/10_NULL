<%@ page import="java.util.List" %>
<%@ page import="club.vasilis.xtwh.domain.ActivityCategory" %>
<%@ page import="club.vasilis.xtwh.domain.ActivityCategory" %>
<%@ page import="java.util.List" %>
<%@ page import="club.vasilis.xtwh.domain.Activity" %><%--
  Created by IntelliJ IDEA.
  User: Zhilin
  Date: 2019/5/15
  Time: 18:51
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
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/head.css" />
    <link rel="stylesheet" type="text/css" href="css/article.css" />
    <link href="css/Page.css" type="text/css" rel="stylesheet" />


    <title>乡土文化</title>


    <link rel="stylesheet" type="text/css" href="css/topicCourse.css" />


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




<%@include file="head.jsp" %>








<div class="mainwidth1 mt20 clearfix">



    <div class="pc_left l">
        <div class="c_left_menu_wrapper1">
            <div class="treetitle">
                <p>活动分类</p>
            </div>
            <ul class="c_left_menu">

                <%
                    List<ActivityCategory> categoryList = (List<ActivityCategory>) request.getAttribute("categoryList");
                    for (ActivityCategory category : categoryList){

                %>
                <li class="c_menu_li">
                    <a class="c_menu_main" href="javascript:void(0)"onclick="findType('<%=category.getId()%>');return false;">
                        <div class="c_menu_icon"></div>
                        <div class="c_menu_name">
                            <%=category.getName()%>
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
                    <a href="/Article/Details?id=8285">
                        <p><span>1</span>关爱残疾人 让我们与爱同行...</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8284">
                        <p><span>2</span>&quot;五四&quot;青年红色革命精神诵...</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8282">
                        <p><span>3</span>爱心关怀在行动</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8280">
                        <p><span>4</span>东郊市民学校开展道德讲堂...</p>
                    </a>
                </li>
                <li>
                    <a href="/Article/Details?id=8279">
                        <p><span>5</span>趣味拓展 乐享健康</p>
                    </a>
                </li>


            </ul>
        </div>


    </div>











    <div class="pc_right r">
        <div class="pc-key">
            <div class="pc-key-show">
                <div class="key-show-title l">
                    活动标题： <input type="text" name="" id="ArticleName" value="" />
                </div>
                <div class="key-show-date l clearfix">
                    <div class="show-date-p1 l">
                        发布日期：
                    </div>
                    <div class="show-date1 l">
                        <img src="images/activitydails/rili.png" class="starttime_img"><input type="text" placeholder="2017-01-10" class="starttime" />
                    </div>
                    <div class="show-date-p2 l">-</div>
                    <div class="show-date2 l">
                        <img src="images/activitydails/rili.png" class="endtime_img"><input type="text" placeholder="2017-01-13" class="endtime" />
                    </div>
                    <div id='schedule-box' class="boxshaw"></div>

                    <div id='schedule-box1' class="boxshaw"></div>
                </div>
                <div class="key-show-search l">
                    <a href="javascript:void();" onclick="SearchArticle();"><img src="/images/activitydails/search-img.png" />检索</a>
                </div>
                <div class="key-show-close r">
                    <a href="javascript:;"><img src="/images/activitydails/close.png" /></a>
                </div>
            </div>
            <div class="pc-key-hide">
                <a href="javascript:;">打开索引 <img src="/images/activitydails/search-img.png" /></a>
            </div>
        </div>

        <div class="pr_detail">

            <%
                Activity activity = (Activity) request.getAttribute("activityDetails");
            %>
            <div class="centent_title">
                <span title=""><%=activity.getName()%></span>
            </div>
            <div class="article_ori">
                <p><%=activity.getLaunchTime()%> </p>
            </div>
            <div class="article_content">
                <p style="text-align: justify; text-indent: 2em;"></p>
                <img src="<%=activity.getImg()%>"/>
            </div>
            <table width="100%" cellspacing="0" cellpadding="0" class="page_context">
                <tbody>
                <tr id="ctl00_ctl00_ctl00_cp_cp_Left_cp_tr_pre">
                    <td><%=activity.getInfo()%></td>

                </tr>
                </tbody>
            </table>

        </div>

    </div>
</div>






<%@include file="foot.jsp" %>



<script src="js/newjs/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="js/newjs/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/newjs/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="js/newjs/schedule.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.tiles.js"></script>
<script src="Content/layui/src/layui.js"></script>





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


<script src="Content/Layui/src/layui.js"></script>
<script src="js/newjs/article.js" type="text/javascript" charset="utf-8"></script>
<script>
    window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdPic": "", "bdStyle": "0", "bdSize": "16" }, "share": {} };
    with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
</script>
<script src="Content/artDialog4.1.7/artDialog.source.js?skin=simple"></script>
<script src="Content/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script type="text/javascript">
    layui.use('table', function() {
        var table = layui.table, form = layui.form;
    });

    function CreateCollection(id, type) {
        $.post("/User/CheckUserLogined", {}, function(msg) {

            if (msg.success) {
                art.dialog.open("/Collection/Create?id=" + id + "&type=" + type, {
                    title: "收藏创建",
                    width: 640
                });
            } else {
                layer.msg(msg.message);
            }

        });
    }

    $(".article_content img").each(function(i){
        var w=$(this).width();
        var h=$(this).height();
        if(w>640){
            $(this).width(640);
            $(this).height(640/w*h);
        }
    });



    function SearchArticle() {
        var coursename = $("#ArticleName").val();
        var starttime = $(".starttime").val();
        var endtime = $(".endtime").val();
        location.href = "/Article/Index?keyWords=" + coursename + "&starttime=" + starttime + "&endtime=" + endtime;
    }

    $(document).ready(function () {
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
        //$(".starttime").blur(function () {
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
        //课程分类
        $(".c_menu_li").mouseover(function () {
            $(this).find(".c_menu_main").css({ "color": "#fff" })
        }).mouseleave(function () {
            $(this).find(".c_menu_main").css({ "color": "#000" })
        })
        //导航
        $(".nav ul li").mouseover(function () {
            $(this).find("a").css({ "color": "#ffc617" })
        }).mouseleave(function () {
            $(this).find("a").css({ "color": "#fff" })
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
            $(this).find("a").css({ "color": "#5166d7" })
        }).mouseleave(function () {
            $(this).find("a").css({ "color": "#000" })
        })
        $(".c_menu_li ul li").mouseover(function () {
            $(this).find(".list").show()
        }).mouseleave(function () {
            $(this).find(".list").hide()
        })

    });

</script>


</body>
</html>
