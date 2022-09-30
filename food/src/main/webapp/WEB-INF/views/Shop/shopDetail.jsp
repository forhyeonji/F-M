<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopDetail.css">
	<script type="text/javascript"	src="../../../resources/JS/Shop/shopDetail.js"></script>

	<div class="shopall">
		<ul class=" sh_me">
			<li><a href="#" class="sh_a">Category</a>

				<ul class="sh_submenu">
					<li><a href="http://localhost:8080/shopconer" class="sh_a">meat</a></li>
					<li><a href="#" class="sh_a">vagetable</a></li>
					<li><a href="#" class="sh_a">fruit</a></li>
					<li><a href="#" class="sh_a">fish</a></li>
					<li><a href="#" class="sh_a">juice</a></li>
				</ul></li>

			<li><a href="#" class="sh_a">New</a></li>
		</ul>

		<!-- main 전체 -->
		<div id="test">
			<div id="main">
				<div id="cnt">
					<div id="cnt_header">
						<div id="cnt-header_left">
							<img id="sh_img_cab" src="/Shopdisplay?fileName=${main.filename}">
						</div>
						<div id="box">
							<div id="cnt-header_right">
								<div id="title_header">
									<div id="detail_name">
										<h2>${main.NAME}</h2>
									</div>
									<div id="sh_subcontent">
										<span>${main.subcontent}</span>
									</div>
									<div id="price">
										<span>${main.discountprice}원</span>
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
										<span class="title"><b>배송 안내</b></span><br> <span>배송비
											3000원/제주도25,000원 추가/도서산간50,000원 추가/반품 및 교환비50,000원</span>
									</div>
								</div>

								<hr id="sh_boundary">
								<div class="sh_pacakge">
									<p>포장타입 :</p>
									<br>
									<p id="sh_ice">${main.packaging}</p>
								</div>

								<hr id="sh_boundary">
								<div class="sh_pacakge">
									<p>판매단위 :</p>
									<p id="sh_unit">${main.unit}</p>
								</div>
								<hr id="sh_boundary">
								<div class="sh_pacakge">
									<p>원산지:</p>
									<p id="sh_Origin">${main.origin}</p>
								</div>

								<div id="bun">
									<button type="button" id="plus" class="but" value="-">-</button>
									<input type="text" id="Quantity" class="but" value="1">
									<button type="button" id="minus" class="but" value="+">+</button>
									<span>개</span>
								</div>
								<div id="sh_sum">
									<div id="sh_sum2">
										<em>총 수량 개</em>
									</div>
									<div id="sh_allsum">
										<strong>총 상품 금액</strong> <strong>원</strong>
									</div>
								</div>

								<br>
								<div id="sh_list">
									<input id="sh_inquiry" type="submit" value="좋아요" formaction="#">
									<input id="sh_wish" type="submit" value="찜하기" formaction="#">
									<input id="sh_basket" type="submit" value="장바구니" formaction="#">
								</div>
							</div>
						</div>
					</div>

					<!-- 상품 설명,리뷰,문의,배송 전체 -->
					<div id="btfTab" class="tab">
						<!-- 상품 상세 메뉴 -->
						<div id="sh_slidemenu">
							<ul id="tab-titles">
								<li name="detail"><a href="#product-CONTNET">상품설명</a></li>
								<li name="etc"><a href="#product-detail">상세정보</a></li>
								<li name="review"><a href="#product-review">후기</a></li>
								<li name="qna"><a href="#product-qna">상품문의 <span
										class="product-tab-review-count">(0)</span>
								</a></li>
							</ul>
						</div>
						<!-- 상품 설명,리뷰,문의,배송 전체 배치 -->
						<ul class="tab-contents">

							<!-- 상품 설명 -->
							<li id="product-CONTENT"><img id="sh_subimg"
								src="/Shopdisplay?fileName=${sub[0].filename}"></li>
							<li id="product-CONTENT">${main.CONTENT}</li>

							<!-- 상품상세설명 -->
							<li id="product-review">
								<section>
									<article
										class="sdp-review__article__list js_reviewArticleReviewList">
										<h4 class="prod-inquiry-list__title">상품상세 정보</h4>
										<c:forEach items="${sub}" var="sub" varStatus="status">
											<c:if test="${status.index != 0}">
												<li id="product-detail"><img id="sh_subimg"
													src="/Shopdisplay?fileName=${sub.filename}"></li>
											</c:if>
										</c:forEach>

										<li id="product-detail">${main.detail}</li>
									</article>
								</section>
							</li>

							<!-- 상품 문의 영역 -->
							<li id="product-qna">
								<div id="prod-inquiry-list" class="prod-tab">
									<div class="prod-inquiry-list">
										<div class="clearFix">
											<h4 class="prod-inquiry-list__title">상품문의</h4>
											<div class="prod-inquiry-list__emphasis">
												<ul>
													<li>구매한 상품의 <em>취소/반품은 구매내역에서 신청</em> 가능합니다.
													</li>
													<li>상품문의 및 후기게시판을 통해 취소나 환불, 반품 등은 처리되지 않습니다.</li>
													<li><em>가격, 판매자, 교환/환불 및 배송 등 해당 상품 자체와 관련 없는 문의는
															고객센터 내 1:1 문의하기</em>를 이용해주세요.</li>
													<li><em>"해당 상품 자체"와 관계없는 글, 양도, 광고성, 욕설, 비방, 도배
															등의 글은 예고 없이 이동, 노출제한, 삭제 등의 조치가 취해질 수 있습니다.</em></li>
													<li>공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지
														말아주세요.</li>
												</ul>
											</div>
											<!-- 후기 쓰는 부분 -->
											<div class="prod-inquiry-list__container">
												<div class="prod-inquiry-items">
													<div class="prod-inquiry-item">



														<form action="/shopDetail" method="post">
															<table class="sh_qnatb">

																<tr>
																	<td colspan="3">제목: <input type="text"
																		id="sh_qna_title" name="title"></td>
																</tr>

																<tr>
																	<td colspan="3" height="400px" width="750px"><textarea
																			class="sh_qna_Textarea" name="context"></textarea></td>
																</tr>

																<tr>
																	<td>
																		<input type="hidden" value="${sessionScope.id}" name="id">
																		<input type="hidden" value="${main.prodnum}" name="prodnum">
																		<input type="submit" class="sh_signup" value="등록"></td>

																</tr>

															</table>
														</form>
													</div>
													<!-- main_top -->
													<div class="product-qna_sub">
														<h3 class="sh_myquestion">나의 문의</h3>
														<table class="sh_qnatb">

															<tr>
																<td width="120px" class="sh_qnasub">제목</td>
																<td width="120px" class="sh_qnasub">내용</td>
																<td width="120px" class="sh_qnasub">작성일</td>
																<td width="120px" class="sh_qnasub">답변여부</td>
															</tr>
														</table>
															<div>
															<!-- for문 시작 -->
															<c:forEach items="${detail}" var="detail">
																   <div class="que">
																     <a href="shopDetail?bno=${detail.bno}" class="sh_title_check">
																			<span>${detail.title}</span>
																		</a>														      
																     </div>
																     <div class="anw">
																      	<a href="shopDetail?bno=${detail.bno}" class="sh_context_check">
																			<span>${detail.context}</span><br>
																			<span>관리자 답변</span>
																		</a>
																		<!-- <input type="button" value="답변등록" class="answerbtn"> -->
																     </div>
<%-- 																     <div class="ans">
																     	<a href="shopDetail?bno=${detail.bno}" class="sh_answer_check">
																			
																		</a>
																     </div> --%>
<%-- 																<tr>
																	
																	<td class="sh_title_aco">
																		<a href="shopDetail?bno=${detail.bno}" class="sh_title_check">
																		<a href="#" class="sh_title_check">
																			<span>${detail.title}</span>
																		</a>
																	</td>
																	
																	<td class="down">
																		<a href="shopDetail?bno=${detail.bno}" class="sh_context_check">
																			<span>${detail.context}</span>
																		</a>
																	</td>
																	
																	<td class="sh_date_check">${detail.date}</td>
																	<td class="sh_title_check"><c:choose>

																			<c:when test="${detail.chack!=false}">
																				<span style="color: red"><b>응답완료</b></span>
																			</c:when>

																			<c:otherwise>
																				<span style="color: gray">미완료</span>
																			</c:otherwise>
																		</c:choose></td>
																</tr>
 --%>
 																
															</c:forEach>
														    </div>
															<!-- for문 끝 -->


														<div class="Shoppage">
															<!-- 이전버튼 -->
															<c:if test="${paging.prevBtn}">
																<a
																	href="/shopDetail?sep=shop&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
															</c:if>

															<!-- 페이지번호 -->
															<c:forEach begin="${paging.startPage }"
																end="${paging.endPage }" var="sh_num">
																<a
																	href="/shopDetail?sep=shop&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${sh_num}&amount=${paging.criteriaVO.amount}">${sh_num}</a>
															</c:forEach>

															<!-- 다음버튼 -->
															<c:if test="${paging.nextBtn}">
																<a
																	href="/shopDetail?sep=shop&type=${paging.criteriaVO.type}&keyword=${paging.criteriaVO.keyword}&pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
															</c:if>
														</div>
													</div>
												</div>
											</div>

											<!-- 페이징 부분
											<div class="prod-inquiry-list__pagination" data-current="1"
												data-total="5">
												<a
													class="prod-inquiry-list__pagination__btn
                      prod-inquiry-list__pagination__btn--prev"
													href="javascript:;" data-page="1">이전</a> <a
													class="prod-inquiry-list__pagination__item
                          active"
													href="javascript:;" data-page="1">1</a> <a
													class="prod-inquiry-list__pagination__item
                          "
													href="javascript:;" data-page="2">2</a> <a
													class="prod-inquiry-list__pagination__item
                          "
													href="javascript:;" data-page="3">3</a> <a
													class="prod-inquiry-list__pagination__item
                          "
													href="javascript:;" data-page="4">4</a> <a
													class="prod-inquiry-list__pagination__item
                          "
													href="javascript:;" data-page="5">5</a> <a
													class="prod-inquiry-list__pagination__btn
                      prod-inquiry-list__pagination__btn--next"
													href="javascript:;" data-page="5">다음</a>
											</div> -->
										</div>
									</div>
								</div>
							</li>


							<li id="product-etc">
								<h5 class="prod-title">배송정보</h5>
								<table class="prod-table">
									<colgroup>
										<col width="150px">
										<col width="340px">
										<col width="150px">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>배송방법</th>
											<td>순차배송</td>
											<th rowspan="2">배송비</th>
											<td rowspan="2">무료배송<br>배송 상품 중 30,000원 이상 구매 시 무료
												배송<br>도서산간 지역 추가비용 10,000원
											</td>
										</tr>
										<tr>
											<th>묶음배송 여부</th>
											<td>가능</td>
										</tr>
										<tr>
											<th class="prod-period">배송기간</th>
											<td colspan="3"><ul>
													<li><span>ㆍ배송 지역 : 주문 및 결제 완료 후, 1-2일 이내 도착</span></li>
													<li><span>ㆍ 미배송 지역 : 주문 및 결제 완료 후, 2-3일 이내 도착</span>
														<p>-도서 산간 지역 등은 하루가 더 소요될 수 있습니다. 곧 고객님께도 푸렌드가 찾아갈 수
															있도록 노력하겠습니다</p></li>
													<li>ㆍ천재지변, 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해
														부탁드립니다.</li>
												</ul>
										</tr>
									</tbody>
								</table>

								<h5 class="prod-title">교환/반품 안내</h5>
								<ul class="prod-notice">
									<li>ㆍ교환/반품에 관한 일반적인 사항은 판매자가 제시사항보다 관계법령이 우선합니다.<br>다만,
										판매자의 제시사항이 관계법령보다 소비자에게 유리한 경우에는 판매자 제시사항이 적용됩니다.
									</li>
								</ul>
								<table class="prod-table">
									<colgroup>
										<col width="160px;">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>교환/반품 비용</th>
											<td>1) [총 주문금액] - [반품 상품금액] = 19,800원 미만인 경우 반품비 5,000원<br>2)
												[총 주문금액] - [반품 상품금액] = 19,800원 이상인 경우 반품비 2,500원
											</td>
										</tr>
										<tr>
											<th>교환/반품 신청 기준일</th>
											<td>
												<p>ㆍ단순변심에 의한 로켓배송 상품의 교환/반품은 제품 수령 후 30일 이내까지, 교환/반품
													제한사항에 해당하지 않는 경우에만 가능 (교환/반품 비용 고객부담)</p>
												<p>
													ㆍ상품의 내용이 표시·광고의 내용과 다른 경우에는 상품을 수령한 날부터 3개월 이내, 그 사실을 안 날
													또는 알 수 있었던 날부터<br> <span class="prod-indent">30일
														이내에 청약철회 가능</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>

								<h5 class="prod-title">교환/반품 제한사항</h5>
								<ul class="prod-list">
									<li>ㆍ상품 포장을 개봉하여 상품의 가치가 훼손된 경우 (단,이중포장의 경우 속 포장지까지 제거한
										경우만 해당)</li>
									<li>ㆍ 시간경과, 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
								</ul>
								<p class="prod-text">※ 각 상품별로 아래와 같은 사유로 취소/반품이 제한될 수 있습니다.</p>
								<table class="prod-table">
									<colgroup>
										<col width="150px">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>01. 상품에 문제가 있는 경우</th>
											<td>
												<p>ㆍ받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월
													이내,</p> <span>※ 상품에 문제가 있는 것으로 확인되면 배송비는 "푸렌드"가 부담합니다.</span>
											</td>
										</tr>
										<tr>
											<th>02. 단순 변심, 주문 착오의 경우</th>
											<td>
												<p>ㆍ신선/냉장/냉동 식품의 단순변심의 경우</p> <span>재판매가 불가한 상품의 특성상,
													단순 변심, 주문 착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다.</span>
												<p>
													ㆍ유통기한 30일 이상 식품 (신선 / 냉장 / 냉동 제외) & 기타 상품<br> <span>상품을
														받은 날부터 7일 이내에 고객행복센터로 문의해주세요.</span>
												</p> <span id="sh_cssprod">※ 단순 변심으로 인한 교환 또는 환불의 경우
													고객님께서 배송비 6,000원을 부담하셔야 합니다.</span>
											</td>
										</tr>
										<tr>
											<th>03. 교환·반품이 불가한 경우</th>
											<td>
												<p>다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.</p> <span>고객님의
													책임 있는 사유로 상품이 멸실되거나 훼손된 경우</span><br> <span>고객님의 사용 또는
													일부 소비로 상품의 가치가 감소한 경우</span><br> <span>시간이 지나 다시 판매하기
													곤란할 정도로 상품의 가치가 감소한 경우</span><br> <span>복제가 가능한 상품의
													포장이 훼손된 경우</span>
											</td>
										</tr>

									</tbody>
								</table>
								<div class="product-seller">
									<p class="prod-delivery-return-policy-title">판매자 정보</p>
									<table class="prod-delivery-return-policy-table">
										<colgroup>
											<col width="150px">
											<col width="*">
										</colgroup>
										<tbody>
											<tr>
												<th>판매자</th>
												<td>홍길동 <a
													class="prod-delivery-return-policy-table__phone-link"
													href="tel:+8215777011" target="_blank">0000-0000</a>
												</td>
											</tr>
										</tbody>
									</table>

									<p class="prod-minor-notice">미성년자가 체결한 계약은 법정대리인이 동의하지 않는
										경우 본인 또는 법정대리인이 취소할 수 있습니다.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- main 끝 -->
	</div>

</body>
</html>