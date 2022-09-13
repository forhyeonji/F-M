<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>
<%@ include file="../Notice/NoticeMenu.jsp"%>

	
			<div class="NOTI_Que_main_center">
			<div class="NOTI_Que_main_top">
			<label class="NOTI_notice_lable">1:1 문의</label>  <label>갠적으로 궁금해?~~</label> <br><br>
			111${list}222
	<form action="/directQue" method="post">		
			<table class="NOTI_Que_Table">
			
				<tr>	
					<td width="260px"> 연락처 <input type="text" placeholder="원하시는 분만 남겨주세요" class="NOTI_Tel" name="user_tel"> </td>
			
					<td>
						<select class="NOTI_Que_select" name="sep">
							<option value="inquiry_recipe">레시피 문의</option>
							<option value="inquiry_store">스토어 문의</option>
							<option value="inquiry_commu">커뮤니티 문의</option>
							<option value="inquiry_ect">기타 문의</option>
						</select>
					</td>
					
					<td>
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
				<c:forEach items="${list}" var="Notiboardlist">
			
							<tr>
								<td>
				
									<c:choose>
										<c:when test="${Notiboardlist.sep eq 'inquiry_recipe'}">
											레시피
										</c:when>
										
										<c:when test="${Notiboardlist.sep eq 'inquiry_store'}">
											스토어
										</c:when>
										
										<c:when test="${Notiboardlist.sep eq 'inquiry_commu'}">
											커뮤니티
										</c:when>
										
										<c:otherwise>
											기타
										</c:otherwise>
									</c:choose>
				
								</td>
								<td>${Notiboardlist.title}</td>
								<td>${Notiboardlist.reg_dt}</td>
								<td>답변여부</td>
						</tr>
		
		
				</c:forEach> <!-- for문 끝 -->
			</table>
			
			</div> <!-- main_bottom -->
			</div> <!-- main_center -->
	
	
	
	</div>	<!-- main -->
	
</div>	<!-- container -->
<%@ include file="../Footer/footer.jsp"%>