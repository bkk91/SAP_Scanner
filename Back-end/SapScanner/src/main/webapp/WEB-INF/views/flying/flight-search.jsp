<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end cssload-loader -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/datepicker.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.ko.js"></script>

<script>
	//한개만 단순하게 만들때
	$(function() {
		$("#depdatepicker").datepicker({
			language : 'ko',
			timepicker : true,
			timeFormat : "hh:ii:00"
		});

		$("#depdatepicker1").datepicker({
			language : 'ko',
			timepicker : true,
			timeFormat : "hh:ii:00"
		});

		$("#arrdatepicker1").datepicker({
			language : 'ko',
			timepicker : true,
			timeFormat : "hh:ii:00"
		});
	});

	//두개짜리 제어 연결된거 만들어주는 함수
	$(function() {

		datePickerSet($("#depdatepicker1"), $("#arrdatepicker1"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

	});

	function datePickerSet(sDate, eDate, flag) {

		//시작 ~ 종료 2개 짜리 달력 datepicker	
		if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0
				&& eDate.length > 0) {
			var sDay = sDate.val();
			var eDay = eDate.val();

			if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...			
				var sdp = sDate.datepicker().data("datepicker");
				sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

				var edp = eDate.datepicker().data("datepicker");
				edp.selectDate(new Date(eDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
			}

			//시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
			if (!isValidStr(eDay)) {
				sDate.datepicker({
					maxDate : new Date(eDay.replace(/-/g, "/"))
				});
			}
			sDate.datepicker({
				language : 'ko',
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate, eDate);
				}
			});

			//종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
			if (!isValidStr(sDay)) {
				eDate.datepicker({
					minDate : new Date(sDay.replace(/-/g, "/"))
				});
			}
			eDate.datepicker({
				language : 'ko',
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate, eDate);
				}
			});

			//한개짜리 달력 datepicker
		} else if (!isValidStr(sDate)) {
			var sDay = sDate.val();
			if (flag && !isValidStr(sDay)) { //처음 입력 날짜 설정, update...			
				var sdp = sDate.datepicker().data("datepicker");
				sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
			}

			sDate.datepicker({
				language : 'ko',
				autoClose : true
			});
		}

		function isValidStr(str) {
			if (str == null || str == undefined || str == "")
				return true;
			else
				return false;
		}
	}
</script>
<!-- ================================
    START HERO-WRAPPER AREA
================================= -->

<section class="hero-wrapper">
	<div class="hero-box hero-bg">
		<span class="line-bg line-bg1"></span> <span class="line-bg line-bg2"></span>
		<span class="line-bg line-bg3"></span> <span class="line-bg line-bg4"></span>
		<span class="line-bg line-bg5"></span> <span class="line-bg line-bg6"></span>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 mx-auto responsive--column-l">
					<div class="hero-content pb-5">
						<div class="section-heading">
							<h2 class="sec__title cd-headline zoom">
								놀라운 <span class="cd-words-wrapper"> <b class="is-visible">여행이</b>
									<b>어드벤쳐가</b> <b>힐링이</b> <b>가격이</b> <b>사람들이</b>
								</span> 당신을 기다립니다!
							</h2>
						</div>
					</div>
					<!-- end hero-content -->
					<div class="section-tab text-center pl-4">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a
								class="nav-link d-flex align-items-center active"
								id="flight-tab" data-toggle="tab"
								href="/WEB-INF/views/flying/booking.jsp" role="tab"
								aria-controls="flight" aria-selected="true"> <i
									class="la la-plane mr-1"></i>항공권
							</a></li>
						</ul>
					</div>
					<!-- end section-tab -->
					<div class="tab-content search-fields-container" id="myTabContent">
						<div class="tab-pane fade show active" id="flight" role="tabpanel"
							aria-labelledby="flight-tab">
							<div class="section-tab section-tab-2 pb-3">
								<ul class="nav nav-tabs" id="myTab3" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="one-way-tab" data-toggle="tab" href="#one-way" role="tab"
										aria-controls="one-way" aria-selected="true"> 편도 </a></li>
									<li class="nav-item"><a class="nav-link"
										id="round-trip-tab" data-toggle="tab" href="#round-trip"
										role="tab" aria-controls="round-trip" aria-selected="false">
											왕복 </a></li>
								</ul>
							</div>
							<!-- end section-tab -->
							<!-- 편도 검색 -->
							<div class="tab-content" id="myTabContent3">
								<div class="tab-pane fade show active" id="one-way"
									role="tabpanel" aria-labelledby="one-way-tab">
									<div class="contact-form-action">
										<form role="form" action="searchOneway.do" method="post"
											class="row align-items-center">
											<div class="col-lg-6 pr-0">
												<div class="input-box">
													<label class="label-text">출발지</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text" name="depAirportCityNm"
															id="depAirportCityNm" placeholder="도시 또는 공항">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">도착지</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text" name="arrAirportCityNm"
															id="arrAirportCityNm" placeholder="도시 또는 공항">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">출발일</label>
													<div class="form-group">
														<div class="single">
															<span class="la la-calendar form-icon"></span> <input
																type="text" class="date-range form-control"
																id="depdatepicker" name="depTimeTest"
																placeholder="2021-07-12 11:30:00">
														</div>
													</div>
													<!-- <input
															class="date-range form-control" type="datetime"
															name="depTimeTest" id="datepicker"
															placeholder="2021-07-12 11:30:00"> -->
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">탑승객</label>
													<div class="form-group">
														<div class="dropdown dropdown-contain gty-container">
															<a class="dropdown-toggle dropdown-btn" href="#"
																role="button" data-toggle="dropdown"
																aria-expanded="false"> <span class="font-size-8">유아
																	제외</span>
															</a>
															<div class="dropdown-menu dropdown-menu-wrap">
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>탑승객 </label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="totCount" id="totCount"
																				value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- end dropdown -->
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">등급</label>
													<div class="form-group select-contain w-auto">
														<select class="select-contain-select" id="seatGrade"
															name="seatGrade">
															<option value="1" selected>이코노미</option>
															<option value="2">비지니스</option>
															<option value="3">1등석</option>
														</select>
													</div>
												</div>
											</div>
											<input type="hidden" name="oneWay" id="oneWay"
												value="편도 항공권 ">
											<!-- end col-lg-3 -->
											<div class="col-lg-3">
												<button type="submit"
													class="theme-btn w-100 text-center margin-top-20px">지금
													검색하기</button>

											</div>
										</form>
									</div>
								</div>
								<!-- end tab-pane -->
								<!-- 왕복 검색 -->
								<div class="tab-pane fade" id="round-trip" role="tabpanel"
									aria-labelledby="round-trip-tab">
									<div class="contact-form-action">
										<form role="form" action="searchRoundtrip.do" method="post"
											class="row align-items-center">
											<div class="col-lg-6 pr-0">
												<div class="input-box">
													<label class="label-text">출발지</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text" name="depAirportCityNm"
															id="depAirportCityNm" placeholder="도시 또는 공항">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">도착지</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text" name="arrAirportCityNm"
															id="arrAirportCityNm" placeholder="도시 또는 공항">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">출발일</label>
													<div class="form-group">
														<div class="single">
															<span class="la la-calendar form-icon"></span> <input
																type="text" class="date-range form-control"
																id="depdatepicker1" name="depTimeTest"
																placeholder="2021-07-12 12:00:00">
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">도착일</label>
													<div class="form-group">
														<div class="single">
															<span class="la la-calendar form-icon"></span> <input
																type="text" class="date-range form-control"
																id="arrdatepicker1" name="arrTimeTest"
																placeholder="2021-07-12 12:00:00">
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-2 -->
											<div class="col-lg-2 pr-0">
												<div class="input-box">
													<label class="label-text">탑승객</label>
													<div class="form-group">
														<div class="dropdown dropdown-contain gty-container">
															<a class="dropdown-toggle dropdown-btn" href="#"
																role="button" data-toggle="dropdown"
																aria-expanded="false"> <span class="font-size-8">유아
																	제외</span>
															</a>
															<div class="dropdown-menu dropdown-menu-wrap">
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>탑승객 </label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="totCount" id="totCount"
																				value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>

																</div>
															</div>
														</div>
														<!-- end dropdown -->
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-2 pr-0">
												<div class="input-box">
													<label class="label-text">등급</label>
													<div class="form-group">
														<div class="select-contain w-auto">
															<select class="select-contain-select" id="seatGrade"
																name="seatGrade">
																<option value="1" selected>이코노미</option>
																<option value="2">비지니스</option>
																<option value="3">1등석</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-2 -->
											<input type="hidden" name="roundTrip" id="roundTrip"
												value="왕복 항공권 ">
											<div class="col-lg-2">
												<button type="submit"
													class="theme-btn w-15 text-center margin-top-20px">
													검색하기</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
</section>
<!-- end hero-wrapper -->
<!-- ================================
    END HERO-WRAPPER AREA
================================= -->
<!-- ================================
    START DESTINATION AREA
================================= -->
<section class="destination-area section--padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img
							src="${pageContext.request.contextPath}/images/destination1.jpg"
							alt="destination-img"> <span class="badge">뉴욕</span>
					</div>
					<div class="card-body">
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text"></span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text"></p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$58.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
				<div class="card-item destination-card">
					<div class="card-img">
						<img
							src="${pageContext.request.contextPath}/images/destination2.jpg"
							alt="destination-img"> <span class="badge">chicago</span>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="tour-details.html">Chicago Cultural Center</a>
						</h3>
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text">(70694 Reviews)</span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text">50 Tours</p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$68.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img
							src="${pageContext.request.contextPath}/images/destination3.jpg"
							alt="destination-img"> <span class="badge">Hong Kong</span>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="tour-details.html">Lugard Road Lookout</a>
						</h3>
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star-o"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text">(70694 Reviews)</span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text">150 Tours</p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$79.00</span>
								<span class="price__num before-price">$89.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
				<div class="card-item destination-card">
					<div class="card-img">
						<img
							src="${pageContext.request.contextPath}/images/destination4.jpg"
							alt="destination-img"> <span class="badge">Las Vegas</span>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="tour-details.html">Planet Hollywood Resort</a>
						</h3>
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text">(70694 Reviews)</span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text">50 Tours</p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$88.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img
							src="${pageContext.request.contextPath}/images/destination5.jpg"
							alt="destination-img"> <span class="badge">Shanghai</span>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="tour-details.html">Oriental Pearl TV Tower</a>
						</h3>
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i>
							</span> <span class="rating__text">(70694 Reviews)</span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text">50 Tours</p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$58.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end destination-area -->
<!-- footer -->
<!-- ================================
       START FOOTER AREA
================================= -->
<section
	class="footer-area section-bg padding-top-100px padding-bottom-30px">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<div class="footer-logo padding-bottom-30px">
						<a href="index.html" class="foot__logo"><img
							src="${pageContext.request.contextPath}/images/logo.png"
							alt="logo"></a>
					</div>
					<!-- end logo -->
					<ul class="list-items list--items">
						<li><a href="#">admin@sapscanner.com</a></li>
						<li>Seocho-gu, Seoul, Republic of Korea</li>
						<li>33, Seocho-daero 74-gil, 06621</li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">회사</h4>
					<ul class="list-items list--items">
						<li><a href="about.do">소개</a></li>
						<li><a href="services.do">서비스</a></li>
						<li><a href="faq.do">문의사항</a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">링크</h4>
					<ul class="list-items list--items">
						<li><a
							href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=saleru1004&logNo=80205857973">관광지
								소개</a></li>
						<li><a
							href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">네이버
								블로그 </a></li>
						<li><a
							href="https://www.kakaocorp.com/page/service/service/KakaoStory?lang=en">카카오
								스토리 </a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">구독</h4>
					<div class="contact-form-action">
						<form action="#">
							<div class="input-box">
								<div class="form-group mb-0">
									<span class="la la-envelope form-icon"></span> <input
										class="form-control" type="email" name="email"
										placeholder="이메일 주소">
									<button class="theme-btn theme-btn-small submit-btn"
										type="submit">Go</button>
									<span class="font-size-14 pt-1"><i
										class="la la-lock mr-1"></i>입력된 이메일 보호 및 보안</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
		</div>
		<!-- end row -->
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="term-box footer-item">
					<ul class="list-items list--items d-flex align-items-center">
						<li><a href="loading.do">이용 약관</a></li>
						<li><a href="loading.do">개인정보 보호정책</a></li>
					</ul>
				</div>
			</div>
			<!-- end col-lg-8 -->
			<div class="col-lg-4">
				<div class="footer-social-box text-right">
					<ul class="social-profile">
						<li><a href="#"><i class="lab la-facebook-f"></i></a></li>
						<li><a href="#"><i class="lab la-twitter"></i></a></li>
						<li><a href="#"><i class="lab la-instagram"></i></a></li>
						<li><a href="#"><i class="lab la-linkedin-in"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
	<div class="section-block mt-4"></div>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="copy-right padding-top-30px">
					<p class="copy__desc">
						&copy; Copyright SAP Scanner 2021. Made with <span
							class="la la-heart"></span> by <a
							href="https://github.com/bkk91/">Team SAP</a>
					</p>
				</div>
				<!-- end copy-right -->
			</div>
			<!-- end col-lg-7 -->

		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end footer-area -->

<!-- start back-to-top -->
<div id="back-to-top">
	<i class="la la-angle-up" title="Go top"></i>
</div>
<!-- end back-to-top -->

<!-- Template JS Files -->
<%-- <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script> --%>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.fancybox.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.countTo.min.js"></script>
<script src="${pageContext.request.contextPath}/js/animated-headline.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.ripples-min.js"></script>
<script src="${pageContext.request.contextPath}/js/quantity-input.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>