<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

	<div id="NOTI_main">
		
		
		<div id="NOTI_main_top">	
		<h3 class="NOTI_bigTitle">1:1 문의 답변하기</h3>
		
		<table class="NOTI_table">
			<tr>
				<td class="NOTI_label">카테고리</td>
				<td class="NOTI_label_answer">
				
				<c:choose>
					<c:when test="${detail.subsep eq 'inquiry_recipe'}">
					레시피
					</c:when>
										
					<c:when test="${detail.subsep eq 'inquiry_store'}">
					스토어
					</c:when>
										
					<c:when test="${detail.subsep eq 'inquiry_commu'}">
					커뮤니티
					</c:when>
										
					<c:otherwise>
					기타
					</c:otherwise>
				</c:choose>
				
				
				</td>
			</tr>
			
			<tr>
				<td class="NOTI_label">제목</td>
				<td class="NOTI_label_answer">${detail.title}</td>
			</tr>
			
			<tr>
				<td class="NOTI_label">작성자</td>
				<td class="NOTI_label_answer">${detail.user_id}</td>
			</tr>
			
			<tr>
				<td class="NOTI_label">작성일자</td>
				<td class="NOTI_label_answer">${detail.reg_dt}</td>
			</tr>
			
			
			
			<tr>
				<td colspan="2" class="NOTI_text"><p>${detail.context}</p></td>
			</tr>
			
			</table>
			
			</div> <!-- main_top -->
			
			<c:choose>
			
				<c:when test="${answercheck!=null}">
						
						<div id="NOTI_main_bottom">
							
								<h3 class="NOTI_bigTitle">답변</h3>
						
								<table class="NOTI_table">
									<tr>
										<td colspan="2" class="NOTI_text">${answercheck.ans_context}</td>
									</tr>
								</table>
							
						</div> <!-- main_bottom -->
						<div class="NOTI_button">
							
								<input type="button" value="목록" onclick="location.href='directKing?sep=inquiry'" class="NOTI_but">
							
						</div> <!-- button -->
				
				
				
				</c:when>
				<c:otherwise>
					
						<form action="/directKing_answer" method="post">
						
							<div id="NOTI_main_bottom">
							
								<h3 class="NOTI_bigTitle">답변</h3>
						
								<table class="NOTI_table">
									<tr>
										<td colspan="2" class="NOTI_text"><textarea name="ans_context" placeholder="답변을 입력해 주세요." class="NOTI_textarea"></textarea></td>
									</tr>
								</table>
							
							</div> <!-- main_bottom -->
							
							
							<div class="NOTI_button">
								<input type="submit" value="등록" class="NOTI_but">
								<input type="button" value="취소" onclick="location.href='directKing?sep=inquiry'" class="NOTI_but">
								<input type="hidden" value="${sessionScope.user_id}" name="ans_id">
								<input type="hidden" value="${detail.bno}" name="bno">
							</div> <!-- button -->
							
						</form>
				
				</c:otherwise>
				
				
				
				
				
			</c:choose>
		

	</div> <!-- main -->


</div>  <!-- container -->

<%@ include file="../Footer/footer.jsp"%>