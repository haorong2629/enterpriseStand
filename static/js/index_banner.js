$(function() {
	//判断pc还是手机
//	function IsPC() {
//	  var userAgentInfo = navigator.userAgent;
//	  var Agents = ["Android", "iPhone",
//	        "SymbianOS", "Windows Phone",
//	        "iPad", "iPod"];
//	  var flag = true;
//	  for (var v = 0; v < Agents.length; v++) {
//	    if (userAgentInfo.indexOf(Agents[v]) > 0) {
//	      flag = false;
//	      break;
//	    }
//	  }
//	  return flag;
//	}
//	if(!IsPC()){//手机端
//		//跳转链接
//		alert("shouji");
//	}
	
//	var flag=IsPC();
	var x,y,z;
	var font;
	function Font() {
		x = $(window).width();
		y=$(document.body).height();
		if(x<1080){
			x=1080;
		}
		font = 100 * x / 1920;
		$('html').css("fontSize", font);
		$('html,body,.Banner,.head').width(x);
	}
	Font();
	$(window).resize(function() {
		Font();
		window.location.reload();
	})
	
	var bannerN=$(".ban img").length;
	var a=[];
	for(i=0;i<bannerN;i++){
		a.push($(".ban img").eq(i).attr("src"));
		$(".ban img").eq(i).attr("src","");
	}
	$(".preimg img").eq(0).attr("src",a[0]);
	$("body").css("display","block");
	$(".preimg img").eq(0).load(function(){
		for(i=0;i<bannerN;i++){
			$(".ban img").eq(i).attr("src",a[i]);
		}
	})
})

window.onload = function() {
	var n = $(".ban .swiper-slide").length; //n为后台获取到的轮播图数量
	var m=0;
	
	//$(".Banner img").eq(0).load(function(){
		//m++;
		//console.log(n);
		//if(m==n){
			//setTimeout(function() {
				$(".preimg").css("display","none");
				var mySwiper = new Swiper('.swiper-container', {
					autoplay: 2000, //可选选项，自动滑动
					speed: 500, //运动时间
					autoplay: 3000, //间隔时间   
					autoplayDisableOnInteraction: false, //手动滑动后是否继续循环，false为重启autoplay
					pagination: '.swiper-pagination',
					paginationClickable: true, //点击分页器切换
					loop: true, //第一张和最后一张切换
					longSwipesRatio: 0.5, //缓慢拖动50%才能切换
					prevButton: '.swiper-button-prev',
					nextButton: '.swiper-button-next',

				})
				for(var i = 0; i < n; i++) { //按钮内容赋值
				console.log(n);
					if(i == 0) {
						$(".swiper-pagination span").eq(i).text("H");
					} else if(i == 1) {
						$(".swiper-pagination span").eq(i).text("E");
					} else if(i == 2) {
						$(".swiper-pagination span").eq(i).text("A");
					} else if(i == 3) {
						$(".swiper-pagination span").eq(i).text("D");
					} else if(i == 4) {
						$(".swiper-pagination span").eq(i).text("L");
					} else if(i == 5) {
						$(".swiper-pagination span").eq(i).text("I");
					} else if(i == 6) {
						$(".swiper-pagination span").eq(i).text("N");
					} else if(i == 7) {
						$(".swiper-pagination span").eq(i).text("E");
					} else {
						$(".swiper-pagination span").eq(i).text("Z");
					}
				}
			//}, 300)
		//}
	//})
}