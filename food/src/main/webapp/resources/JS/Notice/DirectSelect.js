/**
 * 
 */


$(document).ready(function(){
	
	var sub=$("#subselect option:selected").val()
	
		$("#subselect").on("change", function(){
		
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchForm").submit();
		
			
		})

		
		
		
		
})