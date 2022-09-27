<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- main ��ü -->
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
											<span>${ShopVO.discountprice}��</span>											
										</div>
									</div>
									<div id="shipping">
										<div>
											<span class="title"><b>��۹��</b></span><span>�ù�</span>
										</div>
										<div>
											<span class="title"><b>��ۺ�</b></span><span>����(50,000��
												�̻� ������)</span>
										</div>
										<div>
											<span class="title"><b>��� �ȳ�</b></span><br> <span>������/���ֵ�25,000��
												�߰�/�����갣50,000�� �߰�/��ǰ �� ��ȯ��50,000��</span>
										</div>
									</div>									
									<div id="bun">										
										<button type="button" id="plus" class="but" value="-">-</button>
										<input type="text" id="Quantity" class="but" value="1">
										<button type="button" id="minus" class="but" value="+">+</button>
										<span>��</span>
									</div>
									<div id="sum">
										<strong>�� ��ǰ �ݾ�</strong>
										<div id="sum2">
											<em>�� ���� ��</em> <strong>��</strong>
										</div>
									</div>
									<div>
										<input type="submit" id="purchase" value="�����ϱ�" formaction="#">
									</div>
									<br>
									<div id="list">
										<input id="inquiry" type="submit" value="�����ϱ�" formaction="#">
										<input id="wish" type="submit" value="���ϱ�" formaction="#">
										<input id="basket" type="submit" value="��ٱ���" formaction="#">
									</div>
								</div>
							</div>
						</div>

						<!-- ��ǰ ����,����,����,��� ��ü -->
						<div id="btfTab" class="tab">
							<!-- ��ǰ �� �޴� -->
							<div id="slidemenu">
								<ul id="tab-titles">
									<li name="detail"><a href="#product-detail">������</a></li>
									<li name="review"><a href="#product-review">������</a></li>
									<li name="qna"><a href="#product-qna">��ǰ���� <span
											class="product-tab-review-count">(0)</span>
									</a></li>
									<li name="etc"><a href="#product-etc">���/��ǰ/��ȯ �ȳ�</a></li>
								</ul>
							</div>
							<!-- ��ǰ ����,����,����,��� ��ü ��ġ -->
							<ul class="tab-contents">
								<c:forEach items="${sub}" var="sub">
									<!-- ��ǰ ���� -->
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
			<!-- main �� -->
</body>
</html>