/**
 * 상품등록 js
 */

$(document).ready(function() {

	// 상품 등록 유효성 검사
	$("#addBTN").click(function() {
		// 상품명
		var menuName = $("#NAME").val();
		// 한줄소개
		var subDes = $("#subcontent").val();
		// 상품가격
		var gasPrice = $("#price2").val();
		// 포장타입
		var gasType = $("#packaging").val();
		// 판매단위
		var gasunit = $("#unit").val();
		// 원산지
		var gasorigin = $("#Origin").val();
		// 상품수량
		var gasNum = $("#KIND").val();
		// 입고예정
		var gasinput = $("#Import").val();
		// 상품설명
		var gdsDes = $("#CONTENT").val();
		// 상세정보
		var gasDetail = $("#detail").val();
		// 상품이미지
		var gasimg = $("#image").val();

		if (NAME == "") {
			alert("상품명을 입력해주세요");
			NAME.focus();
		} else if (subcontent == "") {
			alert("한줄소개를 입력해주세요")
			subcontent.focus();
		} else if (price2 == "") {
			alert("상품가격을 입력해주세요");
			price2.focus();
		} else if (packaging = "") {
			alert("포장타입을 선택해주세요")
			packaging.focus();
		} else if (unit = "") {
			alert("판매단위를 입력해주세요")
			unit.focus();
		} else if (Origin = "") {
			alert("원산지를 선택해주세요")
			Origin.focus();
		} else if (KIND = "") {
			alert("상품수량을 입력해주세요")
			KIND.focus();
		} else if (Import = "") {
			alert("입고예정일을 입력해주세요")
			Import.focus();
		} else if (CONTENT = "") {
			alert("상품설명을 입력해주세요")
			CONTENT.focus();
		} else if (detail = "") {
			alert("상세정보를 입력해주세요")
			detail.focus();
		} else if (image = "") {
			alert("이미지를 등록해주세요")
			image.focus();
		}

		// 상품 정보 전송(관리자)
		document.sh_form.action = "${path}/shopRegistration/insert.do";
		document.sh_form.submit();
	})

	// 상품목록이동(관리자)
	$("#listbtn").click(function() {
		location.href = '${path}/shopProductlist'
	})

	// ajax를 통해 select box안에 들어갈 값 부르기
	$("#class1").on("change", function() {
		var s = $("#class1").val();
		console.log(s)

		$.getJSON("/Shop/" + s + ".json", function(data) {
			var str = "";
			str += "";

			for (var i = 0; i < data.length; i++) {
				str += "<option>" + data[i].class2 + "</option>"
			}
			$("#class2").html(str);
		})
	});
	
	//이미지 업로드
	//FileList 객체에 접근하기 위해 input태그의 files속성에 접근 -> change 이벤트를 통해 접근
	$("input[type='file']").on("change",function(){
			let fromData= new FormData();
			//FileList객체에 접근
			//fileList객체가 맞는지 확인하기 위해 변수를 선언하고 fileList로 초기화한 뒤 해당 객체가 fileList인지 확인
			let fileInput = $('input[name="image"]');
			let fileList = fileInput[0].files;
			//file 객체를 담기 위한 변수를 선언한 후 file 객체로 초기화 
			let fileObj = fileList[0];
			
			if(!fileCheck(fileObj.name,fileObj.size)){
				return false;
			}
			
			formData.append("image",fileObj);
			
			//ajax를 사용하여 서버를 전송
			$.ajax({
				url:'/shopRegistrationAjaxAction',
				data:formData,
				contentType:false,
				prossData:false,
				dataType:"json",
				type:"POST",
				success:function(result){
					console.log(result);
				}
			
			})
	
	});
		
		
			//이미지 제한 변수
			//jpg,png파일만 허용
			let regex = new RegExp("(.*?)\.(jpg|png)$");
			//파일 크기 204857byte 만 허용
			let maxSize = 204857;
			
			function fileCheck(fileName,fileSize){
				if(fileSize >= maxSize){
					alert("파일사이즈 초과");
					return false;
				}
				if(!regex.test(fileName)){
					alert("해당 종류의 파일은 업로드할 수 없습니다.");
					return false;
				}
				
				return true;
			}
			
	
		

})
