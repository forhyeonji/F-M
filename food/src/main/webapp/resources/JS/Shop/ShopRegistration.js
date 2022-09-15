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

})
