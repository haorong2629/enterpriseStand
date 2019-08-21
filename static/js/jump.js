$(document).ready(function(){
	//点击foot跳转
	$(".foot a").attr("href","javascript: ;");
	$(".ourservice .li").click(function(){
		console.log("跳转");
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
