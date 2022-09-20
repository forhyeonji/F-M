<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>
<%@ include file="../Notice/NoticeMenu.jsp"%>
	
		
		<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">공지사항</label>  <label>어쩌고 저쩌고~</label> <br><br>
		<br>
		<!-- 검색기능 -->
	<form action="/notice" id="searchForm" method="get">
	
		
		
	
		<input type="hidden" name="pageNum" value="${paging.criteriaVO.pageNum}">
		<input type="hidden" name="amount" value="${paging.criteriaVO.amount}">
		<input type="hidden" name="sep" value="noti">
		
		
		
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
		
		<input type="button" class="NOTI_but" value="글쓰기" onclick="location.href='http://localhost:8080/notice_write'">
		<hr>
		<table class="NOTI_Table">
		<tr class="NOTI_bar">
			<td class="NOTI_QnA_no" class="NOTI_title_effect">No</td>
			<td class="NOTI_QnA_title" class="NOTI_title_effect">제목</td>
			<td class="NOTI_QnA_writer" class="NOTI_title_effect">작성자</td>
			<td class="NOTI_QnA_regdate" class="NOTI_title_effect">작성일</td>
		</tr>
		
		<!-- for문 시작 -->
		<c:forEach items="${list}" var="Notiboardlist">
	
					<tr>
						<td class="NOTI_list_no">${Notiboardlist.bno}</td>
						<td class="NOTI_list_title">
		
							<c:choose>
								<c:when test="${Notiboardlist.boldtitle}">
									<a href="notice_detail?bno=${Notiboardlist.bno}" style="color:red"><b>${Notiboardlist.title}</b></a>
								</c:when>
								<c:otherwise>
									<a href="notice_detail?bno=${Notiboardlist.bno}" style="color:black">${Notiboardlist.title}</a>
								</c:otherwise>
							</c:choose>
		
						</td>
						<td class="NOTI_list_writer">${Notiboardlist.user_id}</td>
						<td class="NOTI_list_regdate">${Notiboardlist.reg_dt}</td>
				</tr>


		</c:forEach> <!-- for문 끝 -->
		</table>
		

		
		<!-- prevBtn(이전)이 true이면 이전버튼 활성화 -->
		<c:if test="${paging.prevBtn}">
			<a href="/notice?sep=noti&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
		</c:if>
		
		
		<!-- begin(1)이 end(10)가 될 동안 반복 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
			<a href="/notice?sep=noti&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${num}&amount=${paging.criteriaVO.amount}"> ${num} </a>
		</c:forEach>
		
		
		<!-- nextBtn(다음)이 true이면 다음버튼 활성화 -->
		<c:if test="${paging.nextBtn}">
			<a href="/notice?sep=noti&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
		</c:if>

		
		
		</div> <!-- main_center -->
	
	</div> <!-- main -->
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>