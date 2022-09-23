/**
 * 
 */


$(document).ready(function(){
	
	// var sub=$("#subselect option:selected").val()
	
		$("#subselect").on("change", function(){
		
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchForm").submit();
		
			
		})

		
		$("#NOTI_textarea").on("keyup", function(){
			
			var texts = $(this).val();
			$("#check_context").text("("+ texts.length +" / 최대 2000자)");
			if (texts.length > 2000){
				alert("최대 2000자까지 입력 가능합니다.");
				$(this).val(texts.substring(0,2000));
				$("#check_context").text("(2000 / 최대 2000자)");
			}
			
			
			
		})
		
		
		
		
		
		
		
})