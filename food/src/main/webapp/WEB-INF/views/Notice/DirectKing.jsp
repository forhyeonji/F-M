<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>
<%@ include file="../Notice/NoticeMenu.jsp"%>
	
	
	<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">1:1 문의 관리자</label>  <label>내가 말해주께~~~</label> <br><br>
		<form id="searchForm" action="/directKing" method="get">
					<select class="NOTI_King_select" name="subsep" id="subselect">
						<option value="inquiry_total">전체 문의</option>
						<option value="inquiry_recipe" id="1">레시피 문의</option>
						<option value="inquiry_store" id="2">스토어 문의</option>
						<option value="inquiry_comm" id="3">커뮤니티 문의</option>
						<option value="inquiry_ect" id="4">기타 문의</option>
					</select>
					
					<input type="hidden" value="inquiry" name="sep">
		</form>
		
		
		<hr>	
		<table>	
		
			<tr class="NOTI_bar">
				<td width="70px" class="NOTI_Que_title_effect">카테고리</td>
				<td width="330px" class="NOTI_Que_title_effect">제목</td>
				<td width="100px" class="NOTI_Que_title_effect">작성일</td>
				<td width="100px" class="NOTI_Que_title_effect">답변여부</td>
			</tr>
			
			<!-- for문 시작 -->
		<c:forEach items="${list}" var="Notiboardlist">
	
					<tr>
						<td>
						
									<c:choose>
										<c:when test="${Notiboardlist.subsep eq 'inquiry_recipe'}">
											레시피
										</c:when>
										
										<c:when test="${Notiboardlist.subsep eq 'inquiry_store'}">
											스토어
										</c:when>
										
										<c:when test="${Notiboardlist.subsep eq 'inquiry_comm'}">
											커뮤니티
										</c:when>
										
										<c:otherwise>
											기타
										</c:otherwise>
									</c:choose>
				
						</td>
						
						<td>
								<a href="directKing_answer?bno=${Notiboardlist.bno}">${Notiboardlist.title}</a>
						</td>
						
						<td>${Notiboardlist.reg_dt}</td>
						<td>
		
						<c:choose>
			
							<c:when test="${Notiboardlist.ans_check!=false}">
								<span style="color:red"><b>응답완료</b></span>
							</c:when>
							
							<c:otherwise>
								<span style="color:gray">미완료</span>
							</c:otherwise>
						</c:choose>
						</td>
				</tr>

	
	
		</c:forEach> <!-- for문 끝 -->
		</table>
		
		
		<!-- prevBtn(이전)이 true이면 이전버튼 활성화 -->
		<c:if test="${paging.prevBtn}">
			<a href="/directKing?sep=inquiry&subsep=${paging.criteriaVO.subsep}&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}" id="prepage">이전</a>
		</c:if>
		
		
		<!-- begin(1)이 end(10)가 될 동안 반복 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
			<a href="/directKing?sep=inquiry&subsep=${paging.criteriaVO.subsep}&pageNum=${num}&amount=${paging.criteriaVO.amount}" class="nowpage"> ${num} </a>
		</c:forEach>
		
		
		<!-- nextBtn(다음)이 true이면 다음버튼 활성화 -->
		<c:if test="${paging.nextBtn}">
			<a href="/directKing?sep=inquiry&subsep=${paging.criteriaVO.subsep}&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}" id="nextpage">다음</a>
		</c:if>
		
		
	</div> <!-- main_center -->

	
</div> <!-- main -->
</div> <!-- container -->	

<%@ include file="../Footer/footer.jsp"%>