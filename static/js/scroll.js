$(document).ready(function(){
	$(".scroll").attr("flag","1");
	var l=$("body .scroll").length;
	var wH=$(window).height();
	$(".foot").css({"height":"175px","overflow":"hidden"});
	$(".foot ul").css({"opacity":0,"margin-top":"200px"});
	$(".con_parent").scroll(function(){
		var scroll=$(".con_parent").scrollTop();
		for(i=0;i<l;i++){
			var offsetT=$("body .scroll").eq(i).parent("div").offset().top;
			if(offsetT<wH&&$("body .scroll").eq(i).attr("flag")){
				//运动
				$(".scroll").eq(i).animate({"top":0,"opacity":1},1000);
				$(".scroll").eq(i).removeAttr("flag");
			}
		}
		//给foot运动
		if($(".foot").offset().top<wH-20){
			for(i=0;i<$(".foot ul").length;i++){
				$(".foot ul").eq(i).delay(300*i).animate({"margin-top":0,"opacity":1},1000);
			}
		}
	})
	//初始化
		for(i=0;i<l;i++){
			var offsetT=$("body .scroll").eq(i).parent("div").offset().top;
			if(offsetT<wH&&$("body .scroll").eq(i).attr("flag")){
				//yundong
				$(".scroll").eq(i).animate({"top":0,"opacity":1},1000);
				$(".scroll").eq(i).removeAttr("flag");
			}
		}
})
