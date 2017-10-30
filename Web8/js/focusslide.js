﻿/* Fucus*/
$(function () {
    var sWidth = $(".bd").width(); //获取焦点图的宽度（显示面积）
    var len = $(".bd ul li").length-1; //获取焦点图个数
	var index = 0;
	var picTimer;
	

	//上一页、下一页按钮透明度处理
	$(".bd .prev").css("opacity", 0.1).hover(function () {
		$(this).stop(true,false).animate({"opacity":"0.3"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.1"},300);
	});

	//上一页按钮
	$(".bd .prev").click(function () {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//下一页按钮
	$(".bd .next").click(function () {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$(".bd ul").css("width", sWidth * (len));
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
    $(".bd").hover(function () {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000); //此4000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$(".bd ul").stop(true, false).animate({ "left": nowLeft }, 300); //通过animate()调整ul元素滚动到计算出的position
		//$("#Focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
		//$(".bd .btn span").stop(true, false).animate({ "opacity": "0.4" }, 300).eq(index).stop(true, false).animate({ "opacity": "1" }, 300); //为当前的按钮切换到选中的效果
	}
});
