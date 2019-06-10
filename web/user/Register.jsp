<%--
  Created by IntelliJ IDEA.
  User: Vasilis
  Date: 2019/4/17
  Time: 20:45
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


    <title>注册</title>


    <link href="<%= path%>/Content/layui/src/css/layui.css" rel="stylesheet" />

    <link href="<%= path%>/css/head.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/css/login.css" />

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

<%@include file="../head.jsp"%>








<div class="login">
    <div class="login_head clearfix">
        <div class="enroll_title1_1 l">
            会员注册
        </div>


    </div>
    <div class="login_con">
        <div class="regist_input">

            <div class="regmain black" id="writeInfoDiv">
                <ul class="regform">
                    <li>
                        <div class="regtitle"><b>*</b> 用户名：
                        </div>
                        <div class="texlist">
                            <input name="UserAcount" type="text" id="UserAcount" class="tex" onkeyup="value = value.replace(/\s/g, '');" />
                            <i class="i-name"></i>
                        </div>
                        <span id="userAcountTip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b> 密码：
                        </div>
                        <div class="texlist">
                            <input name="UserPwd" type="password" id="UserPwd" class="tex"/>
                            <i class="i-password"></i>
                        </div>
                        <span id="userPwdTip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b> 确认密码：
                        </div>
                        <div class="texlist">
                            <input name="UserPwd1" onpaste="return false" type="password" id="UserPwd1" class="tex" />
                            <i class="i-password"></i>
                        </div>

                        <span id="userPwd1Tip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b> 性别：
                        </div>
                        <select name="Sex" id="Sex" style="width: 248px;">
                            <option value="1" selected="selected">男</option>
                            <option value="0">女</option>
                        </select>
                        <span id="sexTip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b>联系电话：</div>
                        <div class="texlist">
                            <input name="Mobile" type="text" id="Mobile" class="tex"/>
                        </div>
                        <span id="mobileTip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b>姓名：</div>
                        <div class="texlist">
                            <input name="UserName" type="text" id="UserName" class="tex" onkeyup="value = value.replace(/\s/g, '');" />
                        </div>

                        <span id="userNameTip"></span>
                    </li>
                    <li>
                        <div class="regtitle"><b>*</b>身份证：
                        </div>
                        <div class="texlist">
                            <input name="IdCard" type="text" id="IdCard" onblur="isIdCardNo1(this)" class="tex" />
                        </div>
                        <span id="tbcardTip"></span>
                    </li>
                    <li>
                        <div class="regtitle">
                            <b>*</b>确认身份证：
                        </div>
                        <div class="texlist">
                            <input name="IdCard1" onpaste="return false" type="text" id="IdCard1" onblur="isTrue()" class="tex" />
                        </div>
                        <span id="idCardTip"></span>
                    </li>

                    <li class="newloginyzm">
                        <div class="regtitle"> 验证码：</div>
                        <div class="texlist" style="width: 120px;">
                            <input name="tbyzm" type="text" id="tbyzm" class="tex" style="width: 85px;"/>
                        </div>

                        <img id="imgValidateCode" alt="点击图片刷新" src="/User/CodeImg" style="vertical-align: middle; margin-left: 5px;" />
                        <a onclick="javascript:Changeimg();">看不清?<span>换一个</span></a>

                    </li>
                </ul>
                <div class="setps" id="showItem">
                    <h3>设置详细资料</h3>
                    <span id="showBar" class="down" title="点击展开"></span>
                </div>
                <ul class="regform" id="detailBox" style="display: none;">
                    <li>
                        <div class="regtitle">
                            邮件：
                        </div>
                        <div class="texlist">
                            <input name="Email" type="text" id="Email" class="tex"/>
                        </div>
                        <span id="emailTip">选填项</span>
                    </li>
                    <li>
                        <div class="regtitle">
                            联系地址：
                        </div>
                        <div class="texlist">
                            <input name="Address" type="text" id="Address" class="tex"/>
                        </div>
                        <span id="AddressTip">选填项</span>
                    </li>



                </ul>

                <ul class="regform">

                    <li class="btn" style="text-align: center;">
                            <span class="regitst_bnt">
                            <input type="button" name="btnsubmit2" value="注册提交" id="btnsubmit2" class="register_btn" onclick="return register_onclick();" />
                        </span>
                    </li>
                </ul>
            </div>

        </div>






    </div>
</div>



<%@include file="../foot.jsp"%>



<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="js/html5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/respond.js" type="text/javascript" charset="utf-8"></script>
<script src="js/schedule.js" type="text/javascript" charset="utf-8"></script>
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



<script src="js/formValidator-4.0.1.js" type="text/javascript" charset="UTF-8" defer="defer"></script>
<script src="js/formValidatorRegex.js" type="text/javascript" charset="utf-8"></script>

<script src="Content/My97DatePicker/WdatePicker.js"></script>
<script src="Content/layui/src/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['form', 'element', 'jquery', 'layer', "laydate"], function() {
        var element = layui.element;
        var form = layui.form,
            layer = layui.layer,
            laydate = layui.laydate,
            $ = layui.jquery;

    });
</script>
<script>
    layui.use('table', function() {
        var table = layui.table, form = layui.form;

        $("#UserGroupName").click(function() {
            var type = "200px";
            var con = '/User/UserGroupType';
            layer.open({
                type: 2,
                title: "用户组分类",
                offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                ,
                area: ['500px', '400px']
                ,
                id: 'layerDemo' + type //防止重复弹出
                ,
                content: con,
                btn: '确定',
                btnAlign: 'c' //按钮居中
                ,
                shade: 0 //不显示遮罩
                ,
                yes: function() {
                    var body = layer.getChildFrame('body');
                    var userGroupId = body.find("#UserGroupId").val();
                    var userGroupName = body.find("#UserGroupName").val();
                    if (UserGroupId == "") {
                        $("#UserGroupId").val("");
                        $("#UserGroupName").text("点击选择");
                    } else {
                        $("#UserGroupId").val(userGroupId);
                        $("#UserGroupName").text(userGroupName);
                    }
                    layer.closeAll();
                }
            });
        });
    });
</script>
<script type="text/javascript">

    function isIdCardNo1(obj) {
        num = document.getElementById("IdCard").value;
        num = num.toUpperCase();
        if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
            $("#tbcardTip").html("输入的身份证号长度不对。");
            return false;
        } //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
        //下面分别分析出生日期和校验位
        var len, re; len = num.length; if (len == 15) {
            re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
            var arrSplit = num.match(re);  //检查生日日期是否正确
            var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3] + '/' + arrSplit[4]);
            var bGoodDay; bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
            if (!bGoodDay) {
                $("#tbcardTip").html("输入的身份证号里出生日期不对。");
                return false;
            } else { //将15位身份证转成18位 //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                var nTemp = 0, i;
                num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
                for (i = 0; i < 17; i++) {
                    nTemp += num.substr(i, 1) * arrInt[i];
                }
                num += arrCh[nTemp % 11];
                return true;
            }
        }
        if (len == 18) {
            re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
            var arrSplit = num.match(re);  //检查生日日期是否正确
            var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
            var bGoodDay; bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
            if (!bGoodDay) {
                //alert(dtmBirth.getYear());
                //alert(arrSplit[2]);
                $("#tbcardTip").html("输入的身份证号里出生日期不对。");
                return false;
            }
            else { //检验18位身份证的校验码是否正确。 //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                var valnum;
                var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                var nTemp = 0, i;
                for (i = 0; i < 17; i++) {
                    nTemp += num.substr(i, 1) * arrInt[i];
                }
                valnum = arrCh[nTemp % 11];
                if (valnum != num.substr(17, 1)) {
                    //$("#tbcardTip").html("18位身份证的校验码不正确！应该为：" + valnum);
                    $("#tbcardTip").html("18位身份证的校验码不正确!");
                    return false;
                }
                isIdCardNo(obj);

                return true;

            }
        }

        return false;
    }

    function isIdCardNo(obj) {
        var CardId = document.getElementById("IdCard").value;
        $.ajax({
            type: "post",
            url: "/User/IdIsHave",
            data: { CardId: CardId },
            dataType:"json",
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $("#tbcardTip").html("网络异常,请重试！")
            },
            success: function (result) {
                if (result.code == "0") {
                    $("#tbcardTip").html("该身份证可以注册");
                    return true;
                }
                if (result.code == "1") {
                    $("#tbcardTip").html("<font color=red>该身份证已被注册</font>");
                    return false;
                }

            }
        });



    }

    function register_onclick() {
        var validate = jQuery.formValidator.pageIsValid('1');
        var d = new Date();
        var obj = document.getElementById("imgValidateCode");
        obj.src = '/User/CodeImg?d=' + d;
        if (validate) {
            var user = {};
            user.UserAcount = $.trim($("#UserAcount").val());
            user.UserPwd = $.trim($("#UserPwd").val());
            user.Sex = $("#Sex").val();
            user.UserGroupId = $("#UserGroupId").val();
            user.Email = $("#Email").val();
            user.IdCard = $("#IdCard").val();
            user.IdCard1 = $("#IdCard1").val();
            user.UserName = $("#UserName").val();
            user.Mobile = $("#Mobile").val();
            user.Description = $("#Address").val();
            //if ($("#BriDate").val() != '') {
            //    user.BriDate = $("#BriDate").val();
            //}
            var code = $("#tbyzm").val();


            $.post("/User/Register", { request: JSON.stringify(user), code: code }, function (msg) {

                layer.msg(msg.message);
                if (msg.success) {
                    window.location.href = '/User/Login';
                }
                else {
                    var d = new Date();
                    var obj = document.getElementById("imgValidateCode");
                    obj.src = '/User/CodeImg?d=' + d;
                }
            });
        }
    }

    $(document).ready(function() {
        $.formValidator.initConfig({
            formID: "aspnetForm",
            debug: false,
            onError: function(msg, obj, errorlist) {
                layer.msg(msg, { icon: 2 });
            }
        });
        $("#UserAcount").formValidator({
            tipID: "userAcountTip",
            onShow: "请输入用户名,不能为空",
            onFocus: "6~16个字符,包括字母/数字/下划线,字母开头",
            onCorrect: "该用户名可以注册"
        }).inputValidator({
            min: 6,
            max: 16,
            onError: "用户名长度不符合规则"
        }).regexValidator({
            regExp: "^[0-9a-zA-Z_]{1,}$",
            onError: "您输入的用户名非法"
        }).ajaxValidator({
            dataType: "html",
            async: true,
            url: '/User/IsHave',
            success: function(data) {
                if (data == 0) return true;
                if (data == 1) return false;
                return false;
            },
            buttons: $("#button"),
            error: function(jqXHR, textStatus, errorThrown) {
                alert("服务器没有返回数据，可能服务器忙，请重试" + errorThrown);
            },
            onError: "该用户名不可用，请更换用户名",
            onWait: "正在对用户名进行合法性校验，请稍候..."
        });
        $("#UserPwd").formValidator({
            tipID: "userPwdTip",
            onShow: "请输入密码",
            onFocus: "6~16个字符,包括字母/数字/符号,区分大小写",
            onCorrect: "密码合法",
            onError: "输入格式不正确"
        }).inputValidator({
            min: 6,
            max: 16,
            empty: {
                leftempty: false,
                rightempty: false,
                emptyerror: "密码两边不能有空符号"
            },
            onError: "密码不能为空,请确认"
        });
        $("#UserPwd1").formValidator({
            tipID: "userPwd1Tip",
            onShow: "再次输入密码",
            onFocus: "和上面密码一致",
            onCorrect: "密码一致"
        }).inputValidator({
            min: 6,
            max: 16,
            empty: {
                leftempty: false,
                rightempty: false,
                emptyerror: "密码两边不能有空符号"
            },
            onError: "密码不一致,请确认"
        }).compareValidator({
            desID: "UserPwd",
            operateor: "=",
            onError: "2次密码不一致,请确认"
        });
        $("#Mobile").formValidator({
            tipID: "mobileTip",
            onFocus: "格式例如：0577-88888888或11位手机号码",
            onCorrect: "谢谢您的合作",
            onEmpty: "您真的不想留手机或电话了吗？"
        }).regexValidator({
            regExp: ["tel", "mobile"],
            dataType: "enum",
            onError: "您输入的手机或电话格式不正确"
        });
        //$("#Email").formValidator({
        //    tipID: "emailTip",
        //    empty: true,
        //    onEmpty: "您真的不留下邮箱地址吗？",
        //    onShow: "请输入邮箱",
        //    onFocus: "请输入规范的邮箱地址",
        //    onCorrect: "恭喜您,您输对了"
        //}).inputValidator({
        //    min: 1,
        //    max: 100,
        //    onError: "您输入的邮箱长度非法,请确认"
        //}).regexValidator({
        //    regExp: "^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",
        //    onError: "您输入的邮箱格式不正确"
        //});

        //$("#BriDate").formValidator({
        //    tipID: "BirthDateTip",
        //    empty: true,
        //    onShow: "选填项",
        //    onFocus: "输入您的出生日期",
        //    onCorrect: "恭喜您,您输对了"
        //}).inputValidator({
        //    min: 6,
        //    max: 99,
        //    onError: "日期格式不正确"
        //});
        /*            $("#UserGroupId").formValidator({
                        tipID: "userGroupIdTip",
                        onShow: "请选择您所在镇区",
                        onFocus: "必须选择一个",
                        onCorrect: "谢谢您的配合"
                    }).inputValidator({
                        min: 1,
                        onError: "您是不是忘记选择所在镇区了"
                    });*/
        $("#UserName").formValidator({
            tipID: "userNameTip",
            onShow: "输入用户名",
            onFocus: "不能为空,且为中文",
            onCorrect: "输入正确"
        }).regexValidator({
            regExp: "[\u4e00-\u9fa5]",
            onError: "请输入中文"
        });
        //$("#IdCard").formValidator({
        //    tipID: "idCardTip",
        //    onshow: "请填写身份证",
        //    onfocus: "输入15或18位的身份证",
        //    oncorrect: "输入正确"
        //}).inputValidator({
        //    min: 1,
        //    max: 100,
        //    onError: "您输入的身份证长度非法,请确认"
        //}).regexValidator({
        //    //regExp: "^[0-9０-９]{14}[0-9０-９xX]$|^[0-9０-９]{17}[0-9０-９xX]$",
        //    regExp: " ^[1 - 9]\d{5}(18 | 19 | ([23]\d)) \d{2 } ((0[1 - 9]) | (10 | 11 | 12))(([0 - 2][1 - 9]) | 10 | 20 | 30 | 31) \d{3 } [0 - 9Xx]$",
        //    onError: "您输入的身份证格式不正确"
        //});
        //$("#IdCard1").formValidator({
        //    tipID: "idCardTip",
        //    onShow: "再次输入身份证",
        //    onFocus: "和上面身份证一致",
        //    onCorrect: "身份证一致"
        //}).inputValidator({
        //    min: 6,
        //    max: 16,
        //    empty: {
        //        leftempty: false,
        //        rightempty: false,
        //        emptyerror: "身份证两边不能有空符号"
        //    },
        //    onError: "身份证不一致,请确认"
        //}).compareValidator({
        //    desID: "IdCard",
        //    operateor: "=",
        //    onError: "2次身份证不一致,请确认"
        //});
    });

    function Changeimg() {
        var d = new Date();
        var obj = document.getElementById("imgValidateCode");
        obj.src = '/User/CodeImg?d=' + d;
    }
    $("#showBar").click(function () {
        var action = $(this).attr("class");
        if (action == "up") {
            $("#detailBox").slideUp("slow");
            $(this).attr({ "class": "down", "title": "点击展开" });
        }
        else {
            $("#detailBox").slideDown("slow");
            $(this).attr({ "class": "up", "title": "点击收起" });
        }
    });
</script>

</body>

<%--<script>--%>
<%--    --%>
<%--    function validateForm() {--%>
<%--        var UserAcount = document.getElementById("UserAcount");--%>
<%--        if (UserAcount == ""){--%>
<%--            alert("用户名不能为空");--%>
<%--            return false;--%>
<%--        }--%>

<%--        var UserPwd = document.getElementById("UserPwd");--%>
<%--        if (UserPwd == ""){--%>
<%--            alert("密码不能为空");--%>
<%--            return false;--%>
<%--        }--%>
<%--    }--%>
<%--    --%>
<%--</script>--%>

</html>

