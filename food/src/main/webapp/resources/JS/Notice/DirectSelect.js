/**
 * 
 */
/*document.getElementById('subselect').addEventListener('change',changeSelect)


function changeSelect(){
	
	var subsep = document.getElementById("subselect");
	var value = (subselect.options[subselect.selectedIndex].value);
	alert("value="+value);
	
}*/
$(document).ready(function(){

		$("#subselect").on("change", function(){
			
			var sub =$("#subselect option:selected").val();
			
			if(sub=='inquiry_recipe'){
				location.href="/directKing?sep=inquiry&subsep=inquiry_recipe"
			}else if (sub=='inquiry_store'){
				location.href="/directKing?sep=inquiry&subsep=inquiry_store"
			}else if (sub=='inquiry_comm'){
				location.href="/directKing?sep=inquiry&subsep=inquiry_comm"
			}else if (sub=='inquiry_ect'){
				location.href="/directKing?sep=inquiry&subsep=inquiry_ect"
			}
			
			
			
			
		})

		
		
})