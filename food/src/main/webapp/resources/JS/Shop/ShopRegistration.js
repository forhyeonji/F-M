/**
 * 상품등록 js
 */

$(document).ready(function(){
	// 상품 등록 유효성 검사
	$("#addBTN").click(function(){
		var menuName = $("#gasName").val();
		var menuName = $("#subDes").val();
		var menuName = $("#gasPrice").val();
		var menuName = $("#gasType").val();
		var menuName = $("#gasunit").val();
		var menuName = $("#gasorigin").val();
		var menuName = $("#gasNum").val();
		var menuName = $("#gasinput").val();
		var menuName = $("#gdsDes").val();
		var menuName = $("#gasDetail").val();
		
		if(gasName==""){
			alert("상품명을 입력해주세요");
			gasName.focus();
		}else if(subDes==""){
			alert("한줄소개를 입력해주세요")
			subDes.focus();
		}else if(gasPrice==""){
			alert("상품가격을 입력해주세요");
			gasPrice.focus();
		}else if(gasType=""){
			alert("포장타입을 선택해주세요")
			gasType.focus();
		}else if(gasunit=""){
			alert("판매단위를 입력해주세요")
			gasunit.focus();
		}else if(gasorigin=""){
			alert("원산지를 선택해주세요")
			gasorigin.focus();
		}else if(gasNum=""){
			alert("상품수량을 입력해주세요")
			gasNum.focus();
		}else if(gasinput=""){
			alert("입고예정일을 입력해주세요")
			gasNum.focus();	
		}else if(gdsDes=""){
			alert("상품설명을 입력해주세요")
			gasDes.focus();
		}else if(gasDetail=""){
			alert("상세정보를 입력해주세요")
			gasDetail.focus();
		}else if(gasimg=""){
			alert("이미지를 등록해주세요")
			gasimg.focus();
		}
		
		//상품 정보 전송(관리자)
		document.sh_form.action = "${path}/shopRegistration/insert.do";
		document.sh_form.submit();
	})
	
		//상품목록이동(관리자)
		$("#listbtn").click(function(){
			location.href='${path}/shopProductlist/list.do'
		})
			
		
		

})