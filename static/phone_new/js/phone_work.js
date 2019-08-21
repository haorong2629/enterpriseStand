window.onload=function(){
	var p=$(".head").height();
	var navH=$(".work_nav").height();
	var x=$(window).width();
	var y=$(window).height();
	var topH=316*$(window).width()/1080;
	var imgH=9*$(window).width()/16;
	var m;//后台图片数量。
	var n;//首次点击图片节点下标。
	var src="";
	var img_index=0;
	//imgTab切换
	
	
$(".work_video video").css({"height":10.8*9/16+"rem","width":x+"px"});
$(".work_video li").css({"height":10.8*9/16+"rem","width":x+"px"});
$(".work_video li").attr("flag",0);
$("video").bind("pause",function(){
	$(this).load();
})

	$(".work_img").css("width",x+"px");	
	$(".work_video").css("width",x+"px");
	$(".work_video video").attr("height",imgH+"px");
	$(".work_nav i").click(function(){
		img_index=$(this).index();
		$(".imgTab ul").eq(img_index).find(".img").attr("flag",1);
		$(".imgTab ul").eq(img_index).find(".img").css("marginTop","50px");
		$(".imgTab ul").css("display","none");
		$(".imgTab ul").eq(img_index).css("display","block");
		img_tabF(img_index);
	})
	
	
	
	
	
	//动态创建蒙版下边的图标。
//	m=$(".work_img li").length;//m实际要后台给
//	for(i=0;i<m;i++){//创建蒙版下方小图标节点，创建work_img下边图片节点。
//		src=$(".work_img li").eq(i).find("img")[0].src;//变量src应该为后台获取的对应src
//		$(".smallimg").append("<img src='"+src+"' />");
//		//创建work_img下边图片节点
////		$(".work_img").apennd("<li class='work_liL'><img src='"+src+"' alt=''></li>")
//	
//		
//	}
	imgdisplay();
	
	//详情页面点击图片事件
	$(".work_img li").click(function(){
		$(".meng").css("display","block");
		n=$(this).index();
		var imgstring=$(this).find('.img')[0].src;
		$(".img_div img").attr('src',imgstring);//获取点击src
		$(".smallimg img").css("opacity",0.3);
		$(".smallimg img").eq(n).css("opacity",1);
		imgmargintop();
	})
	//监听滚动条位置
	$(".work_con").scroll(function(){
		var container =$(".work_con").scrollTop();
		if(container>0){
			$('.work_nav').addClass("work_nav_scroll");
		}else{
			$('.work_nav').removeClass("work_nav_scroll");
		}
	})
	var work_conH=$(window).height()-$(".head").height()-$(".work_nav").height();
$(".work_con").css("height",+work_conH+"px")
	function imgdisplay(){//并调整显示位置。
		var x,y;
		m=$(".imgTab .work_img").length;
		for(n=0;n<m;n++){
			for(i=0;i<m;i++){
				x=$(".imgTab .work_img").eq(n).find(".img").eq(i).width();
				y=$(".imgTab .work_img").eq(n).find(".img").eq(i).height();
				if(x/y<=959/380){//width100%
					$(".imgTab .work_img").eq(n).find(".img").eq(i).css("width","100%");
				}else{//height100%
					$(".imgTab .work_img").eq(n).find(".img").eq(i).css("height","100%")
				}
			}
		}
	}
	function imgmargintop(){//作用：调整蒙版上的大图显示比例和位置（上下左右居中）。
		//huoqugaodu
		$(".img_div img").width('');
		$(".img_div img").height('');
		var x=$(".img_div img").width();
		var y=$(".img_div img").height();
		var z=$(".img_div").width();
		var xx,yy,xm,ym;
		if(x>z||y>z){
			if(x>z&&y<z){
				xx=z;
				yy=y*z/x;
				xm=0;
				ym=(z-yy)/2;
			}else if(x<z&&y>z){
				yy=z;
				xx=x*z/y;
				xm=(z-xx)/2;
				ym=0;
			}else{
				
				if(x>y){
					xx=z;
					yy=y*z/x;
					xm=0;
					ym=(z-yy)/2;
				}else{
					yy=z;
					xx=x*z/y;
					xm=(z-xx)/2;
					ym=0;
				}
			}
		}else{
			xx=x;
			yy=y;
			xm=(z-x)/2;
			ym=(z-y)/2;
		}
		//赋值
		$(".img_div img").css({
			"width":xx+"px",
			"height":yy+"px",
			"marginLeft":xm+"px",
			"marginTop":ym+"px",
		})
	}
	//mengbang yangshidingyi
//	$(".meng").css("height",y+'px');
	//蒙版,最外层是work页面click事件
	$('.meng').css({"width":x});
	var m=$(".smallimg img").length;//m为获取蒙版下面小图标个数，是否与主页大图数量相同？ 如果相同，.small 下的img可以自动创建，m从后台获取。
	var src="";
	$(".meng_left").click(function(){
		if(n==0){
			n=m-1;
			src=$(".smallimg img").last().attr('src');
			
			$(".smallimg img").each(function(){
				$(".smallimg img").css("opacity",0.3);
			})
			$(".smallimg img").last().css("opacity",1);
			$(".img_div img").attr("src",src);
		}else{
			n=n-1;
			src=$(".smallimg img").eq(n).attr('src');
			
			$(".smallimg img").each(function(){
				$(this).css("opacity",0.3);
			})
			$(".smallimg img").eq(n).css("opacity",1);
			$(".img_div img").attr("src",src);
		}
		imgmargintop();
	})
	$(".meng_right").click(function(){
		if(n==m-1){
			n=0;
			src=$(".smallimg img").eq(0).attr('src');
			
			$(".smallimg img").each(function(){
				$(this).css("opacity",0.3);
			})
			$(".smallimg img").eq(0).css("opacity",1);
			$(".img_div img").attr("src",src);
		}else{
			n=n+1;
			src=$(".smallimg img").eq(n).attr('src');
			
			$(".smallimg img").each(function(){
				$(this).css("opacity",0.3);
			})
			$(".smallimg img").eq(n).css("opacity",1);
			$(".img_div img").attr("src",src);
		}
		imgmargintop();
	})
	$(".smallimg img").click(function(){
		$(".smallimg img").css("opacity",0.3);
		$(this).css("opacity",1);
		n=$(this).index();
		var srcstr=$(".imgTab .work_img").eq(img_index).find('.img')[0].src;
		$(".img_div img").attr("src",srcstr);
		imgmargintop();
	})
	
	$(".shutdown").click(function(){
		$(".meng").css("display",'none');
	})
	

	
	function imgdonghua(n){
		var scroll=$(".work_con").scrollTop();
		if(n==4){
			m=$(".imgTab ul").eq(n).find("video").length;
		}else{
			m=$(".imgTab ul").eq(n).find("img").length;
		}
//		alert(m);
		for(i=0;i<m;i++){
			if(scroll+y>topH+imgH*i&&$(".imgTab ul").eq(n).find(".img").eq(i).attr("flag")){
				//img效果
//				alert(1);
				$(".imgTab ul").eq(n).find(".img").eq(i).css({"display":"block","opacity":0});
				$(".imgTab ul").eq(n).find(".img").eq(i).animate({"marginTop":0,"opacity":1},1000);
				$(".imgTab ul").eq(n).find(".img").eq(i).attr("flag","")
			}
		}
	}
	//"all 0.8s ease-in-out "+i*0.3+"s"
	//瀑布展示
	$(".work_img li img").attr("flag","1");
//	首次加载
function img_tabF(n){
	var s=Math.ceil((y-topH+$(".work_con").scrollTop())/imgH)///需要运动的个数
//	alert(s);
	if(n==4){
		for(i=0;i<s;i++){
			var ss=i*400;
			$(".work_video").find(".img").eq(i).css({"display":"block","opacity":0,"marginTop":"50px"});
			$(".work_video").find(".img").eq(i).delay(ss).animate({"marginTop":0,"opacity":1},1000);
			$(".work_video").find(".img").eq(i).attr("flag","")
		}
	}else{
		for(i=0;i<s;i++){
			var ss=i*400;
			$(".imgTab ul").eq(n).find(".img").eq(i).css({"display":"block","opacity":0,"marginTop":"50px"});
			$(".imgTab ul").eq(n).find(".img").eq(i).delay(ss).animate({"marginTop":0,"opacity":1},1000);
			$(".imgTab ul").eq(n).find(".img").eq(i).attr("flag","")
		}
	}
	
}
img_tabF(0);
	$(".work_con").scroll(function(){
		imgdonghua(img_index);
	})

}


