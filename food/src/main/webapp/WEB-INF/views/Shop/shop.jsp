<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
       .menu{
          whidth:200;
          border-collapse : collapse;
       }
       
       td{
          width:400px;
          height:80px;
          text-align: center;
          font-size: 20pt;
       }
    
        .container {
           display:flex;
           flex-direction:row;
           margin-left: 10px;
           margin-bottom: 10px;
        }
      
      .main_top{
         display: flex;
         justify-content:space-around;
      }
      
        .main_middle {
            padding-top: 70px;
            clear: both;
            display: flex;
            justify-content:space-around;
        }

        .product {
            display: inline;
        }

        .main_image {
            padding: 10px;
        }

        .main_image_1{
               width:300px;
               height: 300px;
               position: relative;
               cursor: pointer;
               overflow: hidden;
        } 
      
      .img_1{
         position: relative;
         z-index: 1;
         -webkit-transition:all.5s ease;
         transition: all .5s ease;
         bottom: 0px;
         overflow: hidden;
      }
      
      .text{
         visibility: hidden;
      }
      .img_1:hover{
         bottom: 60px;
         visibility: visible;
      }
      
        .main_image_2 {
            padding-left: 20px;
   
        }

        .main_image_3 {
            margin-left: 70px;
        }

        .main_image_4 {
            margin-left: 70px;
        }

        .main_image_5 {
            margin-top: 70px;
        }
        
       .main_image_6{
            padding-left: 20px;
       }

    </style>
</head>
<body>
<div class="header">
   <table border="1" class="menu">
      <tr>
      <td>Kategorie</td>
      
      <td>Best</td>
      
      <td>Sale</td>
      
      <td>Event</td>
      </tr>
            
   </table>
   </div>

<div class="main">
<h2>인기 상품></h2>
    <div class="main_top">
            <div class="main_image_1">
                <div class="img_1"><img src="../../../resources/image/배추.jpg" width="300px"></div>
                 
           <div class="text"><font size="10">
                   한진택배<br>
                   알배기 배추 1kg<br>
           4,990원<br>
                   속이 꽉차고 달큰한 알배기 배추</font></div>
                 
            </div>

            <div class="main_image_2">
                <img src="../../../resources/image/복숭아.jpg" width="300px">
                <div class="parcel">한진택배</div>
                <div class="cabbage">복숭아 1kg</div>
                <div class="cabbage_price">9,900원</div>
                <p class="cabbage_ex">아삭달콤 딱딱이 복숭아</p>
            </div>

            <div class="main_image_3">
                <img src="../../../resources/image/고등어.jpg" width="300px">
                <div class="parcel">한진택배</div>
                <div class="pish">고등어 3마리</div>
                <div class="pish_price">12,000원</div>
                <p class="pish_ex">싱싱하고 등푸른 고등어</p>
            </div>

            <div class="main_image_4">
                <img src="../../../resources/image/안심.jpg" width="300px" height="200px">
                <div class="parcel">한진택배</div>
                <div class="meat">안심 250g</div>
                <div class="meat_price">17,130원</div>
                <p class="meat_ex">부드럽고 신선한 누구나 좋아하는 부위</p>
            </div>

    </div>
    <h2 class="product">F&M이 추천하는 신상 제품></h2>

    <div class="main_middle">
       

        <div class="main_image_5">
            <img src="../../../resources/image/규동.jpg" width="300px" height="200px">
            <div class="parcel">한진택배</div>
            <div class="guydong">규동<br> 소고기 덮밥용</div>
            <div class="guydong_price">18,430원</div>
            <p class="guydong_ex">간편하게 만들어 맛있게</p>
        </div>
        
           <div class="main_image_6">
            <img src="../../../resources/image/granate.jpg" width="300px" height="200px">
            <div class="parcel">한진택배</div>
            <div class="granate">석류 3개</div>
            <div class="granate_price">23,500</div>
            <p class="granate_ex">여자에게 최고의 과일</p>
        </div>
        
   
        
         <div class="main_image_7">
            <img src="../../../resources/image/VINIQ.jpg" width="300px" height="250px">
            <div class="parcel">한진택배</div>
            <div class="VINIQ">VINIQ 1병</div>
            <div class="VINIQ_price">13,500</div>
            <p class="VINIQ_ex">특별한 날 파티용 샴페인</p>
        </div>
        
        <div class="main_image_8">
            <img src="../../../resources/image/remon.jpg" width="300px" height="250px">
            <div class="parcel">한진택배</div>
            <div class="remon">레몬 6개입</div>
            <div class="remon_price">8,750원</div>
            <p class="remon_ex">상큼한 미국산 레몬 6개입</p>
        </div>
    </div>
</div>
</body>
</html>