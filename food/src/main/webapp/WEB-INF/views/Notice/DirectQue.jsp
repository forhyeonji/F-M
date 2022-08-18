<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>


<div class="NOTI_King_container">

	<div class="NOTI_King_main">	
	
	<div class="NOTI_King_main_left">
	
	<ul class="NOTI_leftBar">
		<li><a href="http://localhost:8080/notice" class="NOTI_a">공지사항</a></li>
		<li><a href="http://localhost:8080/QnA" class="NOTI_a">자주하는 질문</a></li>
		<li><a href="http://localhost:8080/directQue" class="NOTI_a">1:1 문의</a></li>
		<li><a href="http://localhost:8080/directKing" class="NOTI_a">1:1 문의 관리자</a></li>
		<li><a class="NOTI_a">실시간 문의하기ㅋ</a></li>
	</ul>
	</div>	<!-- main_left -->
	
	
	
	
			<div class="NOTI_Que_main_center">
			<div class="NOTI_Que_main_top">
			<label class="NOTI_notice_lable">1:1 문의</label>  <label>갠적으로 궁금해?~~</label> <br><br>
			
			
			<table class="NOTI_Que_Table">
			
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
					
					<td class="NOTI_button">
						<input type="submit" value="등록" class="but">
					</td>
					
				</tr>
				
				<tr>
					<td colspan="3" width="750px"><input type="text" id="Que_title" placeholder="제목을 입력해주세요."></td>
				</tr>
			
				<tr>
					<td colspan="3" class="text"><textarea placeholder="문의사항을 남겨주세요." id="content"></textarea></td>
				</tr>
			
			</table>
			</div> <!-- main_top -->
			
			
			
			
			
			
			<div class="NOTI_Que_main_bottom">
			<h3 class="NOTI_Que_lable">내가 남긴 문의</h3>
			<hr>
			
				
			<table class="NOTI_Que_Table">	
			
				<tr>
					<td width="100px" id="Que_category" class="NOTI_Que_title_effect">카테고리</td>
					<td width="300px" id="Que_title" class="NOTI_Que_title_effect">제목</td>
					<td width="100px" id="Que_regdate" class="NOTI_Que_title_effect">작성일</td>
					<td width="100px" id="Que_check" class="NOTI_Que_title_effect">답변여부</td>
				</tr>
				
				<tr>
					<td colspan="4" class="NOTI_Que_title_effect"><a href="http://localhost:8080/directQue_detail" class="NOTI_a">여기를 클릭하세요</a></td>
				</tr>
			
				<tr>
					<td colspan="4" class="NOTI_Que_title_effect"><a href="http://localhost:8080/directQue_detail" class="NOTI_a">여기를 클릭하세요</a></td>
				</tr>
				
			</table>
			
			</div> <!-- main_bottom -->
			</div> <!-- main_center -->
	
	
	
	</div>	<!-- main -->
	
</div>	<!-- container -->
<%@ include file="../Footer/footer.jsp"%>