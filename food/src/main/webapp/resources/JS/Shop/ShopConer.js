/**
 * 
 */
$(document).ready(function(){
	/* 이미지 삽입 */
	$(".shopcorner_div_img").each(function(i, obj){
		
		const bobj = $(obj)
		
		if(bobj.data("name")){

			const fileName = bobj.data("filename");
			
			const fileCallPath = encodeURIComponent(fileName);
			
			$(this).find("img").attr('src', '/Shopdisplay?fileName=' + fileCallPath);
	
		}
	}) 
})