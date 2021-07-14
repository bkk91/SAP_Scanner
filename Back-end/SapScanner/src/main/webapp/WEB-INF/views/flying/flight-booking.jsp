<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header-search.jsp"%>
<!-- Header -->
<script src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js" />"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/encrypt/mine.js"></script>
	
<script>
	window.onload = function() {
		getUserInfo();
	}

	var referrer = document.referrer;
	function getUserInfo() {
		$.ajax({
			type : 'post',
			url : 'getUserInfo.do',
			data : {
				'referrer' : referrer
			},
			dataType : 'json',
			success : function(data) {
				var obj = JSON.parse(data);
				sessionCheck(obj);
			},
			error : function(e) {
				console.log(referrer);
				$('#btnLogin').trigger('click');
			}
		});
	}
	
	function encryptPayment(){
		// 암호화전 평문
		var cardName = $("#i_cardName").val();
		var cardNumber = $("#i_cardNumber").val();
		var expirationMonth = $("#i_expirationMonth").val();
		var expirationYear = $("#i_expirationYear").val();
		var cvs = $("#i_cvs").val();
		
		// 암호화키 생성
		var encryptKey = $("#encryptKey").val();
		console.log(cardName);
		console.log(cardNumber);
		console.log(expirationMonth);
		console.log(expirationYear);
		console.log(cvs);
		console.log(encryptKey);
		
		// 암호화 함수 호출
		var encrypt = encodingAll(cardNumber, expirationYear, expirationMonth, cvs, encryptKey);
		
		console.log(encrypt);

		$.ajax({
			type : 'post',
			url : 'payment/pay.do',
			data : {
				'encrypt' : encrypt,
				'encryptKey' : encryptKey,
				'cardName' : cardName
			},
			dataType : 'json',
			success : function(data) {
				console.log(data);
				location.href = "payment/payment-received.do";
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function payment() {
		$.ajax({
			type : 'post',
			url : 'payment/pay.do',
			dataType : 'text',
			data : $('#hiddenForm').val(),
			success : function(data) {
				console.log(data);
				location.href = "payment/payment-received.do";
			},
			error : function(e) {
				console.log(e);
			}
		});
	}
</script>

<style>
/*== payment_btn 수정 == */
.payment_btn {
	font-size: 15px;
	color: #fff;
	line-height: 45px;
	padding-left: 20px;
	padding-right: 20px;
	background-color: #287dfa;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
	position: relative;
	display: inline-block;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	border: 1px solid #287dfa;
	font-weight: 500;
}

.payment_btn:hover {
	background-color: #fff;
	color: #287dfa;
}

/*=== payment_btn-small ====*/
.payment_btn-small {
	line-height: 35px;
	padding-left: 15px;
	padding-right: 15px;
}
</style>

<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area bread-bg-6">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="breadcrumb-content">
						<div class="section-heading">
							<h2 class="sec__title text-white">항공권 예약</h2>
						</div>
					</div>
					<!-- end breadcrumb-content -->
				</div>
				<!-- end col-lg-6 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end breadcrumb-wrap -->
	<div class="bread-svg-box">
		<svg class="bread-svg" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 100 10" preserveAspectRatio="none">
                <polygon points="100 0 50 10 0 0 0 10 100 10"></polygon>
            </svg>
	</div>
	<!-- end bread-svg -->
</section>
<!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
    START BOOKING AREA
================================= -->
<section class="booking-area padding-top-100px padding-bottom-70px">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="form-box">
					<div class="form-title-wrap">
						<h3 class="title">개인 정보</h3>
					</div>
					<!-- form-title-wrap -->
					<div class="form-content">
						<div class="contact-form-action">
							<!-- <form method="post"> -->
							<div class="row">
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">이름</label>
										<div class="form-group">
											<span class="la la-user form-icon"></span> <input
												class="form-control" type="text" name="text"
												value="<c:out value="${userDetail.userName}"/>">
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">성(SEX)</label>
										<div class="form-group">
											<span class="la la-user form-icon"></span> <input
												class="form-control" type="text" name="text"
												value="<c:out value="${userDetail.userGender}"/>">
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">이메일</label>
										<div class="form-group">
											<span class="la la-envelope-o form-icon"></span> <input
												class="form-control" type="email" name="email"
												value="<c:out value="${userDetail.userEmail}"/>">
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">휴대폰 번호</label>
										<div class="form-group">
											<span class="la la-phone form-icon"></span> <input
												class="form-control" type="text" name="text"
												value="<c:out value="${userDetail.userMobile}"/>">
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-12">
									<div class="input-box">
										<label class="label-text">주소</label>
										<div class="form-group">
											<span class="la la-map-marked form-icon"></span> <input
												class="form-control" type="text" name="text"
												value="<c:out value="${userDetail.userAddress}"/>">
										</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">국가</label>
										<div class="form-group">
											<div class="select-contain w-auto">
												<select class="select-contain-select">
													<option value="select-country">국가 선택</option>
													<option value="Armenia">대한민국</option>
													<option value="Aruba">미국</option>
													<option value="Australia">중국</option>
													<option value="Austria">일본</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-6 responsive-column">
									<div class="input-box">
										<label class="label-text">국가 코드</label>
										<div class="form-group">
											<div class="select-contain w-auto">
												<select class="select-contain-select">
													<option value="country-code">국가 코드 선택</option>
													<option value="1">Republic of Korea (+82)</option>
													<option value="2">United States (+1)</option>
													<option value="3">Japan (+81)</option>
													<option value="4">China (+86)</option>
													<option value="5">Taiwan (+886)</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<!-- end col-lg-6 -->
								<div class="col-lg-12">
									<div class="input-box">
										<div class="custom-checkbox mb-0">
											<input type="checkbox" id="receiveChb"> <label
												for="receiveChb">프로모션 정보를 구독하려면 체크해주세요.</label>
										</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
							</div>
							<!-- </form> -->
						</div>
						<!-- end contact-form-action -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
				<div class="form-box">
					<div class="form-title-wrap">
						<h3 class="title">결제 > 신용카드 정보</h3>
					</div>
					<!-- form-title-wrap -->
					<div class="form-content">
						<div class="section-tab check-mark-tab text-center pb-4">
							<ul class="nav nav-tabs justify-content-center" id="myTab"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="credit-card-tab" data-toggle="tab" href="#credit-card"
									role="tab" aria-controls="credit-card" aria-selected="false">
										<i class="la la-check icon-element"></i> <img
										src="${pageContext.request.contextPath}/images/payment-img.png"
										alt=""> <span class="d-block pt-2">신용카드 결제</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="paypal-tab"
									data-toggle="tab" href="#paypal" role="tab"
									aria-controls="paypal" aria-selected="true"> <i
										class="la la-check icon-element"></i> <img
										src="${pageContext.request.contextPath}/images/payment-img1.png"
										alt=""> <span class="d-block pt-2">카카오페이 결제</span>
								</a></li>
							</ul>
						</div>
						<!-- end section-tab -->
						<!--  결제정보 암호화 -->
						<div class="tab-content">
							<div class="tab-pane fade show active" id="credit-card"
								role="tabpanel" aria-labelledby="credit-card-tab">
								<div class="contact-form-action">
									<form role="form" method="post" id="hiddenForm"
										name="hiddenForm">
										<div class="row">
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">카드 소유자 이름</label> <input
														type="hidden" id="encryptKey" value="${encryptKey}" /> 
													<div class="form-group">
														<span class="la la-credit-card form-icon"></span> <input
															class="form-control" type="text" name="m_cardName"
															id="i_cardName" placeholder="이름">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">카드 번호</label>
													<div class="form-group">
														<span class="la la-credit-card form-icon"></span> <input
															class="form-control" type="text" name="m_cardNumber"
															id="i_cardNumber" placeholder="번호">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="row">
													<div class="col-lg-6 responsive-column">
														<div class="input-box">
															<label class="label-text">만료 (월)</label>
															<div class="form-group">
																<span class="la la-credit-card form-icon"></span> <input
																	class="form-control" type="text"
																	name="m_expirationMonth" id="i_expirationMonth"
																	placeholder="01-12">
															</div>
														</div>
													</div>
													<div class="col-lg-6 responsive-column">
														<div class="input-box">
															<label class="label-text">만료 (년)</label>
															<div class="form-group">
																<span class="la la-credit-card form-icon"></span> <input
																	class="form-control" type="text"
																	name="m_expirationYear" id="i_expirationYear"
																	placeholder="00-99">
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">CVS</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="m_cvs" id="i_cvs"
															placeholder="000">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="input-box">
													<div class="form-group">
														<div class="custom-checkbox">
															<input type="checkbox" id="agreechb"> <label
																for="agreechb">진행하려면 이용약관에 체크해주세요 <a href="#">이용
																	약관</a>
															</label>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-12 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button type="button" class="payment_btn"
														onclick="encryptPayment();">예약 확인</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
							<div class="tab-pane fade" id="paypal" role="tabpanel"
								aria-labelledby="paypal-tab">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">Email Address</label>
													<div class="form-group">
														<span class="la la-envelope form-icon"></span> <input
															class="form-control" type="email" name="email"
															placeholder="Enter email address">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">Password</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Enter password">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" class="" type="submit">Login
														Account</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
							<div class="tab-pane fade" id="payoneer" role="tabpanel"
								aria-labelledby="payoneer-tab">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">Email Address</label>
													<div class="form-group">
														<span class="la la-envelope form-icon"></span> <input
															class="form-control" type="email" name="email"
															placeholder="Enter email address">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">Password</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Enter password">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" type="submit">Login
														Account</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
						</div>
						<!-- end tab-content -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
			</div>
			<!-- end col-lg-8 -->
			<div class="col-lg-4">
				<div class="form-box booking-detail-form">
					<div class="form-title-wrap">
						<h3 class="title">예약 상세보기</h3>
					</div>
					<!-- end form-title-wrap -->
					<div class="form-content">
						<div class="card-item shadow-none radius-none mb-0">
							<div class="card-img pb-4">
								<a href="flight-single.html" class="d-block"> <img
									src="${pageContext.request.contextPath}/images/planeimg.jpg"
									alt="plane-img">
								</a>
							</div>
							<div class="card-body p-0">
								<div class="d-flex justify-content-between">
									<div>
										<h3 class="card-title">
											<c:out value="${printList.arrCityNm}" />
											to
											<c:out value="${printList.depCityNm}" />
										</h3>
										<p class="card-meta">
											<c:out value="${printList.way}" />
										</p>
									</div>
								</div>
								<div class="card-rating">
									<span class="badge text-white">4.4/5</span> <span
										class="review__text">항공사 평점</span>
								</div>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 list-items-flush py-2">
									<li class="font-size-15"><span
										class="w-auto d-block mb-n1"><i
											class="la la-plane mr-1 font-size-17"></i>이륙시간</span> <c:out
											value="${printList.depPlandTime}" /></li>
									<li class="font-size-15"><i
										class="la la-clock-o mr-1 text-black font-size-17"></i>소요시간<c:out
											value="  ${printList.duration}" /></li>
									<li class="font-size-15"><span
										class="w-auto d-block mb-n1"><i
											class="la la-plane mr-1 font-size-17"></i>착륙시간</span> <c:out
											value="${printList.arrPlandTime}" /></li>
								</ul>
								<!--  왕복항공권 이면 출력하라 -->

								<c:if test='${printList.arrCityNm eq printList.depCityNm2}'>
									<div class="d-flex justify-content-between">
										<div>
											<h3 class="card-title">
												<c:out value="${printList.arrCityNm2}" />
												to
												<c:out value="${printList.depCityNm2}" />
											</h3>
										</div>
									</div>
									<div class="section-block"></div>
									<ul class="list-items list-items-2 list-items-flush py-2">
										<li class="font-size-15"><span
											class="w-auto d-block mb-n1"><i
												class="la la-plane mr-1 font-size-17"></i>이륙시간</span> <c:out
												value="${printList.depPlandTime2}" /></li>
										<li class="font-size-15"><i
											class="la la-clock-o mr-1 text-black font-size-17"></i>소요시간<c:out
												value="  ${printList.duration2}" /></li>
										<li class="font-size-15"><span
											class="w-auto d-block mb-n1"><i
												class="la la-plane mr-1 font-size-17"></i>착륙시간</span> <c:out
												value="${printList.arrPlandTime2}" /><br> <br></li>
									</ul>
								</c:if>
								<h3 class="card-title pb-3">결제 상세내용</h3>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 py-3">
									<li><span>항공사</span> <c:out value="${printList.airLineNm}" /></li>
									<li><span>좌석 등급:</span> <c:out
											value="${printList.currentSeatGrade}" /></li>
									<li><span>정가 가격(1인)</span> <c:out
											value="${printList.price1} " />원</li>
									<li><span>탑승인원:</span> <c:out value="${printList.count}" />인</li>
									<c:if test='${printList.arrCityNm eq printList.depCityNm2}'>
										<li><span>항공사</span> <c:out
												value="${printList.airLineNm2}" /></li>
										<li><span>좌석 등급:</span> <c:out
												value="${printList.currentSeatGrade}" /></li>
										<li><span>정가 가격(1인)</span> <c:out
												value="${printList.price2} " />원</li>
										<li><span>탑승인원:</span> <c:out value="${printList.count}" />인</li>
									</c:if>
								</ul>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 pt-3">
									<li><span>*성수기 할인 적용 <br> 예약가격
									</span> <c:out value="${printList.sum} " />원</li>
									<li><span>회원 할인율</span> <c:out
											value="${printList.discount} " />원</li>
									<li><span>결제가격</span> <c:out
											value="${printList.discountSum} " />원</li>
								</ul>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end booking-area -->
<!-- ================================
    END BOOKING AREA
================================= -->

<div class="section-block"></div>
<!-- Footer -->
<%@include file="../include/footer-search.jsp"%>
