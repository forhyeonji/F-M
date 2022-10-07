/**
 * 
 */
//문의등록 버튼 클릭이벤트가 발생하면 상품 페이지로 이동
$(document).ready(function() {
	$(".sh_signup").click(function() {
		location.href = "${path}/shopDetail";
	})
	
	
	$(".que").click(function(e) {
		e.preventDefault();
		  $(this).next(".anw").stop().slideToggle(300);
		  $(this).toggleClass('on').siblings().removeClass('on');
		  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});

	//답변등록 버튼을 누르면 답변페이지로 이동
	
	$(".answerbtn").click(function(){
		location.href = "/shopEnswer";
	})
	
	//수량증가(+버튼을 클릭할 때)
	$('#plus').on("click",function(){
		  // 수량
	      var Quantity = Number($('#Quantity').val())+1

		  $('#Quantity').val(Quantity);
	      // 가격
	      
	    /*  var total = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',')*/
	      var price = Number($('#discountprice').html())
	      $('#sh_total').val(Quantity*price)
	      
	   
	      
	})
	
	$('#minus').on("click",function(){
		 var Quantity = Number($('#Quantity').val())-1
		 $('#Quantity').val(Quantity);
		 
		 
		 //var price = Number($('#sh_total').val())
		/* var total = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',')*/
		 var price = Number($('#discountprice').html())
	     $('#sh_total').val(Quantity*price)
	     

		 
        if (Quantity==0){
            $('#Quantity').val(1)  
            $('#sh_total').val(1*price)
            return;
        }
//        else{
//            $('#Quantity').val(Quantity-1);
//        }
    
	      // 가격
        
/*      //수량증가에 따른 가격 합계
       function totalprice(){
    	   alert("aaaa")
    	   // 갯수
    	   var sh_num = document.getElementById("Quantity").value;
    	   // 원가
    	   var price = document.getElementById("sh_sum").value;
    	   
    	   document.getElementById('totalprice').innerHTML = sh_num * price
       } */
    
    })


})