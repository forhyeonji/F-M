/**
/**
 * 상품등록 js
 */

$(document).ready(function() {
	
	//상품 수정 버튼 클릭 이벤트
	$("correction_Btn").on("click",".update",function(){
		  var NAME= $(this).val("#NAME");	// 상품명
		  var subcontent= $(this).val("#subcontent");	// 한줄소개
		  var price2= $(this).val("#price2");	// 상품원가
		  var packaging= $(this).val("#packaging");	// 포장타입
		  var unit= $(this).val("#unit");	// 판매단위
		  var Origin= $(this).val("#Origin");	// 원산지
		  var CONTENT= $(this).val("#CONTENT");	// 상품설명
		  var detail= $(this).val("#detail");	// 상세정보
	
		  //상품 수정 폼 유효성 검사

			if (NAME == "") {
				alert("상품명을 입력해주세요");
				NAME.focus();
			} else if (subcontent == "") {
				alert("한줄소개를 입력해주세요");
				subcontent.focus();
			} else if (price2 == "") {
				alert("상품원가 입력해주세요");
				price2.focus();
			} else if (packaging == "") {
				alert("포장타입 입력해주세요");
				packaging.focus();
			} else if (unit == "") {
				alert("판매단위 입력해주세요");
				unit.focus();
			} else if (Origin == "") {
				alert("원산지 입력해주세요");
				Origin.focus();
			} else if (CONTENT == "") {
				alert("상품설명 입력해주세요");
				CONTENT.focus();
			} else if (detail == "") {
				alert("상세정보 입력해주세요");
				detail.focus();
			}
			
		ShopProductEdit({
							NAME : NAME,
							subcontent : subcontent,
							price2 : price2,
							unit : unit,
							Origin : Origin,
							CONTENT : CONTENT,
							detail : detail
						});
	});
	
	
	//상품삭제 버튼 클릭 이벤트
	$("#delete_Btn").click(function(){
		//상품 삭제 확인
		if(confirm("상품을 삭제 하시겠습니까>")){
			document.sh_Editform.action = "${path}/shopProductlist";
			document.sh_Editform.submit();
		}
	});
	
	//상품목록 버튼 클릭 이벤트
	$("#list_Btn").click(function(){
			location.href="${path}/shopProductlist";
	})
	
	
// 함수 선언(댓글 수정을 하기 위한 함수 선언)
function ShopProductEdit(Shop) {
	console.log(Shop);
	$.ajax({ // ajax 준비 (비동기식으로 준비)
		type : "put", // method 방식(get,post,put,delete)
		url : "/ShopProductEdit",
		data : JSON.stringify(Shop),
		// contentType : ajax ->Controller로 데이터 전송 시 타입
		// contentType을 생략하면 web Browser에 위임하게 됨
		contentType : "application/json; charset=utf-8",
		success : function(result) {
			if (result == "sucess") {
				alert("수정 성공")
			}
		}
	})
}
	
function add(Shop) { // add 함수 선언 시작
		console.log(Shop);
		$.ajax({ // ajax 준비 (비동기식으로 준비)
			type : "post", // method 방식(get,post,put,delete)
			url : "/ShopProductEdit",
			data : JSON.stringify(Shop),
			contentType : "application/json; charset=utf-8",
			success : function(result) {
				if (result == "sucess") {
					alert("댓글수정 성공")
				}
			}
		})
	} // add 함수 선언 끝
	
	
	/*//이미지 업로드
	//FileList 객체에 접근하기 위해 input태그의 files속성에 접근 -> change 이벤트를 통해 접근
	//이미지 제한 변수
	//jpg,png파일만 허용
	var reg = new RegExp("(.*?)\.(exe|zip|alz)$");
	//파일 크기 204857byte 만 허용
	var maxSize = 5242880; 
	
	function checkExtension(fileName,fileSize){
		if(fileSize >= maxSize){
			alert("파일사이즈 초과");
			return false;
		}
		if(reg.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;
	}
	//var input="";
	$("#Editimgmain").on("change",function(e){
			e.preventDefault()

			var formData= new FormData();
			//FileList객체에 접근
			//fileList객체가 맞는지 확인하기 위해 변수를 선언하고 fileList로 초기화한 뒤 해당 객체가 fileList인지 확인
			var inputFile = $("input[name='Editimgmain']");
			var files = inputFile[0].files;

			console.log(files);	
			
			for(var i=0;i<files.length;i++){
			
			if(!checkExtension(files[i].name,files[i].size)){
				return false;
			}
			formData.append("Editimgmain",files[i]);
			}
			//ajax를 사용하여 서버를 전송
			$.ajax({
				url:'/ShopuploadMain',
				data:formData,
				contentType:false,
				processData:false,
				dataType:"json",
				type:"POST",
				success:function(result){
					console.log(result);
					
					var str="";
					//var input="";
					//$(result).each(function(i,obj){
						input+="<input type='text' name='attach["+0+"].fileName' value='"+result.fileName+"'>";
						input+="<input type='text' name='attach["+0+"].uuid' value='"+result.uuid+"'>";
						input+="<input type='text' name='attach["+0+"].uploadPath' value='"+result.uploadPath+"'>";
						input+="<input type='text' name='attach["+0+"].image' value='"+result.image+"'>";
						input+="<input type='text' name='attach["+0+"].division' value='"+result.division+"'>";
						
						if(result.image){
							var filePath = encodeURIComponent(result.uploadPath+"/s_"+result.uuid+"-"+result.fileName);
							console.log(filePath)
							
							str+="<li><img src='display?fileName="+filePath+"'></li>"
						}else{
							var filePath = encodeURIComponent(result.uploadPath+"/"+result.uuid+"-"+result.fileName)
							str+="<li><a href='/download?fileName="+filePath+"'>"+result.fileName+"</a></li>"
						}
						
					//})
					$("#Editimgmain ul").html(str);
					console.log(input)
					//$("#form").append(input).submit();
					
				}
			
			})
			
	
	});
	
	//subpage
	$("#Editimgsub").on("change",function(e){
			e.preventDefault()
		
			var formData= new FormData();
			//FileList객체에 접근
			//fileList객체가 맞는지 확인하기 위해 변수를 선언하고 fileList로 초기화한 뒤 해당 객체가 fileList인지 확인
			var inputFile = $("input[name='Editimgsub']");
			var files = inputFile[0].files;

			console.log(files);	
			
			for(var i=0;i<files.length;i++){
			
			if(!checkExtension(files[i].name,files[i].size)){
				return false;
			}
			formData.append("Editimgsub",files[i]);
			}
			//ajax를 사용하여 서버를 전송
			$.ajax({
				url:'/ShopuploadSub',
				data:formData,
				contentType:false,
				processData:false,
				dataType:"json",
				type:"POST",
				success:function(result){
					console.log(result);
					
					var str="";
					//var input="";
					$(result).each(function(i,obj){
						console.log(obj)
						console.log(obj.fileName)
						input+="<input type='text' name='attach["+(i+1)+"].fileName' value='"+obj.fileName+"'>";
						input+="<input type='text' name='attach["+(i+1)+"].uuid' value='"+obj.uuid+"'>";
						input+="<input type='text' name='attach["+(i+1)+"].uploadPath' value='"+obj.uploadPath+"'>";
						input+="<input type='text' name='attach["+(i+1)+"].image' value='"+obj.image+"'>";
						input+="<input type='text' name='attach["+(i+1)+"].division' value='"+obj.division+"'>";
						
						if(obj.image){
							var filePath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"-"+obj.fileName);
							console.log(filePath)
							
							str+="<li><img src='Shopdisplay?fileName="+filePath+"'></li>"
						}else{
							var filePath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"-"+obj.fileName)
							str+="<li><a href='/Shopdownload?fileName="+filePath+"'>"+obj.fileName+"</a></li>"
						}
						
					})
					$("#Editimgsub ul").html(str);
					console.log(input)
					//$("#form").append(input).submit();
				}
			})
	});

*/
})