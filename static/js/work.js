(function($, h, c) {
	var a = $([]),
	e = $.resize = $.extend($.resize, {}),
	i,
	k = "setTimeout",
	j = "resize",
	d = j + "-special-event",
	b = "delay",
	f = "throttleWindow";
	e[b] = 250;
	e[f] = true;
	$.event.special[j] = {
		setup: function() {
			if (!e[f] && this[k]) {
				return false;
			}
			var l = $(this);
			a = a.add(l);
			$.data(this, d, {
				w: l.width(),
				h: l.height()
			});
			if (a.length === 1) {
				g();
			}
		},
		teardown: function() {
			if (!e[f] && this[k]) {
				return false;
			}
			var l = $(this);
			a = a.not(l);
			l.removeData(d);
			if (!a.length) {
				clearTimeout(i);
			}
		},
		add: function(l) {
			if (!e[f] && this[k]) {
				return false;
			}
			var n;
			function m(s, o, p) {
				var q = $(this),
				r = $.data(this, d);
				r.w = o !== c ? o: q.width();
				r.h = p !== c ? p: q.height();
				n.apply(this, arguments);
			}
			if ($.isFunction(l)) {
				n = l;
				return m;
			} else {
				n = l.handler;
				l.handler = m;
			}
		}
	};
	function g() {
		i = h[k](function() {
			a.each(function() {
				var n = $(this),
				m = n.width(),
				l = n.height(),
				o = $.data(this, d);
				if (m !== o.w || l !== o.h) {
					n.trigger(j, [o.w = m, o.h = l]);
				}
			});
			g();
		},
		e[b]);
	}
})(jQuery, this);



window.onload = function() {
	var p;
	var x = $(window).width();
	var y = $(window).height();
	var m; //后台图片数量。
	var n; //首次点击图片节点下标。
	var src = "";
	var img_index = 0;
	var arry = new Array;
	var img_l = $(".imgTab ul:last-child").find("img").length;
	
	//获取json	
	//li宽高定义
	$.ajax({
		// //apidoc/ajaxworks?limit=100
		url: "/apidoc/ajaxworks?limit=100",
		type: "GET", //静态页用get方法，否则服务器会抛出405错误
		success: function(data) {
//			var indexF=data.indexOf("{");
//			var indexE=data.lastIndexOf("}");
//			var str=data.substring(indexF,indexE+1);
//			var data = JSON.parse(str);
			var allArrayc=new Array();
			var allArrayt=new Array();
			var topH = 230;
			var imgH;
			var tabN=data.data.ppcy.length;
			var nowN=0;
			var y=$(window).height();
			var firstShow;
			var allNum;
			for(i=0;i<data.data.ppcy.length;i++){
				allArrayc.push(data.data.ppcy[i].content);
				allArrayt.push(data.data.ppcy[i].thumbnails);
			}
			bodyW();
			for(i = 0; i < data.data.ppcy.length; i++) {
				if(i<Math.ceil((y-topH)/imgH)*2){
					$(".imgTab ul").eq(0).append("<li class='work_liL'><div class='li_div'><img src='" + data.data.ppcy[i].thumbnails + "' alt=''/></div></li>");
					nowN++;
				}
			}
			$(".work_nav i").eq(0).css("color","#9d723d");
			bodywidth(0);
			img_tabF(0);
			$(".imgTab ul").eq(0).find("li").click(function(){liClick(this)});
			$(".meng_left").click(function(){leftClick(this)});
			$(".meng_right").click(function(){rightClick(this)});
			$(".shutdown").click(function() {
					$(".meng").css("display", 'none');
				})
			$(".work_nav i").click(function() {
				$(this).css("color","#9d723d");
				$(this).siblings().css("color","#010101");
				var img_indexClick = $(this).index();
				if(img_index!=img_indexClick){
					allArrayc=[];
					allArrayt=[];
					nowN=0;
					$(".imgTab ul").empty();
					//json添加数据
					if(img_indexClick == 0) {
						for(i=0;i<data.data.ppcy.length;i++){
							allArrayc.push(data.data.ppcy[i].content);
							allArrayt.push(data.data.ppcy[i].thumbnails);
						}
						for(i = 0; i < allArrayc.length; i++) {
							if(i<Math.ceil((y-topH)/imgH)*2){
								$(".imgTab ul").eq(img_indexClick).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i] + "' alt=''/></div></li>");
								nowN++;
							}
						}
					}
					if(img_indexClick == 1) {
						for(i=0;i<data.data.szyx.length;i++){
							allArrayc.push(data.data.szyx[i].content);
							allArrayt.push(data.data.szyx[i].thumbnails);
						}
						for(i = 0; i < allArrayc.length; i++) {
							if(i<Math.ceil((y-topH)/imgH)*2){
								$(".imgTab ul").eq(img_indexClick).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i] + "' alt=''/></div></li>");
								nowN++;
							}
						}
					}
					if(img_indexClick == 2) {
						for(i=0;i<data.data.hdgg.length;i++){
							allArrayc.push(data.data.hdgg[i].content);
							allArrayt.push(data.data.hdgg[i].thumbnails);
						}
						for(i = 0; i < allArrayc.length; i++) {
							if(i<Math.ceil((y-topH)/imgH)*2){
								$(".imgTab ul").eq(img_indexClick).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i] + "' alt=''/></div></li>");
								nowN++;
							}
						}
					}
					if(img_indexClick == 3) {
						for(i=0;i<data.data.cxwc.length;i++){
							allArrayc.push(data.data.cxwc[i].content);
							allArrayt.push(data.data.cxwc[i].thumbnails);
						}
						for(i = 0; i < allArrayc.length; i++) {
							if(i<Math.ceil((y-topH)/imgH)*2){
								$(".imgTab ul").eq(img_indexClick).append("<li class='work_liL'><div class='li_div'><img src='" +allArrayt[i] + "' alt=''/></div></li>");
								nowN++;
							}
						}
					}
					if(img_indexClick == 4) {
						tabN=data.data.ppsp.length;
						for(i = 0; i < data.data.ppsp.length; i++) {
							$(".imgTab ul").eq(img_indexClick).append("<li class='video'><div class='li_div'><video class='img' preload='auto' poster='" + data.data.ppsp[i].content + "' x-webkit-airplay='false' webkit-playsinline='false' playsinline='false' x5-video-player-type='h5' controls='controls'><source src='"+data.data.ppsp[i].videopath+"' type='video/mp4'></source></video></div></li>");
							//加监听事件
							$(".work_video video").eq(i).bind("play",function(){
								var v_index=$(".work_video video").index($(this));
								for(q=0;q<data.data.ppsp.length;q++){
									if(q!=v_index){
										$(".work_video video").eq(q).trigger('pause');
									}
								}
							})
						}
					}
					if(img_indexClick == 5) {
						for(i=0;i<data.data.ppcy.length;i++){
							allArrayc.push(data.data.ppcy[i].content);
							allArrayt.push(data.data.ppcy[i].thumbnails);
						}
						for(i=0;i<data.data.szyx.length;i++){
							allArrayc.push(data.data.szyx[i].content);
							allArrayt.push(data.data.szyx[i].thumbnails);
						}
						for(i=0;i<data.data.hdgg.length;i++){
							allArrayc.push(data.data.hdgg[i].content);
							allArrayt.push(data.data.hdgg[i].thumbnails);
						}
						for(i=0;i<data.data.cxwc.length;i++){
							allArrayc.push(data.data.cxwc[i].content);
							allArrayt.push(data.data.cxwc[i].thumbnails);
						}
						for(i = 0; i < allArrayc.length; i++) {
							if(i<Math.ceil((y-topH)/imgH)*2){
								$(".imgTab ul").eq(img_indexClick).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i] + "' alt=''/></div></li>");
								nowN++;
							}
						}
					}
					
					
					
					
						//yundong
						img_index=img_indexClick;
						$(".imgTab ul").css("display", "none");
						$(".imgTab ul").eq(img_index).css("display", "block");	
						$(".imgTab .li_div").removeAttr("transition");
						$(".imgTab .li_div").css({"top":"100px","opacity":0});
						bodywidth();
						img_tabF();
				}
				
				//详情页面点击图片事件
				$(".work_img li").click(function(){liClick(this)});
//				$(".meng_left").click(function(){leftClick(this)})
//				$(".meng_right").click(function(){rightClick(this)})
				$(".shutdown").click(function() {
					$(".meng").css("display", 'none');
				})
			})
//
			function bodywidth() {
				var a = 52 * p / 1920;
				var b = p - 52 * p / 1920;
				var img_tabW = $(".imgTab").width();
				$('.imgTab ul').eq(img_index).find("li").css({
					"width": (img_tabW / 2 - 1)+ "px",
					"height": 380 * p / 1920 + "px"
				});
				
					var li_L = $(".imgTab ul").eq(img_index).find("li").length;
					for(t = 0; t < li_L; t++) {
						if(t % 2 == 1) {
							$(".imgTab ul").eq(img_index).find("li").eq(t).css({
								"border": "1px solid black",
								"border-right": ""
							});
						} else {
							$(".imgTab ul").eq(img_index).find("li").eq(t).css({
								"border": "1px solid black",
								"border-left": ""
							});
						}
					}
					if(li_L % 2 == 0) {
						$(".imgTab ul").eq(img_index).find("li").eq(li_L - 1).css("border-bottom", "");
						$(".imgTab ul").eq(img_index).find("li").eq(li_L - 2).css("border-bottom", "");
						$(".imgTab ul").eq(img_index).find("li").eq(0).css("border-top", "");
						$(".imgTab ul").eq(img_index).find("li").eq(1).css("border-top", "");
					}
					if(li_L % 2 == 1 && li_L < 2) {
						$(".imgTab ul").eq(img_index).find("li").eq(0).css("border-top", "");
						$(".imgTab ul").eq(img_index).find("li").eq(0).css("border-bottom", "");
					}
					if(li_L % 2 == 1 && li_L > 2) {
						$(".imgTab ul").eq(img_index).find("li").eq(0).css("border-top", "");
						$(".imgTab ul").eq(img_index).find("li").eq(1).css("border-top", "");
						$(".imgTab ul").eq(img_index).find("li").eq(li_L - 1).css("border-bottom", "");
					}
				
				$('.work_video li').css({
					"width": img_tabW / 2 - 1,
					"height": 9 * img_tabW / 2 / 16
				});
				$(".work_video video").attr({
					"width": img_tabW / 2 - 1,
					"height": 9 * img_tabW / 2 / 16
				});
			}
			function liClick(aa) {
					$(".meng").css("display", "block");
					$(".smallimg div").remove();
					m = $(aa).parent(".work_img").find("img").length; 
					n = $(aa).index();
					var img_length = $(aa).parent(".work_img").find("img").length;
					for(i = 0; i < img_length; i++) {
						src = allArrayt[i]; //变量src应该为后台获取的对应src
						$(".smallimg").append("<div class='smallimgdiv'><img src='" + src + "' /></div>");
					}
					$(".smallimg div").click(function() {
						$(".smallimg div").css("opacity", 0.3);
						$(this).css("opacity", 1);
						n = $(this).index();
						var srcstr =allArrayc[n];
						$(".img_div img").attr("src", srcstr);
						$(".img_div img").load(function(){
							imgmargintop();
						})
					})
					
					var imgstring = allArrayc[n];
					$(".img_div img").attr('src', imgstring); //获取点击src
					$(".smallimg div").css("opacity", 0.3);
					$(".smallimg div").eq(n).css("opacity", 1);
					$(".img_div img").load(function(){
						imgmargintop();
					})
				}
			function rightClick() {
					if(n == m - 1) {
						n = 0;
						src = allArrayc[n];
	
						$(".smallimg div").each(function() {
							$(this).css("opacity", 0.3);
						})
						$(".smallimg div").eq(0).css("opacity", 1);
						$(".img_div img").attr("src", src);
					} else {
						n = n + 1;
						src = allArrayc[n];
	
						$(".smallimg div").each(function() {
							$(this).css("opacity", 0.3);
						})
						$(".smallimg div").eq(n).css("opacity", 1);
						$(".img_div img").attr("src", src);
					}
					$(".img_div img").load(function(){
						imgmargintop();
					})
				}
			function leftClick() {
				
					if(n == 0) {
						n = m - 1;
						src = allArrayc[n];
						$(".smallimg div").each(function() {
							$(".smallimg div").css("opacity", 0.3);
						})
						$(".smallimg div").eq(n).css("opacity", 1);
						$(".img_div img").attr("src", src);
					} else {
						n = n - 1;
						src = allArrayc[n];
						$(".smallimg div").each(function() {
							$(this).css("opacity", 0.3);
						})
						$(".smallimg div").eq(n).css("opacity", 1);
						$(".img_div img").attr("src", src);
					}
					$(".img_div img").load(function(){
						imgmargintop();
					})
					
				}

			function imgmargintop() { //作用：调整蒙版上的大图显示比例和位置（上下左右居中）。
				//huoqugaodu
				
				var x = $(".img_div img").width();
				var y = $(".img_div img").height();
				var z = $(".img_div").width();
				var xx, yy, xm, ym;
				if(x > z || y > z) {
					if(x > z && y < z) {
						xx = z;
						yy = y * z / x;
						xm = 0;
						ym = (z - yy) / 2;
					} else if(x < z && y > z) {
						yy = z;
						xx = x * z / y;
						xm = (z - xx) / 2;
						ym = 0;
					} else {

						if(x > y) {
							xx = z;
							yy = y * z / x;
							xm = 0;
							ym = (z - yy) / 2;
						} else {
							yy = z;
							xx = x * z / y;
							xm = (z - xx) / 2;
							ym = 0;
						}
					}
				} else {
					xx = x;
					yy = y;
					xm = (z - x) / 2;
					ym = (z - y) / 2;
				}
//				//赋值
				$(".img_div img").css({
					"width": xx + "px",
					"height": yy + "px",
					"marginLeft": xm + "px",
					"marginTop": ym + "px",
				})
				
			}

//			//ul加载动画
			function imgdonghua() {
				var scroll = $(".ol").scrollTop();
				for(i = 0; i < allArrayc.length; i++) {
					if(scroll + y > topH + imgH * Math.ceil(nowN / 2)&&i>=nowN&&i%2==0) {
						//img效果
						$(".imgTab ul").eq(img_index).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i] + "' alt='' /></div></li>");
						$(".work_img li:last-child").click(function(){liClick(this)});
						bodywidth();
						$(".imgTab ul").eq(img_index).find(".li_div").eq(i).css({
							"transition": "all 1s ease-in-out ",
							"-moz-transition": "all 1s ease-in-out ",
							"-webkit-transition": "all 1s ease-in-out ",
							"-o-transition": "all 1s ease-in-out ",
							"top": "0",
							"opacity": 1,
						});
						nowN++;
						if(i+1<allArrayc.length){
							$(".imgTab ul").eq(img_index).append("<li class='work_liL'><div class='li_div'><img src='" + allArrayt[i+1] + "' alt='' /></div></li>");
							$(".work_img li:last-child").click(function(){liClick(this)});
							bodywidth();
							$(".imgTab ul").eq(img_index).find(".li_div").eq(i+1).css({
								"transition": "all 1s ease-in-out 0.3s",
								"-moz-transition": "all 1s ease-in-out  0.3s",
								"-webkit-transition": "all 1s ease-in-out  0.3s",
								"-o-transition": "all 1s ease-in-out  0.3s",
								"top": "0",
								"opacity": 1,
							});	
							nowN++;
						}
					}
				}
			}
//			//瀑布展示
//			//	首次加载

			function img_tabF() {
				var s = Math.ceil((y - topH + $(".ol").scrollTop()) / imgH) ///需要运动的个数
				m = $(".imgTab ul").eq(img_index).find("li").length;
				if(img_index == 4) {
					var videoW=$(".work_video li").width();
					for(i = 0; i < m; i++) {
						if(y > topH + videoW*9 * Math.floor(i / 2)/16) {
							var ss = 0.3 * i;
							$(".work_video .li_div").eq(i).css({
								"transition": "all 1s ease-in-out " + ss + "s",
								"-moz-transition": "all 1s ease-in-out " + ss + "s",
								"-webkit-transition": "all 1s ease-in-out " + ss + "s",
								"-o-transition": "all 1s ease-in-out " + ss + "s",
								"top": "0",
								"opacity": 1,
							});
						}
					}
				} else {
					if(img_index == 5) {
						for(i = 0; i < m; i++) {
							if(y > topH + imgH * Math.floor(i / 2)) {
								var ss = 0.3 * i;
//								$(".imgTab ul:last-child").find(".li_div").eq(i).attr("src", arry[i]);
								$(".imgTab ul").eq(img_index).find(".li_div").eq(i).css({
									"transition": "all 1s ease-in-out " + ss + "s",
									"-moz-transition": "all 1s ease-in-out " + ss + "s",
									"-webkit-transition": "all 1s ease-in-out " + ss + "s",
									"-o-transition": "all 1s ease-in-out " + ss + "s",
									"top": "0",
									"opacity": 1,
								});
							}
							
						}
					}else{
						for(i = 0; i < m; i++) {
							if(y > topH + imgH * Math.floor(i / 2) ) {
								var ss = 0.3 * i;
								$(".imgTab ul").eq(img_index).find(".li_div").eq(i).css({
									"transition": "all 1s ease-in-out " + ss + "s",
									"-moz-transition": "all 1s ease-in-out " + ss + "s",
									"-webkit-transition": "all 1s ease-in-out " + ss + "s",
									"-o-transition": "all 1s ease-in-out " + ss + "s",
									"top": "0",
									"opacity": 1,
								});
							}
							
						}
					}
				}
				$(".imgTab ul").eq(img_index).siblings().find("li").removeAttr("transition");
			}
			function bodyW(){
				p = $(window).width();
							if($(window).width() < 1080) {
								p = 1080;
							}
				$("body").width(p);
				imgH=380*p/1920;
			}
			$(".ol").scroll(function() {
				if(img_index != 4) {
					imgdonghua();
				}
				if(img_index == 4){
					var scroll = $(".ol").scrollTop();
					var videoW=$(".work_video li").width();
					for(i = 0; i < m; i++) {
						if(scroll + y > topH + videoW*9 * Math.floor(i / 2)/16) {
							//img效果
							var ss = 0.4 * Math.floor(i / 2);
//							$(".imgTab ul").eq(img_index).find("img").eq(i).attr("src", arry[i]);
							$(".imgTab ul").eq(img_index).find(".li_div").css({
								"transition": "all 1s ease-in-out ",
								"-moz-transition": "all 1s ease-in-out ",
								"-webkit-transition": "all 1s ease-in-out ",
								"-o-transition": "all 1s ease-in-out ",
								"top": "0",
								"opacity": 1,
							});
						}
					}
					
				}
				if($(".foot").offset().top+20<y){
		//			动画加载foot
					for(i=0;i<$(".foot ul").length;i++){
						$(".foot ul").eq(i).delay(300*i).animate({"margin-top":0,"opacity":1},1000);
					}
				}
			})
		}
	});

}