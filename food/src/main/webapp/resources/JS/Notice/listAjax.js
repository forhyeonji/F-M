/**
 * 
 */

$(document).ready(function(){
	
	ajaxlist();

	
})

	// list 함수 선언
	function ajaxlist(){
		$.getJSON("/listAjax.json",function(data){
			
			var str="";
			
			str+="<tr class='NOTI_bar'>"
			str+="<td class='NOTI_QnA_no' class='NOTI_title_effect'>No</td>"
			str+="<td class='NOTI_QnA_title' class='NOTI_title_effect'>제목</td>"
			str+="<td class='NOTI_QnA_writer' class='NOTI_title_effect'>작성자</td>"
			str+="<td class='NOTI_QnA_regdate' class='NOTI_title_effect'>작성일</td>"
			str+="</tr>"
				
			for(var i=0; i<data.length; i++){
				str+="<tr>"
				str+="<td>"+data[i].bno+"</td>"
				str+="<td>"+data[i].title+"</td>"
				str+="<td>"+data[i].user_id+"</td>"
				str+="<td>"+data[i].reg_dt+"</td>"
				str+="</tr>"
			}
			
			
			
			
			
			
			$("#qnaTd").html(str);
			
		});
		
	}// list 함수 끝

