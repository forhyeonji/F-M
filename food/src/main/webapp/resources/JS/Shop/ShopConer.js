/**
 * 
 */
$(document).ready(function(){
	/* 이미지 삽입 */
	$(".shopcorner_div_img").each(function(i, obj){
		
		const bobj = $(obj)
		console.log(bobj);
		if(bobj.data("name")){

			const fileName = bobj.data("filename");
			
			const fileCallPath = encodeURIComponent(fileName);
			
			$(this).find("img").attr('src', '/Shopdisplay?fileName=' + fileCallPath);
	
		}
	})
	// 기본 순 클릭
	$("#basic").on("click",function(e){
		e.preventDefault();
		var category=$("#category").val();
		
		// 만약에 category가 meat이면
		if(category=="meat"){
			location.href="/shopconer?class1=meat&type=sh_basic";
		}// 만약에 category가 vagetable이면
		else if(category=="vagetable"){
			location.href="/shopconer?class1=vagetable&type=sh_basic";
		}// 만약에 category가 fruit이면
		else if(category=="fruit"){
			location.href="/shopconer?class1=fruit&type=sh_basic";
		}// 만약에 category가 fish이면
		else if(category=="fish"){
			location.href="/shopconer?class1=fish&type=sh_basic";
		}// 만약에 category가 juice이면
		else if(category=="juice"){
			location.href="/shopconer?class1=juice&type=sh_basic";
		}
	})
	// 낮은 가격 순 클릭
	$("#rowprice").on("click",function(e){
		e.preventDefault();
		var category=$("#category").val();
		
		// 만약에 category가 meat이면
		if(category=="meat"){
			location.href="/shopconer?class1=meat&type=sh_rowprice";
		}// 만약에 category가 vagetable이면
		else if(category=="vagetable"){
			location.href="/shopconer?class1=vagetable&type=sh_rowprice";
		}// 만약에 category가 fruit이면
		else if(category=="fruit"){
			location.href="/shopconer?class1=fruit&type=sh_rowprice";
		}// 만약에 category가 fish이면
		else if(category=="fish"){
			location.href="/shopconer?class1=fish&type=sh_rowprice";
		}// 만약에 category가 juice이면
		else if(category=="juice"){
			location.href="/shopconer?class1=juice&type=sh_rowprice";
		}
	})
	
	// 높은 가격 순 클릭
		$("#highprice").on("click",function(e){
		e.preventDefault();
		var category=$("#category").val();
		
		// 만약에 category가 meat이면
		if(category=="meat"){
			location.href="/shopconer?class1=meat&type=sh_hightprice";
		}// 만약에 category가 vagetable이면
		else if(category=="vagetable"){
			location.href="/shopconer?class1=vagetable&type=sh_hightprice";
		}// 만약에 category가 fruit이면
		else if(category=="fruit"){
			location.href="/shopconer?class1=fruit&type=sh_hightprice";
		}// 만약에 category가 fish이면
		else if(category=="fish"){
			location.href="/shopconer?class1=fish&type=sh_hightprice";
		}// 만약에 category가 juice이면
		else if(category=="juice"){
			location.href="/shopconer?class1=juice&type=sh_hightprice";
		}
	})
	
})









