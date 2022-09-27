/**
 * 
 */
$(document).ready(function(){
	
	/*광고 슬라이드*/
	$(".slideadver").slick(	
		{
		dots: true,
		autoplay: true,
		autoplaySpeed: 5000
		}
	);
	
	//메인화면 이미지 슬라이드
	$(".sh_slide_div").slick({
		slidesToShow: 4,
		slidesToScroll: 4,
		
		prevArrow : "<button type='button' class='ls_div_content_prev'>이전</button>",		// 이전 화살표 모양 설정
		nextArrow : "<button type='button' class='ls_div_content_next'>다음</button>",		// 다음 화살표 모양 설정
	});
	
	/* 이미지 삽입 */
	$(".shop_div_img").each(function(i, obj){
		
		const bobj = $(obj)
		
		if(bobj.data("name")){

			const fileName = bobj.data("filename");
			
			const fileCallPath = encodeURIComponent(fileName);
			
			$(this).find("img").attr('src', '/Shopdisplay?fileName=' + fileCallPath);
		} 
		
	});
});

