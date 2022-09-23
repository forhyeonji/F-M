/**
 * 상품목록 JS
 */


// 상품등록 버튼 클릭이벤트가 발생하면 상품등록 페이지로 이동
$(document).ready(function() {
	$("#register_Btn").click(function() {
		location.href = "${path}/shopRegistration";
	});

	// 검색버튼 동작
	var sh_serchform = $('#sh_serchform');
 	var sh_moveForm = $('#sh_moveForm');
	$("#sh_searchFormbtn").on("click", function(e) {
		$("input[name='pageNum']").val("1");
		$("#sh_serchForm").submit();
	/*	e.preventDefault();

		 검색키워드 유효성검사 
		if (!sh_serchform.find("input[name='keyword']").val()) {
			alert("키워드를 입력하십시오")
			return false;
		}
		sh_searchform.find("input[name='prodnum']").val();

		sh_searchform.submit();*/
	});
	
	//페이지 이동 버튼
	$(".sh_pageBtn").on("click",function(e){
			e.preventDefault();
			
			sh_moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			sh_moveForm.submit();
	})
})