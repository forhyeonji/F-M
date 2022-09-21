/**
 * 
 */

$(document).ready(function() {
		/////////모///달///기///능///////////
		// 1. 모달창 히든 불러오기
		$('#searchBtn').click(function() {
			$('#background_modal').show();
		});
		// 2. 모달창 닫기 버튼
		$('.close').on('click', function() {
			$('#background_modal').hide();
		});
		// 3. 모달창 위도우 클릭 시 닫기
		$(window).on('click', function() {
			if (event.target == $('#background_modal').get(0)) {
	            $('#background_modal').hide();
	         }
		});
	});

//아이디 & 스토어 값 저장하기 위한 변수
var idV = "";
// 아이디 값 받고 출력하는 ajax
var idSearch_click = function(){
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath}/user/userSearch?inputName_1="
				+$('#inputName_1').val()+"&inputPhone_1="+$('#inputPhone_1').val(),
		success:function(data){
			if(data == 0){
				$('#id_value').text("회원 정보를 확인해주세요!");	
			} else {
				$('#id_value').text(data);
				// 아이디값 별도로 저장
				idV = data;
			}
		}
	});
}
