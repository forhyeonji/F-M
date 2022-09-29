/**
 * 
 */


/* 아이디 찾기 */ 
//아이디 & 스토어 값 저장하기 위한 변수
	// 아이디 값 받고 출력하는 ajax
	function findId_click(){
		var user_name=$('#user_name').val()
		var user_phone=$('#user_phone').val()
		
		var findId = "user_name="+user_name+"user_phone="+user_phone;
		
		$.ajax({
			url : "find_id",
			method : "post",
			data : sendData,
			dataType : "text",
			success : function(text) {
				if (text != null) {
					$("#result_id").html("아이디 = "+text);
				} else {
					$("#result_id").html("해당정보가 없습니다.");
				}
			},
			error : function(xhr) {
				alert("에러코드 = " + xhr.status);
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
	