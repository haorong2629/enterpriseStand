$(function() {
	var wid = $(window).width();
//	alert(wid);
	var font = 100 * wid / 1080;
	$('html').css("fontSize", font);
	
	$(".xiala_a a").click(function(){
		$(".xiala_a a").css("color","#fafafa")
		$(this).css("color","#9d723d");
	})
	//延时加载0.3s
	setTimeout(function(){
		$("body").css("display","block");
	},300)
})