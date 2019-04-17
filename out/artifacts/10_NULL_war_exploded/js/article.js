//个人中心 分页
$(document).ready(function(){	
	$(".paga_a").click(function(){
		var index = $(this).index();
		$(".paga_a").removeClass("paga_on");
		$(this).addClass("paga_on");
	});
});
//个人中心左侧-列表鼠标移入图标切换
$(document).ready(function  () {
	$(".pc_left2_con ul li a").mouseover(function(){
		var src = $(this).find("img").attr("src");
		var src1 = src.slice(0,11);
		var src_r1 = src1+"1.png";
		$(this).find("img").attr("src",src_r1);	
//		$(this).find("a").css("color","#ff7f00")
	}).mouseleave(function(){
		var src2=$(this).find("img").attr("src");
		var src3 = src2.slice(0,11)+".png";
		$(this).find("img").attr("src",src3);
//		$(this).find("a").css("color","#454545")
	})
});
$(document).ready(function(){
	var aa = $(".rp_con_detail").length;
	for(var i = 0; i<aa;i++){		
	if ($(".rp_con_detail").eq(i).find(".rp_con_detail1").find("img").attr("src").length > 0 ) {	
		$(".rp_con_detail").eq(i).find(".rp_con_detail2").attr({
			"width":"585px",
			});
	} else{
		$(".rp_con_detail").eq(i).find(".rp_con_detail2").css({
			"width":"710px"
	});
		$(".rp_con_detail").eq(i).find(".rp_con_detail1").hide();
	}
	}
});
$(document).ready(function(){
	$(".search_img").click(function  () {
		$(".type_con").show();
	});
	$(".type_con ul li").click(function  () {
		$(".type").html($(this).html());
		$(".type_con").hide();
	});
	$(".new_course_lb .bd ul li").mouseover(function  () {
		$(this).find(".pic_con").show();
	}).mouseleave(function  () {
		$(this).find(".pic_con").hide();
	});
});
//table tr背景色
$(document).ready(function  () {	
	var length = $(".pr_detail_con tr").length;
	for (var i=0;i<=length;i++) {
		var num = $(".pr_detail_con tr").eq(i).index();
		if (num%2==0) {
			$(".pr_detail_con tr").eq(i).css({"background":"#f7fafe"});
		}
	}
});
//个人中心-学习统计title切换
$(document).ready(function  () {
	$(".pdct").click(function  () {
		$(".pdct").removeClass("pdct_on")
		$(this).addClass("pdct_on");
	});
	$(".pr_detail_title2").click(function  () {
		$(".pr_detail_title2").removeClass("pdt2_on")
		$(this).addClass("pdt2_on");
	});
});


//新闻页面左边栏
$(document).ready(function  () {
	$(".c_menu_li").mouseover(function(){
		$(this).find(".c_submenu").show();	
	}).mouseleave(function  () {
		$(this).find(".c_submenu").hide();
	});
	//登录状态弹窗
	$(".top_3_logined").mouseover(function(){
		$(".usernavson").show();
	}).mouseleave(function  () {
		$(".usernavson").hide();
	});

});

$(document).ready(function  () {
	$(".search_con").click(function  () {
		$(".type_con").show()
	})
	$(".type_con ul li").click(function  () {
		$(".type").html($(this).html());
		$(".type_con").hide()
	})
})

//热点文章和分类页左侧栏
var first = $(".article_list1:first");
$(".article_list1").click(function(){
	  $(this).next("ul").slideToggle();
	  $(".article_list1").removeClass("al_on");
	  $(this).addClass("al_on");
});

//导航
$(document).ready(function  () {
	$(".nav ul li").mouseover(function(){
		$(this).find(".list").stop().slideDown()
	}).mouseleave(function(){
		$(this).find(".list").stop().slideUp()
	});
	$(".nav-con ul li").mouseover(function  () {
		$(this).find(".nl-title").css({"background":"rgba(5,80,183,0.75)"})
	}).mouseleave(function  () {
		$(this).find(".nl-title").css({"background":"none"})
	});
})













