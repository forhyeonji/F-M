<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>


<div id="container">

	<div id="main">	
	
	<div id="main_left">
	<ul type="none">
		<li><a href="http://localhost:8080/notice">공지사항</a></li>
		<li><a href="http://localhost:8080/QnA">자주하는 질문</a></li>
		<li><a href="http://localhost:8080/directQue">1:1 문의</a></li>
		<li><a href="http://localhost:8080/directKing">1:1 문의 관리자</a></li>
		<li><a>실시간 문의</a></li>
	</ul>
	</div>	<!-- main_left -->
	
	
	
	
			<div id="main_center">
			<div id="main_top">
			<label id="notice_lable">1:1 문의</label>  <label>갠적으로 궁금해?~~</label> <br><br>
			
			
			<table id="queTable">
			
				<tr>	
					<td width="260px"> 연락처 <input type="text" placeholder="원하시는 분만 남겨주세요" id="tel"> </td>
			
					<td>
						<select>
							<option>레시피 문의</option>
							<option>스토어 문의</option>
							<option>커뮤니티 문의</option>
							<option>기타 문의</option>
						</select>
					</td>
					
					<td id="button">
						<input type="submit" value="등록" class="but">
					</td>
					
				</tr>
				
				<tr>
					<td colspan="3" width="750px"><input type="text" id="title" placeholder="제목을 입력해주세요."></td>
				</tr>
			
				<tr>
					<td colspan="3" class="text"><textarea placeholder="문의사항을 남겨주세요." id="content"></textarea></td>
				</tr>
			
			</table>
			</div> <!-- main_top -->
			
			
			
			
			
			
			<div id="main_bottom">
			<h3>내가 남긴 문의</h3>
			<hr>
			
				
			<table id="listTable">	
			
				<tr>
					<td width="100px" id="category" class="title_effect">카테고리</td>
					<td width="300px" id="title" class="title_effect">제목</td>
					<td width="100px" id="regdate" class="title_effect">작성일</td>
					<td width="100px" id="check" class="title_effect">답변여부</td>
				</tr>
				
				<tr>
					<td colspan="4" class="title_effect"><a href="http://localhost:8080/directQue_detail">여기를 클릭하세요</a></td>
				</tr>
			
				<tr>
					<td colspan="4" class="title_effect"><a href="http://localhost:8080/directQue_detail">여기를 클릭하세요</a></td>
				</tr>
				
			</table>
			
			</div> <!-- main_bottom -->
			</div> <!-- main_center -->
	
	
	
	</div>	<!-- main -->
	
</div>	<!-- container -->
<%@ include file="../Footer/footer.jsp"%>