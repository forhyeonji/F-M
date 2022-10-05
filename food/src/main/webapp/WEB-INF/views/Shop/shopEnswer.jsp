<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopDetail.css">
<script type="text/javascript"
	src="../../../resources/JS/Shop/shopEnswer.js"></script>

<div class="answerAll">
	<div class="sh_write">
	<h2>답변 등록 페이지 입니다.</h2>
	<div class="sh_writemain">
	<table>
	
		<tr>
			<td class="sh_qnaans">제목</td>
			<td class="sh_qnaansdetail">
			${detail.title}
			</td>
		</tr>

		<tr>
			<td class="sh_qnaans">작성자</td>
			<td class="sh_qnaansdetail">
			${sessionScope.user_id}
			</td>
		</tr>
		<tr>
			<td colspan="2" class="sh_context">
			<p>${detail.context}</p>
			</td>
		</tr>

	</table>

</div>
<!-- main_top -->
		<form action="/shopEnswer" method="post">

			<div id="shopbtm">

				<h3 class="sh_answerchk">답변</h3>

				<table class="sh_table">
					<tr>
						<td colspan="2" class="shop_text">
							<textarea name="answer" class="sh_textarea"></textarea>
							<input type="text" value="${detail.bno}" name="bno">
							<input type="text" value="${detail.prodnum}" name="prodnum">
						</td>
					</tr>
				</table>

			</div>
			<!-- main_bottom -->


			<div class="sh_ansbtn">
				<input type="submit" value="등록" class="shop_ok"> 
				<input type="hidden" value="${sessionScope.user_id}" name="ans_id"> 
				<%-- <input type="hidden" value="${detail.bno}" name="bno"> --%>
			</div>
			<!-- button -->

		</form>
	</div>
</div>
</body>
<%@ include file="../Footer/footer.jsp"%>