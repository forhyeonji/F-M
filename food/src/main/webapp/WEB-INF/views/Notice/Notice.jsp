<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>



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
		</div> <!-- main left -->
		
		
		<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">공지사항</label>  <label>어쩌고 저쩌고~</label> <br><br>
		
		<!-- 검색기능 -->
	<form action="/notice" id="searchForm" method="get">
	
		<select name="type">
			<option value="T">제목</option>
			<option value="C">내용</option>
			<option value="TC">제목+내용</option>
		</select>
		
	
		
		<input type="hidden" name="sep" value="공지">
		<input type="text" name="keyword">
		<input type="hidden" name="pageNum" value="${paging.criteriaVO.pageNum}">
		<input type="hidden" name="amount" value="${paging.criteriaVO.amount}">
		<input type="button" value="검색" id="searchBtn">
		
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
									<a href="notice_detail?bno=${Notiboardlist.bno}" style="color:red"><b>[중요] ${Notiboardlist.title}</b></a>
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
			<a href="/notice?sep=공지&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
		</c:if>
		
		
		<!-- begin(1)이 end(10)가 될 동안 반복 -->
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
			<a href="/notice?sep=공지&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${num}&amount=${paging.criteriaVO.amount}"> ${num} </a>
		</c:forEach>
		
		
		<!-- nextBtn(다음)이 true이면 다음버튼 활성화 -->
		<c:if test="${paging.nextBtn}">
			<a href="/notice?sep=공지&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
		</c:if>

		
		
		</div> <!-- main_center -->
	
	</div> <!-- main -->
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>