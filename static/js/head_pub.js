$(document).ready(function(){
	$(".con_parent").scroll(function() {
		var before = $(".con_parent").scrollTop();
		$(".con_parent").scroll(function() {
			var after = $(".con_parent").scrollTop();
			if(before < after) {//向下滚动
				before = after;
				$(".head").css({
					"opacity":0,
					"transition": "all 0.8s ease-in-out",
					"-moz-transition": "all 0.8s ease-in-out",
					"-webkit-transition": "all 0.8s ease-in-out",
					"-o-transition": "all 0.8s ease-in-out",
				});
			};
			if(before > after) {//向上滚动
				before = after;
				$(".head").css({
					"opacity":1,
					"transition": "all 0.8s ease-in-out",
					"-moz-transition": "all 0.8s ease-in-out",
					"-webkit-transition": "all 0.8s ease-in-out",
					"-o-transition": "all 0.8s ease-in-out",
				});
			};
		});
	});
	
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
})
