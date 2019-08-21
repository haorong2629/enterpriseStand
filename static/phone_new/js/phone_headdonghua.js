$(function(){
	//移动端下拉菜单图标切换
	$(".xiala").attr("flag",1);
	$(".xiala_a a").css({
		"marginRight":"-0.5rem",
		"opacity":"0"
	})
	
	var num=$(".xiala_a .head_a").length;
	var jishi1,jishi2;
	$(".xiala").click(function(){
//		alert(1);
		if($(this).attr("flag")==1){
			clearTimeout(jishi2);
			$(".head_replaceF").css("z-index",5);
			$(".xiala_a").css("height","auto");
			$(this).css({"background":"url(/static/phone_new/img/phone_xiala2.png) no-repeat","backgroundSize":"24px 24px"});
			$(".head_logo").attr("src","/static/phone_new/img/phone_index1.png");
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
			$(".head_logo").css({"background":"url(/static/phone_new/img/phone_index1.png) no-repeat","background-size":"2.9rem 2rem"});
			$(".head_replace").removeClass("head_dong1 head_dong2");
			$(".head").removeClass("head_dong4 head_dong3 head_dong5 head_dong6");
			$(".head").addClass("head_dong3");
			$(".head_replace").addClass("head_dong1");
//			$(".head").css("background","none");
			//
			
			$(".xiala").attr("flag",0);
		}else{
			$(".head_logo").attr("src","/static/phone_new/img/phone_index3.png");
			clearTimeout(jishi2);
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
			jishi2=setTimeout(function(){
				$(".head_replaceF").css("z-index",-1);
				$(".xiala_a").css("height",0);
				$(".head_logo").css({"background":"url(/static/phone_new/img/phone_index3.png) no-repeat","background-size":"2.9rem 2rem"});
			},1200);
			$(".head").removeClass("head_dong4 head_dong3 head_dong5 head_dong6");
			$(".head").addClass("head_dong4");
			$(".head_replace").removeClass("head_dong1 head_dong2");
			$(".head_replace").addClass("head_dong2");
			$(this).css({"background":"url(/static/phone_new/img/phone_index2.png) no-repeat","backgroundSize":"24px 24px"});
			$(".xiala").attr("flag",1);
		}
	})
	
	
	$(".foot ul li:first-child").click(function() {
		var ulL = $(this).parent().children("li").length;
		var index = $(this).parent("ul").index();
		if($(this).attr("flag")) {
			//jia动画10 
			for(i = 1; i < ulL; i++) {
				$(this).parent().children("li").eq(i).css({
					"transition": "all 0.8s ease-in-out " + (0.5 + (i - 1) * 0.06) + "s",
					"-moz-transition": "all 0.8s ease-in-out " + (0.5 + (i - 1) * 0.06) + "s",
					"-webkit-transition": "all 0.8s ease-in-out " + (0.5 + (i - 1) * 0.06) + "s",
					"-o-transition": "all 0.8s ease-in-out " + (0.5 + (i - 1) * 0.06) + "s",
				})
			}
			$(this).parent('ul').css({
				"transition": "all 0.8s ease-in-out",
				"-moz-transition": "all 0.8s ease-in-out",
				"-webkit-transition": "all 0.8s ease-in-out",
				"-o-transition": "all 0.8s ease-in-out",
			})
			$(this).parent("ul").css({
				"maxHeight": "5rem"
			});
			$(this).siblings().addClass("a");
			$(this).children("img").eq(0).css({
				"transform": "rotate(90deg)",
				"transition": "all linear 0.1s"
			});
			$(this).attr("flag", '');

			for(var y = 0; y < $(".foot ul").length; y++) {
				//				alert($(".foot ul").eq(y).children("li").eq(0).attr("flag"));
				if(y != index) { //ul关闭
					//					alert(1);
					var ul_Lin = $(".foot ul").eq(y).children("li").length;
					//					alert(ul_Lin)
					for(i = 1; i < ul_Lin; i++) {
						$(".foot ul").eq(y).children("li").eq(i).css({
							"transition": "all 0.8s ease-in-out " + 0.06 * (ul_Lin - i - 1) + "s",
							"-moz-transition": "all 0.8s ease-in-out " + 0.06 * (ul_Lin - i - 1) + "s",
							"-webkit-transition": "all 0.8s ease-in-out " + 0.06 * (ul_Lin - i - 1) + "s",
							"-o-transition": "all 0.8s ease-in-out " + 0.06 * (ul_Lin - i - 1) + "s",
						})
					}
					$(".foot ul").eq(y).css({
						"transition": "all 0.8s ease-in-out 0.5s",
						"-moz-transition": "all 0.8s ease-in-out 0.5s",
						"-webkit-transition": "all 0.8s ease-in-out 0.5s",
						"-o-transition": "all 0.8s ease-in-out 0.5s",
						"maxHeight": "1rem"
					})

					$(".foot ul").eq(y).children("li").eq(0).siblings().removeClass("a");
					$(".foot ul").eq(y).children("li").eq(0).children("img").eq(0).css({
						"transform": "rotate(0deg)",
						"transition": "all linear 0.1s"
					});
					$(".foot ul").eq(y).children("li").eq(0).attr("flag", 1);

				}
			}
		} else {
			for(i = 1; i < ulL; i++) {
				$(this).parent().children("li").eq(i).css({
					"transition": "all 0.8s ease-in-out " + 0.06 * (ulL - i - 1) + "s",
					"-moz-transition": "all 0.8s ease-in-out " + 0.06 * (ulL - i - 1) + "s",
					"-webkit-transition": "all 0.8s ease-in-out " + 0.06 * (ulL - i - 1) + "s",
					"-o-transition": "all 0.8s ease-in-out " + 0.06 * (ulL - i - 1) + "s",
				})
			}
			$(this).parent('ul').css({
				"transition": "all 0.8s ease-in-out 0.5s",
				"-moz-transition": "all 0.8s ease-in-out 0.5s",
				"-webkit-transition": "all 0.8s ease-in-out 0.5s",
				"-o-transition": "all 0.8s ease-in-out 0.5s",
			})

			$(this).siblings().removeClass("a");
			$(this).parent("ul").css({
				"maxHeight": "1rem"
			});
			$(this).children("img").eq(0).css({
				"transform": "rotate(0deg)",
				"transition": "all linear 0.1s"
			});
			$(this).attr("flag", 1);
		}
	})
	
	//点击foot跳转
	$("body").css("display","block");
	$(".foot a").attr("href","javascript: ;");
	$(".ourservice .li").click(function(){
		var index=$(this).index();
		if(index==1){
			window.location.href="/apidoc/service.html?var="+index;
		}
		if(index==2){
			window.location.href="/apidoc/service.html?var="+index;
		}
		if(index==3){
			window.location.href="/apidoc/service.html?var="+index;
		}
		if(index==4){
			window.location.href="/apidoc/service.html?var="+index;
		}
		
	})
	
	//滚动head消失。
	$(".con_parent").scroll(function() {
		var before = $(".con_parent").scrollTop();
		$(".con_parent").scroll(function() {
			var after = $(".con_parent").scrollTop();
			if(before < after) {//向上滑动
				before = after;
				$(".head").removeClass("head_dong3 head_dong4 head_dong5 head_dong6");
				$(".head").addClass("head_dong5");
			};
			if(before > after) {//向下滑动
				before = after;
				$(".head").removeClass("head_dong3 head_dong4 head_dong5 head_dong6");
				$(".head").addClass("head_dong6");
			};
		});
	});


})
