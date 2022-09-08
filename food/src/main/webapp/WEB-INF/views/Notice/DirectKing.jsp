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
	</div>
	
	
	
	
	<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">1:1 문의 관리자</label>  <label>내가 말해주께~~~</label> <br><br>
		
					<select class="NOTI_King_select">
						<option>레시피 문의</option>
						<option>스토어 문의</option>
						<option>커뮤니티 문의</option>
						<option>기타 문의</option>
					</select>
					
		<hr>	
		<table>	
		
			<tr class="NOTI_bar">
				<td width="300px" class="NOTI_title_effect" id="NOTI_title">제목</td>
				<td width="100px" class="NOTI_title_effect" id="NOTI_regdate">작성일</td>
				<td width="100px" class="NOTI_title_effect" id="NOTI_check">답변여부</td>
			</tr>
			
			<tr>
				<td colspan="3" class="NOTI_title_effect"><a href="http://localhost:8080/directKing_answer" class="NOTI_a">여기를 클릭하세요</a></td>
			</tr>
			
			<tr>
				<td colspan="3" class="NOTI_title_effect"><a href="http://localhost:8080/directKing_answer" class="NOTI_a">여기를 클릭하세요</a></td>
			</tr>
		
		</table>
		
	</div> <!-- main_center -->
	
	
	
	
</div> <!-- main -->
</div> <!-- container -->	
<%@ include file="../Footer/footer.jsp"%>