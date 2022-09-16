<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

	<div id="NOTI_main">
		
		
		<div id="NOTI_main_top">	
		<h3 class="NOTI_bigTitle">내가 남긴 문의</h3>
		
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
							
								<input type="button" value="목록" onclick="location.href='http://localhost:8080/directKing?sep=inquiry'" class="NOTI_but">
							
						</div> <!-- button -->
				
				
				
				</c:when>
				<c:otherwise>
					
						
							<div id="NOTI_main_bottom">
							
								<div class="NOTI_NoAnswer">
									<h4 style="color:gray">잠시만 기다려 주세요. 신속히 응답하겠습니다.</h4>
								</div>
							
							</div> <!-- main_bottom -->
							
							
							<div class="NOTI_button">
							
								<input type="button" value="목록" onclick="location.href='http://localhost:8080/directQue?sep=inquiry'" class="NOTI_but">
								
							</div> <!-- button -->
							
					
				
				</c:otherwise>
				
				
				
				
				
			</c:choose>
		

	</div> <!-- main -->


</div>  <!-- container -->

<%@ include file="../Footer/footer.jsp"%>