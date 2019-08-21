$(document).ready(function() {
	$.ajax({
		//json.html  /apidoc/ajaxworks?limit=100
		url: "/apidoc/ajaxworks?limit=100", //这里是静态页的地址
		type: "GET", //静态页用get方法，否则服务器会抛出405错误
		success: function(data) {
//			var indexF = data.indexOf("{");
//			var indexE = data.lastIndexOf("}");
//			var str = data.substring(indexF, indexE + 1);
//			var data = JSON.parse(str);
			console.log(data);

			//蒙版
			var n; //首次点击图片节点下标。
			var m; //获取到蒙版需要展示的图片数量
			var index;
			var conImg;
			//加载
			console.log(data.data.cxwc.length);
			for(i=0;i<data.data.ppcy.length;i++)
			{
				$(".pinpai").append("<img class='service_img3' src='"+data.data.ppcy[i].thumbnails+"' alt='' />")	
			}
			for(i=0;i<data.data.szyx.length;i++)
			{
				$(".shuzi").append("<img class='service_img3' src='"+data.data.szyx[i].thumbnails+"' alt='' />")	
			}
			for(i=0;i<data.data.hdgg.length;i++)
			{
				$(".huodong").append("<img class='service_img3' src='"+data.data.hdgg[i].thumbnails+"' alt='' />")	
			}
			for(i=0;i<data.data.cxwc.length;i++)
			{
				$(".chuangxin").append("<img class='service_img3' src='"+data.data.cxwc[i].thumbnails+"' alt='' />")	
			}
			
			$(".con_top .img_click").eq(0).find("img").click(function() {
				conImg = [];index=0;
				for(y = 0; y < data.data.ppcy.length; y++) {
					conImg.push(data.data.ppcy[y].content);
				}
				n = $(this).index();
				conSrc = conImg[n];
				$(".meng").css("display", "block");
				$(".img_div img").attr('src', conSrc); //获取点击src
				$(".img_div img").css("opacity", 0);
				$(".img_div img").load(function() {
					imgmargintop();
				})
				$(".smallimg").empty();
				for(i = 0; i < data.data.ppcy.length; i++) {
					$(".smallimg").append("<div class='smallimgdiv'><img src='" + data.data.ppcy[i].thumbnails + "' /></div>");
				}
				$(".smallimg div").css("opacity", 0.5);
				$(".smallimg div").click(function() {
					n = $(this).index();
					$(".smallimg div").css("opacity", 0.5);
					$(this).css("opacity", 1);
					conSrc = conImg[n];
					$(".img_div img").attr("src", conSrc);
					$(".img_div img").css("opacity", 0);
					$(".img_div img").load(function() {
						imgmargintop();
					})
				})

				$(".smallimg div").eq(n).css("opacity", 1);

			})

			$(".con_top .img_click").eq(3).find("img").click(function() {
				conImg = [];index=3;
				for(y = 0; y < data.data.cxwc.length; y++) {
					conImg.push(data.data.cxwc[y].content);
				}
				n = $(this).index();
				conSrc = conImg[n];
				console.log(conSrc);
				$(".meng").css("display", "block");
				$(".img_div img").attr('src', conSrc); //获取点击src
				$(".img_div img").css("opacity", 0);
				$(".img_div img").load(function() {
					imgmargintop();
				})
				m = $(this).parent(".img_click").children("img").length;
				$(".smallimg").empty();
				for(i = 0; i < data.data.cxwc.length; i++) {
					$(".smallimg").append("<div class='smallimgdiv'><img src='" + data.data.cxwc[i].thumbnails + "' /></div>");
				}
				$(".smallimg div").css("opacity", 0.5);
				$(".smallimg div").click(function() {
					n = $(this).index();
					$(".smallimg div").css("opacity", 0.5);
					$(this).css("opacity", 1);
					conSrc = conImg[n];
					$(".img_div img").attr("src", conSrc);
					$(".img_div img").css("opacity", 0);
					$(".img_div img").load(function() {
						imgmargintop();
					})
				})

				$(".smallimg div").eq(n).css("opacity", 1);

			})

			$(".con_top .img_click").eq(1).find("img").click(function() {
				conImg = [];index=1;
				for(y = 0; y < data.data.szyx.length; y++) {
					conImg.push(data.data.szyx[y].content);
				}

				n = $(this).index();
				conSrc = conImg[n];
				$(".meng").css("display", "block");
				$(".img_div img").attr('src', conSrc); //获取点击src
				$(".img_div img").css("opacity", 0);
				$(".img_div img").load(function() {
					imgmargintop();
				})
				m = $(this).parent(".img_click").children("img").length;
				$(".smallimg").empty();
				for(i = 0; i <data.data.szyx.length; i++) {
					$(".smallimg").append("<div class='smallimgdiv'><img src='" + data.data.szyx[i].thumbnails + "' /></div>");
				}
				$(".smallimg div").css("opacity", 0.5);
				$(".smallimg div").click(function() {
					n = $(this).index();
					$(".smallimg div").css("opacity", 0.5);
					$(this).css("opacity", 1);
					conSrc = conImg[n];
					$(".img_div img").attr("src", conSrc);
					$(".img_div img").css("opacity", 0);
					$(".img_div img").load(function() {
						imgmargintop();
					})
				})

				$(".smallimg div").eq(n).css("opacity", 1);

			})

			$(".con_top .img_click").eq(2).find("img").click(function() {
				conImg = [];index=2;
				for(y = 0; y < data.data.hdgg.length; y++) {
					conImg.push(data.data.hdgg[y].content);
				}
				n = $(this).index();
				conSrc = conImg[n];
				$(".meng").css("display", "block");
				$(".img_div img").attr('src', conSrc); //获取点击src
				$(".img_div img").css("opacity", 0);
				$(".img_div img").load(function() {
					imgmargintop();
				})
				m = $(this).parent(".img_click").children("img").length;
				$(".smallimg").empty();
				for(i = 0; i < data.data.hdgg.length; i++) {
					$(".smallimg").append("<div class='smallimgdiv'><img src='" + data.data.hdgg[i].thumbnails + "' /></div>");
				}
				$(".smallimg div").css("opacity", 0.5);
				$(".smallimg div").click(function() {
					n = $(this).index();
					$(".smallimg div").css("opacity", 0.5);
					$(this).css("opacity", 1);
					conSrc = conImg[n];
					$(".img_div img").attr("src", conSrc);
					$(".img_div img").css("opacity", 0);
					$(".img_div img").load(function() {
						imgmargintop();
					})
				})

				$(".smallimg div").eq(n).css("opacity", 1);

			})

			function imgmargintop() { //作用：调整蒙版上的大图显示比例和位置（上下左右居中）。
				//huoqugaodu
				$(".img_div img").width('');
				$(".img_div img").height('');
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
				//赋值
				$(".img_div img").css({
					"width": xx + "px",
					"height": yy + "px",
					"marginLeft": xm + "px",
					"marginTop": ym + "px",
					"opacity": 1
				})
			}
			//
			$(".meng_left").click(function() {
				if(n == 0) {
					n = m - 1;
					conSrc = conImg[n];

					$(".smallimg div").each(function() {
						$(".smallimg div").css("opacity", 0.5);
					})
					$(".smallimg div").last().css("opacity", 1);
					$(".img_div img").attr("src", conSrc);
				} else {
					n = n - 1;
					conSrc = conImg[n];

					$(".smallimg div").each(function() {
						$(this).css("opacity", 0.5);
					})
					$(".smallimg div").eq(n).css("opacity", 1);
					$(".img_div img").attr("src", conSrc);
				}
				imgmargintop();
			})
			$(".meng_right").click(function() {
				if(n == m - 1) {
					n = 0;
					conSrc = conImg[n];
					src = $(".smallimg div").eq(0).attr('src');
					$(".smallimg div").each(function() {
						$(this).css("opacity", 0.5);
					})
					$(".smallimg div").eq(0).css("opacity", 1);
					$(".img_div img").attr("src", conSrc);
				} else {
					n = n + 1;
					conSrc = conImg[n];
					$(".smallimg div").each(function() {
						$(this).css("opacity", 0.5);
					})
					$(".smallimg div").eq(n).css("opacity", 1);
					$(".img_div img").attr("src", conSrc);
				}
				imgmargintop();
			})
			$(".shutdown").click(function() {
				$(".meng").css("display", 'none');
			})

		}
	});
	//判断其他页面跳转
	function getUrl() {
		var url = location.search;
		var index;
		//		判定由foot跳转来的位置
		if(this.location.search.indexOf("var") > -1 && this.location.search.indexOf("=") > 1) {
			index = url.indexOf("=");
			var str = Math.round(url.substr(index + 1, index + 1));
			var scroll = $(".con_top .div_title").eq(str - 1).offset().top - (500 * $(window).width() / 1080);
			$(".con_parent").scrollTop(scroll);
		}

	}
	$("body").css("display", "block");
	getUrl();

})