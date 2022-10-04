<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopDetail.css">
<script type="text/javascript"
	src="../../../resources/JS/Shop/shopDetail.js"></script>

<div class="answerAll">
	<div class="sh_write">
	<h2>답변 등록 페이지 입니다.</h2>
	<div class="sh_writemain">
	<table>
	
		<tr>
			<td class="sh_qnaans">제목</td>
			<td class="sh_qnaansdetail">${detail.title}</td>
		</tr>

		<tr>
			<td class="sh_qnaans">작성자</td>
			<td class="sh_qnaansdetail">${detail.user_id}</td>
		</tr>

		<tr>
			<td class="sh_qnaans">작성일자</td>
			<td class="sh_qnaansdetail">${detail.date}</td>
		</tr>



		<tr>
			<td colspan="2" class="sh_context"><p>${detail.context}</p></td>
		</tr>

	</table>

</div>
<!-- main_top -->

<c:choose>

	<c:when test="${chack!=null}">

		<div id="sh_ansbottom">

			<h3 class="sh_answe">답변</h3>

			<table class="sh_anstable">
				<tr>
					<td colspan="2" class="sh_TEXT">${check.context}</td>
				</tr>
			</table>

		</div>



	</c:when>
	<c:otherwise>

		<form action="/shopDetail" method="post">

			<div id="shopbtm">

				<h3 class="sh_answerchk">답변</h3>

				<table class="sh_table">
					<tr>
						<td colspan="2" class="shop_text"><textarea
								name="ans_context"
								class="sh_textarea"></textarea></td>
					</tr>
				</table>

			</div>
			<!-- main_bottom -->


			<div class="sh_ansbtn">
				<input type="submit" value="등록" class="shop_ok"> 
				<input type="hidden" value="${sessionScope.user_id}" name="ans_id"> 
				<input type="hidden" value="${detail.bno}" name="bno">
			</div>
			<!-- button -->

		</form>

	</c:otherwise>





</c:choose>





</div>
</div>
</body>
<%@ include file="../Footer/footer.jsp"%>