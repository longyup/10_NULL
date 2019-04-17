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
	$(".courseNav-bd ul li").mouseover(function  () {
		$(this).find(".list-title").css({"background":"#1291e7","color":"#fff"})
		$(this).find(".list").stop().slideDown()
	}).mouseleave(function  () {
		$(this).find(".list-title").css({"background":"#f5f5f5","color":"#333"})
		$(this).find(".list").stop().slideUp()
	})
	$(".mainlb-item ul li .pic").mouseover(function  () {
		$(this).find(".pic-nt").show()
	}).mouseleave(function  () {
		$(this).find(".pic-nt").hide()
	})
	$(".cc-con ul li .pic").mouseover(function  () {
		$(this).find(".pic-nt").show()
	}).mouseleave(function  () {
		$(this).find(".pic-nt").hide()
	})
	
	$(".banner_lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop"});
	$(".ctj-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop"});
	$(".topicCourse-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".newsreel-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".fitness-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".famous-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".travel-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".life-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".tourism-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".onlineWomen-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".newCourse-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".enjoyCourse-lb").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",vis:4});
	$(".pcCourse-lb1").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:3,interTime:50,trigger:"click"});
	$(".pcCourse-lb2").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:3,interTime:50,trigger:"click"});
	$(".pcCourse-lb3").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:3,interTime:50,trigger:"click"});
	$(".footer-right").click(function() {
      $("html,body").animate({scrollTop:0}, 500);
	});
	
	$(".pct-list ul li").click(function  () {
		var index = $(this).index();
		$(".pclb-item").hide();
		$(".pclb-item").eq(index).show();
        console.log(1)
	})
})









