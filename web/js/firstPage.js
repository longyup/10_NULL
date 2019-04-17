$(document).ready(function  () {
	$(".search_con").click(function  () {
		$(".type_con").show()
	});
	$(".type_con ul li").click(function  () {
		$(".type").html($(this).html());
		$(".type_con").hide()
	});
	$(".nav ul li").mouseover(function(){
		$(this).find(".list").stop().slideDown()
	}).mouseleave(function(){
		$(this).find(".list").stop().slideUp()
	});
	$(".banner_lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop"});
	$(".sqhd_lb").slide({mainCell:".bd ul",autoPlay:true,effect:"fade"});
	$(".tcl-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:3});
	$(".cc-title2 ul li").mouseover(function  () {
		$(".cc-title2 ul li").removeClass("on")
		$(this).addClass("on");
	});
	$(".rank-c").mouseover(function  () {
		$(".rank-c").addClass("on")
		$(".rank-s").removeClass("on")
		$(".rc-course").show()
		$(".rc-study").hide()
	});
	$(".rank-s").mouseover(function  () {
		$(".rank-s").addClass("on")
		$(".rank-c").removeClass("on")
		$(".rc-course").hide()
		$(".rc-study").show()
	});
	$(".notice-title-list ul li").mouseover(function  () {
		var index =$(this).index();
		$(".notice-title-list ul li").removeClass("on");
		$(this).addClass("on");
		$(".notice-con").hide();
		$(".notice-con").eq(index).show();
	});
	$(".nav-con ul li").mouseover(function  () {
		$(this).find(".nl-title").css({"background":"rgba(5,80,183,0.75)"})
	}).mouseleave(function  () {
		$(this).find(".nl-title").css({"background":"none"})
	});
	$(".footer-right").click(function() {
      $("html,body").animate({scrollTop:0}, 500);
	});
})









