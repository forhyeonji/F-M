/**
 * 상품목록 JS
 */

/* var sh_serchform = $('sh_serchform'); */

// 상품등록 버튼 클릭이벤트가 발생하면 상품등록 페이지로 이동
$(document).ready(function() {
	$("#register_Btn").click(function() {
		location.href = "${path}/shopRegistration";
	});

	// 검색버튼 동작
	var sh_serchform = $('sh_serchform');

	$("#sh_searchFormbtn").on("click", function(e) {
		e.preventDefault();

		/* 검색키워드 유효성검사 */
		if (!sh_serchform.find("input[name='keyword']").val()) {
			alert("키워드를 입력하십시오")
			return false;
		}
		sh_searchform.find("input[name='prodnum']").val();

		sh_searchform.submit();
	});
})