$(document).ready(function(){
	var x=$(window).width();
	var y=$(window).height();
	var font;
	$(window).resize(function(){
//		console.log(1);
		//宽，按高度计算
		if(x/y>1920/1080){
			font=100*y/1080;
			$('html').css("fontSize",font);
		}else{
			//按宽度计算
			font=100*x/1920;
			$('html').css("fontSize",font);
		}
	})

})
