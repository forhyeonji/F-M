/**
 * 
 */ 


/*
$('.slides').click(function(){
	
	var $first = $(".slides").children("#first").click(function(){});
	var $second = $(".slides").children("#second").click(function(){});
	var $third = $(".slides").children("#third").click(function(){});
	
	if($first){
		
		alert("aaa");

	}else if($second){
	
		alert("bbb");
	
	}else if($third){

		alert("ccc");
	
	}
})
*/



/*
//페이지번호와 슬라이드페이지 index연결
$('.slider > .main_slidepages > div').click(function() {
    var $this = $(this);
    var $slider = $this.closest('.slider');
    
    $this.addClass('active');
    $this.siblings('.active').removeClass('active');
    
    var index = $this.index();
    
    $slider.find(' > .slides > .active').removeClass('active');
    $slider.find(' > .slides > div').eq(index).addClass('active');
});

//버튼 클릭시 페이지번호 이동
$('.slider > .side-btns > div').click(function() {
    var $this = $(this);
    var index = $this.index();
    var $slider = $this.closest('.slider');
    
    var $current = $slider.find('.main_slidepages > div.active');
    var $post;
    
    if ( index == 0 ) {
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    }
    
    if ( $post.length == 0 ) {
        if ( index == 0 ) {
            $post = $slider.find('.main_slidepages > div:last-child');
        }
        else {
            $post = $slider.find('.main_slidepages > div:first-child');
        }
    }
    
    $post.click();
});

function Slider1__moveNext() {
    var $slider = $('.slider-1');
    var $nextBtn = $slider.find('.side-btns > div:last-child');
    $nextBtn.click();
}

setInterval(Slider1__moveNext, 3000);
*/






/* 이미지 삽입 */
$(".main_div_img").each(function(i, obj){
	
	const bobj = $(obj)
	
	if(bobj.data("name")){

		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(fileName);
		
		$(this).find("img").attr('src', '/Shopdisplay?fileName=' + fileCallPath);
	} 
	
});





//메인화면 이미지 슬라이드
$(".main_slide_div").slick({
	slidesToShow: 4,
	slidesToScroll: 4,
	
	prevArrow : "<button type='button' class='ls_div_content_prev'>이전</button>",		// 이전 화살표 모양 설정
	nextArrow : "<button type='button' class='ls_div_content_next'>다음</button>",		// 다음 화살표 모양 설정
});





/*광고 슬라이드*/
$(".slideadver").slick(	
	{
	dots: true,
	autoplay: true,
	autoplaySpeed: 2000
	}
);



