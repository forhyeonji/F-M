/**
 * 
 */

$(document).ready(function(){
	
	
	var sub =$("#subselect option:selected").val();
	
	
		$("#subselect").on("change", function(){
			
			if(sub=='inquiry_recipe'){
				
				location.href="/directKing?sep=inquiry&subsep=inquiry_recipe";
				$('input[name=subwhat]').attr('value', sub);
				
			}else if (sub=='inquiry_store'){
				
				location.href="/directKing?sep=inquiry&subsep=inquiry_store";
				
				
			}else if (sub=='inquiry_comm'){
				
				location.href="/directKing?sep=inquiry&subsep=inquiry_comm";
				
			
			}else if (sub=='inquiry_ect'){
			
				location.href="/directKing?sep=inquiry&subsep=inquiry_ect";
			
				
			}
			
	
			
		})

		
		$(".nowpage").on("click", function(){
		
			alert("주소좀 보자")
			var url = $(".nowpage").attr('href');
			
			url = url.replace('#','여기되나?')
			alert(url+"주소");
			
		})
		
		
		
		
})