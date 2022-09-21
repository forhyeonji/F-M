/**
 * 
 */


$(document).ready(function(){
	
	// 검색버튼을 클릭하면
	$("#searchBtn").on("click",function(){
		// pageNum에 1을 초기화
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchForm").submit();		
	})
	
	

})