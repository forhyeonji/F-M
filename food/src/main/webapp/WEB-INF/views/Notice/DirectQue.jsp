<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>
<%@ include file="../Notice/NoticeMenu.jsp"%>

	
			<div class="NOTI_Que_main_center">
			<div class="NOTI_Que_main_top">
			<label class="NOTI_notice_lable">1:1 문의</label>  <label>갠적으로 궁금해?~~</label> <br><br>
		
	<form action="/directQue" method="post">		
			<table class="NOTI_Que_Table">
			
				<tr>	
					<td width="260px"> 연락처 <input type="text" placeholder="꼭 남겨주세요" class="NOTI_Tel" name="user_tel"> </td>
			
					<td>
						<select class="NOTI_Que_select" name="subsep">
							<option value="inquiry_recipe">레시피 문의</option>
							<option value="inquiry_store">스토어 문의</option>
							<option value="inquiry_commu">커뮤니티 문의</option>
							<option value="inquiry_ect">기타 문의</option>
						</select>
					</td>
					
					<td>
						<input type="hidden" value="${sessionScope.user_id}" name="user_id">
						<input type="hidden" value="inquiry" name="sep">
						<input type="submit" class="NOTI_but" value="등록">
						
					</td>
					
				</tr>
				
				<tr>
					<td colspan="3"><input type="text" id="NOTI_Que_title" placeholder="제목을 입력해주세요." name="title"></td>
				</tr>
			
				<tr>
					<td colspan="3" height="400px" width="750px"><textarea class="NOTI_Que_Textarea" placeholder="문의사항을 남겨주세요." name="context"></textarea></td>
				</tr>

			</table>
	</form>	
			
			
			
			</div> <!-- main_top -->
			
			
			
			
			
			
			<div class="NOTI_Que_main_bottom">
			<h3 class="NOTI_Que_lable">내가 남긴 문의</h3>
			
			
				
			<table class="NOTI_Que_Table">	
			
				<tr>
					<td width="70px" class="NOTI_Que_title_effect">카테고리</td>
					<td width="330px" class="NOTI_Que_title_effect">제목</td>
					<td width="100px" class="NOTI_Que_title_effect">작성일</td>
					<td width="100px" class="NOTI_Que_title_effect">답변여부</td>
				</tr>
			
			
			
					<!-- for문 시작 -->
				<c:forEach items="${mywrite}" var="mywrite">
			
							<tr>
								<td>
				
									<c:choose>
										<c:when test="${mywrite.subsep eq 'inquiry_recipe'}">
											레시피
										</c:when>
										
										<c:when test="${mywrite.subsep eq 'inquiry_store'}">
											스토어
										</c:when>
										
										<c:when test="${mywrite.subsep eq 'inquiry_commu'}">
											커뮤니티
										</c:when>
										
										<c:otherwise>
											기타
										</c:otherwise>
									</c:choose>
				
								</td>
								<td><a href="directQue_detail?bno=${mywrite.bno}">${mywrite.title}</a></td>
								<td>${mywrite.reg_dt}</td>
								<td>답변여부</td>
						</tr>
		
		
				</c:forEach> <!-- for문 끝 -->
			</table>
		
				<!-- prevBtn(이전)이 true이면 이전버튼 활성화 -->
		<c:if test="${paging.prevBtn}">
			<a href="/directQue?sep=inquiry&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
		</c:if>
		
		
		<!-- begin(1)이 end(10)가 될 동안 반복 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
			<a href="/directQue?sep=inquiry&pageNum=${num}&amount=${paging.criteriaVO.amount}"> ${num} </a>
		</c:forEach>
		
		
		<!-- nextBtn(다음)이 true이면 다음버튼 활성화 -->
		<c:if test="${paging.nextBtn}">
			<a href="/directQue?sep=inquiry&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
		</c:if>
			
			</div> <!-- main_bottom -->
			</div> <!-- main_center -->
	
	
	
	</div>	<!-- main -->
	
</div>	<!-- container -->
<%@ include file="../Footer/footer.jsp"%>