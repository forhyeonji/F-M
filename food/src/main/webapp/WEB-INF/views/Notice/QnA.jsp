<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>
<%@ include file="../Notice/NoticeMenu.jsp"%>


		

		<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">자주하는 질문</label>  <label>어쩌고 저쩌고~</label> <br><br>
		<br>
		
		<!-- 검색기능 -->
		<form action="/QnA" id="searchForm" method="get">
		
			<input type="hidden" name="sep" value="qna">
			<input type="hidden" name="pageNum" value="${paging.criteriaVO.pageNum}">
			<input type="hidden" name="amount" value="${paging.criteriaVO.amount}">

		<div class="NOTI_searchbox">
			<select name="type" class="NOTI_select">
				<option value="T">제목</option>
				<option value="C">내용</option>
				<option value="TC">제목+내용</option>
			</select>
			
		
			
			<div class="NOTI_searchTd">
				<input type="text" name="keyword" class="NOTI_searchBar" placeholder="검색어를 입력해주세요.">
				<img src="../../../resources/image/HeaderImg/돋보기.jpg" class="NOTI_mag" id="searchBtn">
			</div>
		</div>
			
		</form>
		
		<!-- 검색기능 끝 -->
		<div class="NOTI_emptybox">
		</div>
		
		<c:if test="${user_id=='root' || user_id=='manager'}">
		<input type="button" class="NOTI_but" value="글쓰기" onclick="location.href='QnA_write'">
		</c:if>
		
		
		<hr>
		<table class="NOTI_Que_Table">
		<tr>
			<td height="520px" class="NOTI_title_effect">제목</td>
			<td height="120px" class="NOTI_title_effect">작성자</td>
			<td height="120px" class="NOTI_title_effect">작성일</td>
			<td height="30px" class="NOTI_title_effect">조회수</td>
		</tr>
		<!-- for문 시작 -->
		<c:forEach items="${list}" var="Notiboardlist">
	
					<tr>
						<td class="NOTI_list_title" class="NOTI_Que_title_effect">
		
							<c:choose>
								<c:when test="${Notiboardlist.boldtitle}">
									<a href="QnA_detail?bno=${Notiboardlist.bno}&sep=${Notiboardlist.sep}" style="color:red"><b>${Notiboardlist.title}</b></a>
								</c:when>
								<c:otherwise>
									<a href="QnA_detail?bno=${Notiboardlist.bno}&sep=${Notiboardlist.sep}" style="color:black">${Notiboardlist.title}</a>
								</c:otherwise>
							</c:choose>
		
						</td>
						<td class="NOTI_list_writer" class="NOTI_Que_title_effect">${Notiboardlist.user_id}</td>
						<td class="NOTI_list_regdate" class="NOTI_Que_title_effect">${Notiboardlist.reg_dt}</td>
						<td class="NOTI_list_no" class="NOTI_Que_title_effect">${Notiboardlist.cnt}</td>
				</tr>


		</c:forEach> <!-- for문 끝 -->
		</table>

	<div class="NOTI_page">
		
		<!-- prevBtn(이전)이 true이면 이전버튼 활성화 -->
		<c:if test="${paging.prevBtn}">
			<a href="/QnA?sep=qna&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}" class="NOTI_first"> << </a>
		</c:if>
		
		
		<!-- begin(1)이 end(10)가 될 동안 반복 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
			<a href="/QnA?sep=qna&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${num}&amount=${paging.criteriaVO.amount}" class="NOTI_num"> ${num} </a>
		</c:forEach>
		
		
		<!-- nextBtn(다음)이 true이면 다음버튼 활성화 -->
		<c:if test="${paging.nextBtn}">
			<a href="/QnA?sep=qna&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}" class="NOTI_last"> >> </a>
		</c:if>
		
	</div>	
		
		</div> <!-- main_center -->
	
	
	
	</div> <!-- main -->
</div> <!-- container -->

<%@ include file="../Footer/footer.jsp"%>