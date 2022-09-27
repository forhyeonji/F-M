<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- main 전체 -->
			<div id="test">
				<div id="main">
					<div id="cnt">
						<div id="cnt_header">
							<div id="cnt-header_left">
								<img id="img" src="/Shopdisplay?filename=${main.filename}">
							</div>
							<div id="box">
								<div id="cnt-header_right">
									<div id="title_header">
										<div id="detail_name">
											<h2>${ShopVO.NAME}</h2>
										</div>
										<div id="price">
											<span>${ShopVO.discountprice}원</span>											
										</div>
									</div>
									<div id="shipping">
										<div>
											<span class="title"><b>배송방법</b></span><span>택배</span>
										</div>
										<div>
											<span class="title"><b>배송비</b></span><span>무료(50,000원
												이상 무료배송)</span>
										</div>
										<div>
											<span class="title"><b>배송 안내</b></span><br> <span>무료배송/제주도25,000원
												추가/도서산간50,000원 추가/반품 및 교환비50,000원</span>
										</div>
									</div>									
									<div id="bun">										
										<button type="button" id="plus" class="but" value="-">-</button>
										<input type="text" id="Quantity" class="but" value="1">
										<button type="button" id="minus" class="but" value="+">+</button>
										<span>원</span>
									</div>
									<div id="sum">
										<strong>총 상품 금액</strong>
										<div id="sum2">
											<em>총 수량 개</em> <strong>원</strong>
										</div>
									</div>
									<div>
										<input type="submit" id="purchase" value="구매하기" formaction="#">
									</div>
									<br>
									<div id="list">
										<input id="inquiry" type="submit" value="문의하기" formaction="#">
										<input id="wish" type="submit" value="찜하기" formaction="#">
										<input id="basket" type="submit" value="장바구니" formaction="#">
									</div>
								</div>
							</div>
						</div>

						<!-- 상품 설명,리뷰,문의,배송 전체 -->
						<div id="btfTab" class="tab">
							<!-- 상품 상세 메뉴 -->
							<div id="slidemenu">
								<ul id="tab-titles">
									<li name="detail"><a href="#product-detail">상세정보</a></li>
									<li name="review"><a href="#product-review">구매평</a></li>
									<li name="qna"><a href="#product-qna">상품문의 <span
											class="product-tab-review-count">(0)</span>
									</a></li>
									<li name="etc"><a href="#product-etc">배송/반품/교환 안내</a></li>
								</ul>
							</div>
							<!-- 상품 설명,리뷰,문의,배송 전체 배치 -->
							<ul class="tab-contents">
								<c:forEach items="${sub}" var="sub">
									<!-- 상품 설명 -->
									<li id="product-detail"><img
										src="/Shopdisplay?filename=${sub.filem}"></li>
								</c:forEach>
								<li id="product-review"></li>
								<li id="product-qna"></li>
								<li id="product-etc"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- main 끝 -->
</body>
</html>