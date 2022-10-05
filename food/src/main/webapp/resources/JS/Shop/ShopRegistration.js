/**
/**
 * 상품등록 js
 */

$(document).ready(function() {
	var input="";
	//상품등록 체크변수
	$("#register_Btn").click(function(){
		var menuNamechk = false;
		// 한줄소개
		var subDeschk =false;
		// 상품가격
		var gasPricechk =false;
		// 포장타입
		var gasTypechk = false;
		// 판매단위
		var gasunitchk = false;
		// 원산지
		var gasoriginchk = false;
		// 상품설명
		var gdsDeschk = false;
		// 상세정보
		var gasDetailchk = false;
		
		  /*체크대상변수*/
	      var menuName= $("input[name='NAME']").val();	// 상품명
	      var subDes= $("input[name='subcontent']").val();// 한줄소개
	      var gasPrice= $("input[name='price2']").val();	// 상품원가
	      var gasType= $("select[name='packaging']").val();	// 포장타입
	      var gasunit= $("input[name='unit']").val();	// 판매단위
	      var gasorigin= $("select[name='origin']").val();	// 원산지
	      var gdsDes= $("textarea[name='CONTENT']").val();	// 상품설명
	      var gasDetail= $("textarea[name='detail']").val();	// 상세정보
	      
	      
	      
	      /*입력란 공란 체크*/

		if (menuName.length>0) {
			$(".sh_gasNameinput").css('display','none');
			menuNamechk=true;
		} else {
			$(".sh_gasNameinput").css('display','block');
			menuNamechk=false;
		}
		if (subDes.length>0) {
			$(".sh_susDesinput").css('display','none');
			subDeschk=true;
		} else {
			$(".sh_susDesinput").css('display','block');
			subDeschk=false;
		}
		if (gasPrice.length>0) {
			$(".sh_gasPrice").css('display','none');
			gasPricechk=true;
		} else {
			$(".sh_gasPrice").css('display','block');
			gasPricechk=false;
		}
		if (gasType.length>0) {
			$(".sh_gasType").css('display','none');
			gasTypechk=true;
		} else {
			$(".sh_gasType").css('display','block');
			gasTypechk=false;
		}
		if (gasunit.length>0) {
			$(".sh_gasunit").css('display','none');
			gasunitchk=true;
		} else {
			$(".sh_gasunit").css('display','block');
			gasunitchk=false;
		}
		if (gdsDes.length>0) {
			$(".sh_gdsDes").css('display','none');
			gdsDeschk=true;
		} else {
			$(".sh_gdsDes").css('display','block');
			gdsDeschk=false;
		}
		if (gasDetail.length>0) {
			$(".sh_gasDetail").css('display','none');
			gasDetailchk=true;
		} else {
			$(".sh_gasDetail").css('display','block');
			gasDetailchk=false;
		}if (gasorigin.length>0) {
			$(".sh_gasorigin").css('display','none');
			gasoriginchk=true;
		} else {
			$(".sh_gasorigin").css('display','block');
			gasoriginchk=false;
		}
		
		if(menuNamechk && subDeschk && gasPricechk && gasTypechk && gasunitchk && gasoriginchk && gdsDeschk && gasDetailchk){
			 //sh_form.submit();
			 $("#sh_form").append(input).submit();
		}else{
			return false;
		}
	});
	
	
/*	//할인율 inut 설정
	$("#sh_discount").on("propertychange change keyup paste input",function(){						//propertychange change keyup paste input=> input 변화 감지
			var userInput = $("sh_discount")
			var discount
	})*/
	

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
	$("#gasimgmain").on("change",function(e){
			e.preventDefault()

			var formData= new FormData();
			//FileList객체에 접근
			//fileList객체가 맞는지 확인하기 위해 변수를 선언하고 fileList로 초기화한 뒤 해당 객체가 fileList인지 확인
			var inputFile = $("input[name='imagemain']");
			var files = inputFile[0].files;

			console.log(files);	
			
			for(var i=0;i<files.length;i++){
			
			if(!checkExtension(files[i].name,files[i].size)){
				return false;
			}
			formData.append("imagemain",files[i]);
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
					$("#gasimgmain ul").html(str);
					console.log(input)
					//$("#form").append(input).submit();
					
				}
			
			})
			
	
	});
	
	//subpage
	$("#gasimgsub").on("change",function(e){
			e.preventDefault()
		
			var formData= new FormData();
			//FileList객체에 접근
			//fileList객체가 맞는지 확인하기 위해 변수를 선언하고 fileList로 초기화한 뒤 해당 객체가 fileList인지 확인
			var inputFile = $("input[name='imagesub']");
			var files = inputFile[0].files;

			console.log(files);	
			
			for(var i=0;i<files.length;i++){
			
			if(!checkExtension(files[i].name,files[i].size)){
				return false;
			}
			formData.append("imagesub",files[i]);
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
							
							str+="<li><img src='/Shopdisplay?fileName="+filePath+"'></li>"
						}else{
							var filePath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"-"+obj.fileName)
							str+="<li><a href='/Shopdownload?fileName="+filePath+"'>"+obj.fileName+"</a></li>"
						}
						
					})
					$("#gasimgsub ul").html(str);
					console.log(input)
					//$("#form").append(input).submit();
				}
			})
	});

})
