/**
 * 
 */


/* 아이디 찾기 */ 
//아이디 & 스토어 값 저장하기 위한 변수
	// 아이디 값 받고 출력하는 ajax
	function findId_click(){
		var user_name=$('#user_name').val()
		var user_phone=$('#user_phone').val()
		
		$.ajax({
			type:"post",
			data:{user_name:"user_name", user_phone:"user_phone"} ,
			url:"/find_id",
			success:function(data){
				if(data == 0){
					$('#id_value').text("회원 정보를 확인해주세요!");
					$('#user_name').val('');
					$('#user_phone').val('');
				} else {
					$('#id_value').text(data);
					$('#user_name').val('');
					$('#user_phone').val('');
					
				}
			},
			 error:function(){
	                alert("에러입니다");
	            }
		});
	};

	
/*	
const modal = document.getElementById("modal")
const btnModal = document.getElementById("find_id")

btnModal.addEventListener("click", e => {
    modal.style.display = "flex"
})

    
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
})

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modal.style.display = "none"
    }
})
*/
	