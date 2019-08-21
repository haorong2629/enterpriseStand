window.onload = function() {
	var x;
	var y = $(window).height();
	var font;
	var n=$(".ban .swiper-slide").length;//获取到的banner数量

	//设置xiala_a的高度
	var Hei=$(window).height()-$(".head").height();
	$(".xiala_replace").css("height",Hei+"px");
	setTimeout(function(){
		$("body").height(y);
		$(".head").css("display","block");
		
		var mySwiper = new Swiper('.swiper-container', {
			autoplay: 2000,//可选选项，自动滑动
			speed:500,//运动时间
			autoplay:3000,//间隔时间   
			autoplayDisableOnInteraction : false,//手动滑动后是否继续循环，false为重启autoplay
			pagination : '.swiper-pagination',
			paginationClickable :true,//点击分页器切换
			loop : true,//第一张和最后一张切换
			longSwipesRatio : 0.5,//缓慢拖动50%才能切换
		})
		for(var i = 0; i < n; i++) { //按钮内容赋值
	//		alert(1);
			if(i == 0) {
				$(".swiper-pagination span").eq(i).text("H");
				console.log(0);
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


		//banner图片居中
		var imgH,divH,imgW,divW;
		divW=$(window).width();
		divH=$(window).height();
		var i
		for(i=0;i<$(".swiper-container .swiper-slide").length;i++){
			imgW=$(".swiper-wrapper img").eq(i).width();
			imgH=$(".swiper-wrapper img").eq(i).height();
			if(imgW>=divW&&imgH>=divH){//宽高都超过，居中
				if(imgW/imgH>divW/divH){//高度1.2倍
					$(".swiper-wrapper img").eq(i).css({
						"height":1.2*divH+"px",
						"width":1.2*imgW*divH/imgH+"px",
						"margin-left":-(imgW*1.2*divH/imgH-divW)/2+"px",
						"margin-top":-(1.2*divH-divH)/2+"px",
						"opacity":1
					})
				}else{//宽度1.2倍
					$(".swiper-wrapper img").eq(i).css({
						"height":1.2*imgH*divW/imgW+"px",
						"width":1.2*divW+"px",
						"margin-left":-(1.2*divW-divW)/2+"px",
						"margin-top":-(imgH*1.2*divW/imgW-divH)/2+"px",
						"opacity":1
					})
				}
			}else{
				if(imgW/imgH>divW/divH){//高度100%
					$(".swiper-wrapper img").eq(i).css({
						"height":"100%",
						"width":imgW*divH/imgH+"px",
						"margin-left":-(imgW*divH/imgH-divW)/2+"px",
						"opacity":1
					})
				}else{//宽度100%
					$(".swiper-wrapper img").eq(i).css({
						"width":"100%",
						"height":imgH*divW/imgW+"px",
						"margin-top":-(imgH*divW/imgW-imgH)/2+"px",
						"opacity":1
					})
				}
			}
		}
	},300)
	
	
	//移动端下拉菜单图标切换
	$(".xiala").attr("flag",1);
	$(".xiala_a a").css({
		"marginRight":"-0.5rem",
		"opacity":"0"
	})

	var num=$(".xiala_a .head_a").length;
	var jishi;
	$(".xiala").click(function(){
		if($(this).attr("flag")==1){
			clearTimeout(jishi);
			$(".head_replaceF").css("z-index",2);
			$(".xiala_a").css("height","auto");
			$(this).css({"background":"url(/static/phone_new/img/phone_xiala2.png) no-repeat","backgroundSize":"24px 24px"});
			//head添加动画
			for(i=0;i<num;i++){//4为下拉菜单子节点个数
				$(".xiala_a a").eq(i).css({
					"transition":"all 0.8s ease-in-out "+(0.4+i*0.08)+"s",
					"-moz-transition":"all 0.8s ease-in-out "+(0.4+i*0.08)+"s",
					"-webkit-transition":"all 0.8s ease-in-out "+(0.4+i*0.08)+"s",
					"-o-transition":"all 0.8s ease-in-out "+(0.4+i*0.08)+"s",
					"marginRight":"0.5rem",
					"opacity":1
				})
			}
			$(".head_dong").animate({"opacity":0},800);
			$(".fengexian").css("opacity",1);
			$(".head_replace").removeClass("head_dong1 head_dong2");
			$(".head_replace").addClass("head_dong1");
			//
			
			$(".xiala").attr("flag",0);
		}else{
			clearTimeout(jishi);
			for(i=0;i<num;i++){//4为下拉菜单子节点个数
				$(".xiala_a a").eq(i).css({
					"transition":"all 0.8s ease-in-out "+(num-i)*0.08+"s",
					"-moz-transition":"all 0.8s ease-in-out "+(num-i)*0.08+"s",
					"-webkit-transition":"all 0.8s ease-in-out "+(num-i)*0.08+"s",
					"-o-transition":"all 0.8s ease-in-out "+(num-i)*0.08+"s",
					"marginRight":"0",
					"opacity":0
				})
				
			}
			jishi=setTimeout(function(){
				$(".head_replaceF").css("z-index",1);
				$(".xiala_a").css("height",0);
			},1500);
			$(".fengexian").css("opacity",0);
			$(".head_replace").removeClass("head_dong1 head_dong2");
			$(".head_replace").addClass("head_dong2");
			$(this).css({"background":"url(/static/phone_new/img/phone_index2.png) no-repeat","backgroundSize":"24px 24px"});
			$(".xiala").attr("flag",1);
			$(".head_dong").delay(500).animate({"opacity":1},800);
		}
	})
}