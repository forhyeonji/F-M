/**
 * 
 */

$(document).ready(function(){
	

	ajaxlist();

	
})

	// list 함수 선언
	function ajaxlist(){
		$.getJSON("/listAjax.json",function(data){
			
			console.log(data);
			
			
			var str="";
			
			str+="<tr class='NOTI_bar'>"
			str+="<td class='NOTI_QnA_no' class='NOTI_title_effect'>No</td>"
			str+="<td class='NOTI_QnA_title' class='NOTI_title_effect'>제목</td>"
			str+="<td class='NOTI_QnA_writer' class='NOTI_title_effect'>작성자</td>"
			str+="<td class='NOTI_QnA_regdate' class='NOTI_title_effect'>작성일</td>"
			str+="</tr>"
				
			for(var i=0; i<data.list.length; i++){
				str+="<tr>"
				str+="<td>"+data.list[i].bno+"</td>"
				str+="<td>"+data.list[i].title+"</td>"
				str+="<td>"+data.list[i].user_id+"</td>"
				str+="<td>"+data.list[i].reg_dt+"</td>"
				str+="</tr>"
			}
			
			
			str+="<tr>"
			str+="<td colspan=5>"	
			if(data.paging.prev){
				str+="<a href='/QnA?pageNum=" + (data.paging.startPage-1) + "&amount=" + data.paging.criteriaVO.amount +"'>이전</a>"
				}
			
			for(i=data.paging.startPage;i<=data.paging.endPage;i++){
				str+="<a href='/QnA?pageNum=" + i + "&amount=" + data.paging.criteriaVO.amount +"'>   "+ i +"   </a>"
			}
			
			if(data.paging.next){
				str+="<a href='/QnA?pageNum=" + (data.paging.startPage+1) + "&amount=" + data.paging.criteriaVO.amount +"'>다음</a>"
				}
			
				
			str+="</td>"		
			str+="</tr>"
				
			
			
			
			
			
			$("#qnaTd").html(str);
			
		});
		
	}// list 함수 끝

/*

	// 글번호 함수 선언
	function ajaxpaging(){
		
		
		
	} // ajaxpaging 함수 끝

*/