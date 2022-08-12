<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	* {
	
	margin: 0px;
	padding: 0px
	
	}



	#header {
	
		height : 160px;

		
	}



	#header_main {

		width : 1050px;
		height : 150px;
		margin : 0px auto;
		position : relative;
	}
	
	
	/* 로고 */
	
	#코카콜라 {
		width : 160px;
		height : 50px;
		
		position : absolute;
		top : 30px;
		left : 125px;
	
	}
	
	
	/* 서치바 */
	


	#search {
	
		width : 384px;
		height : 46px;
		
		position : absolute;
		left : 335px;
		top : 30px;

		border : 1px black solid;
		padding : 10px;
		
		border-radius: 10px;
	}
	
	.searchTd {
	 	padding : 13px;
	 	border-bottom : solid black 1px;
	 	border-radius : 10px;
	 }
	

	
	#searchBar {
		width : 300px;
		height : 20px;
		margin-right : 30px;
		border : none;
		
	}
	
	

	#돋보기 {
		height : 20px;
		width : 20px;
	}
	
	
	
	/* 네비게이션 */
	
	
	#navBox {
		
		position : relative;
		left : 120px;
		top : 105px;
		border : none;
		
	
	}

	
	.td {
	
		padding-top : 10px;
		padding-bottom : 10px;
		padding-left : 70px;
		padding-right : 70px;	
			
		font-weight : bold;
		
	}
	
</style>
</head>
<body>
<div id="header">

	<div id="header_main">
	
		<div id="logoBox">
			<a href="/main"><img src="../../../resources/image/HeaderImg/코카콜라.jpg" id="코카콜라"></a>
		</div> <!-- logoBox -->
	
	
	
	
	

		<table id="search">

			<tr>
				<td class="searchTd">
				
				<input type="text" id="searchBar" placeholder="검색어를 입력해주세요.">
				</td>
				
				<td class="searchTd">
				<img src="../../../resources/image/HeaderImg/돋보기.jpg" id="돋보기">
				</td>
			</tr>
			
		</table>

	
	
	
	
	
	
		<div id="navBox">
		
			<table frame="void">
				<tr>
					<td class="td"><a href="/bread">레시피</a></td>
					<td class="td"><a href="/shop">쇼핑</a></td>
					<td class="td"><a href="/bread">커뮤니티</a></td>
					<td class="td"><a href="/notice">고객센터</a></td>
				</tr>
			</table>
		
		</div> <!-- navBox -->
	
	
	
	
	
	
	</div> <!-- header_main -->

<hr>
</div> <!-- header -->


</body>
</html>