<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>


<div class="NOTI_King_container">

	<div class="NOTI_King_main">	
	
	<div class="NOTI_King_main_left">
	
	<ul type="none" class="NOTI_leftBar">
		<li><a href="http://localhost:8080/notice?sep=공지" class="NOTI_a">공지사항</a></li>
		<li><a href="http://localhost:8080/QnA?sep=자주하는질문" class="NOTI_a">자주하는 질문</a></li>
		<li><a href="http://localhost:8080/directQue?sep=개인문의" class="NOTI_a">1:1 문의</a></li>
		<li><a href="http://localhost:8080/directKing?sep=개인문의답변" class="NOTI_a">1:1 문의 관리자</a></li>
		<li><a>실시간 문의</a></li>
	</ul>
	</div>	<!-- main_left -->
	
	
	
	
			<div class="NOTI_Que_main_center">
			<div class="NOTI_Que_main_top">
			<label class="NOTI_notice_lable">1:1 문의</label>  <label>갠적으로 궁금해?~~</label> <br><br>
			
			
			<table class="NOTI_Que_Table">
			
				<tr>	
					<td width="260px"> 연락처 <input type="text" placeholder="원하시는 분만 남겨주세요" class="NOTI_Tel"> </td>
			
					<td>
						<select class="NOTI_Que_select">
							<option>레시피 문의</option>
							<option>스토어 문의</option>
							<option>커뮤니티 문의</option>
							<option>기타 문의</option>
						</select>
					</td>
					
					<td>
						<input type="submit" value="등록" class="NOTI_Sbutton">
					</td>
					
				</tr>
				
				<tr>
					<td colspan="3"><input type="text" id="NOTI_Que_title" placeholder="제목을 입력해주세요."></td>
				</tr>
			
				<tr>
					<td colspan="3" height="400px" width="750px"><textarea class="NOTI_Que_Textarea" placeholder="문의사항을 남겨주세요."></textarea></td>
				</tr>
			
			</table>
			</div> <!-- main_top -->
			
			
			
			
			
			
			<div class="NOTI_Que_main_bottom">
			<h3 class="NOTI_Que_lable">내가 남긴 문의</h3>
			
			
				
			<table class="NOTI_Que_Table">	
			
				<tr>
					<td width="100px" id="NOTI_Que_category" class="NOTI_Que_title_effect">카테고리</td>
					<td width="300px" id="NOTI_Que_title" class="NOTI_Que_title_effect">제목</td>
					<td width="100px" id="NOTI_Que_regdate" class="NOTI_Que_title_effect">작성일</td>
					<td width="100px" id="NOTI_Que_check" class="NOTI_Que_title_effect">답변여부</td>
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