<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area bread-bg-6 py-0">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-btn">
						<a class="d-none" data-fancybox="gallery"
							data-src="images/destination-img2.jpg"
							data-caption="Showing image - 02" data-speed="700"></a> <a
							class="d-none" data-fancybox="gallery"
							data-src="images/destination-img3.jpg"
							data-caption="Showing image - 03" data-speed="700"></a> <a
							class="d-none" data-fancybox="gallery"
							data-src="images/destination-img4.jpg"
							data-caption="Showing image - 04" data-speed="700"></a>
					</div>
					<!-- end breadcrumb-btn -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end breadcrumb-wrap -->
</section>
<!-- end breadcrumb-area -->

<!-- ================================
    END BREADCRUMB AREA
================================= -->
<!-- ================================
    START TOUR DETAIL AREA
================================= -->
<section class="tour-detail-area padding-bottom-90px">
	<div class="single-content-navbar-wrap menu section-bg"
		id="single-content-navbar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="single-content-nav" id="single-content-nav">
						<ul>
							<li><a data-scroll="description" href="#description"
								class="scroll-link active">항공권 상세정보</a></li>
							<li><a data-scroll="baggage" href="#baggage"
								class="scroll-link">수하물</a></li>
							<li><a data-scroll="fare-rules" href="#fare-rules"
								class="scroll-link">항공 운임</a>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end single-content-navbar-wrap -->

	<div class="single-content-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="single-content-wrap padding-top-60px">
						<div id="description" class="page-scroll">
							<c:forEach items="${firstList}" var="firstList">
								<div class="single-content-item pb-4">
									<p>
										<span
											class="badge badge-warning text-white font-weight-medium font-size-17">[편도
											/ 직항]</span> <span> <br>
										</span> <br>
									</p>
									<h3 class="title font-size-26">
										<c:out value="${firstList.depCityNm}" />
										>>
										<c:out value="${firstList.arrCityNm}" />
									</h3>
									<p>출발하는날</p>
									<div class="d-flex align-items-center pt-2"></div>
								</div>
								<!-- end single-content-item -->
								<div class="section-block"></div>
								<div class="single-content-item py-4">
									<div class="row">
										<div class="col-lg-4 col-sm-4">
											<div class="single-feature-titles text-center mb-3">
												<h3 class="title font-size-15 font-weight-medium">이륙 시간</h3>
												<span class="font-size-13"><c:out
														value="${firstList.depPlandTime}" /></span>
											</div>
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 col-sm-4">
											<div class="single-feature-titles text-center mb-3">
												<i class="la la-clock-o text-color font-size-22"></i> <span
													class="font-size-13 mt-n2"></span>
											</div>
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 col-sm-4">
											<div class="single-feature-titles text-center mb-3">
												<h3 class="title font-size-15 font-weight-medium">착륙 시간</h3>
												<span class="font-size-13"><c:out
														value="${firstList.arrPlandTime}" /></span>
											</div>
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-12">
											<div
												class="single-feature-titles text-center border-top border-bottom py-3 mb-4">
												<h3 class="title font-size-15 font-weight-medium">
													총 운항 시간: <span
														class="font-size-13 d-inline-block ml-1 text-gray">
														약<c:out value=" ${firstList.seatStatus}" />시간
													</span>
												</h3>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-plane"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">항공사</h3>
													<span class="font-size-13"><c:out
															value="${firstList.airlineNm}" /></span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-user"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">좌석
														등급</h3>
													<span class="font-size-13"><c:out
															value="${firstSeatGrade}" /></span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-refresh"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">기내
														서비스</h3>
													<span class="font-size-13">사용가능한 리스트</span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-times"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">항공권
														취소</h3>
													<span class="font-size-13">30,000 원 / 1인</span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-exchange"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">항공권
														변경</h3>
													<span class="font-size-13"><c:out
															value="${firstPrice}" />원 / 1인</span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-shopping-cart"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">결제
														가격</h3>
													<span class="font-size-13"><c:out
															value="${firstSum}" />원 / <c:out value="${firstCount}" />인</span>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
									</div>
									<!-- end row -->
								</div>
							</c:forEach>
							<!-- end single-content-item -->
							<div class="section-block"></div>
							<div id="reviews" class="page-scroll">
								<div
									class="single-content-item padding-top-40px padding-bottom-40px">
									<h3 class="title font-size-20">항공사 평가</h3>
									<div class="review-container padding-top-30px">
										<div class="row align-items-center">
											<div class="col-lg-4">
												<div class="review-summary">
													<h2>
														4.3<span>/5.0</span>
													</h2>
													<p>Excellent</p>
												</div>
											</div>
											<!-- end col-lg-4 -->
											<div class="col-lg-8">
												<div class="review-bars">
													<div class="row">
														<div class="col-lg-6">
															<div class="progress-item">
																<h3 class="progressbar-title">서비스</h3>
																<div
																	class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
																	<div class="progressbar-box flex-shrink-0">
																		<div class="progressbar-line" data-percent="92%">
																			<div class="progressbar-line-item bar-bg-1"></div>
																		</div>
																		<!-- End Skill Bar -->
																	</div>
																	<div class="bar-percent">4.6</div>
																</div>
															</div>
															<!-- end progress-item -->
														</div>
														<!-- end col-lg-6 -->
														<div class="col-lg-6">
															<div class="progress-item">
																<h3 class="progressbar-title">정시출발</h3>
																<div
																	class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
																	<div class="progressbar-box flex-shrink-0">
																		<div class="progressbar-line" data-percent="94%">
																			<div class="progressbar-line-item bar-bg-2"></div>
																		</div>
																		<!-- End Skill Bar -->
																	</div>
																	<div class="bar-percent">4.7</div>
																</div>
															</div>
															<!-- end progress-item -->
														</div>
														<!-- end col-lg-6 -->
														<div class="col-lg-6">
															<div class="progress-item">
																<h3 class="progressbar-title">가격</h3>
																<div
																	class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
																	<div class="progressbar-box flex-shrink-0">
																		<div class="progressbar-line" data-percent="72%">
																			<div class="progressbar-line-item bar-bg-3"></div>
																		</div>
																		<!-- End Skill Bar -->
																	</div>
																	<div class="bar-percent">3.6</div>
																</div>
															</div>
															<!-- end progress-item -->
														</div>
														<!-- end col-lg-6 -->
														<div class="col-lg-6">
															<div class="progress-item">
																<h3 class="progressbar-title">청결</h3>
																<div
																	class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
																	<div class="progressbar-box flex-shrink-0">
																		<div class="progressbar-line" data-percent="88%">
																			<div class="progressbar-line-item bar-bg-4"></div>
																		</div>
																		<!-- End Skill Bar -->
																	</div>
																	<div class="bar-percent">4.4</div>
																</div>
															</div>
															<!-- end progress-item -->
														</div>
														<!-- end col-lg-6 -->
														<div class="col-lg-6">
															<div class="progress-item">
																<h3 class="progressbar-title">시설</h3>
																<div
																	class="progressbar-content line-height-20 d-flex align-items-center justify-content-between">
																	<div class="progressbar-box flex-shrink-0">
																		<div class="progressbar-line" data-percent="84%">
																			<div class="progressbar-line-item bar-bg-5"></div>
																		</div>
																		<!-- End Skill Bar -->
																	</div>
																	<div class="bar-percent">4.2</div>
																</div>
															</div>
															<!-- end progress-item -->
														</div>
														<!-- end col-lg-6 -->
													</div>
													<!-- end row -->
												</div>
											</div>
											<!-- end col-lg-8 -->
										</div>
									</div>
								</div>
								<!-- end single-content-item -->
								<div class="section-block"></div>
							</div>
							<!-- end reviews -->
						</div>
						<!-- end description -->
						<div id="inflight-features" class="page-scroll">
							<div
								class="single-content-item padding-top-40px padding-bottom-30px">
								<h3 class="title font-size-20">기내 서비스</h3>
								<p class="pt-3">해당 항공편은 다음과 같은 기내 서비스를 제공합니다.</p>
								<div class="inflight-content-item pt-4">
									<div class="row">
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-wifi"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">WI-FI</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-music"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Entertainment
													</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-television"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Television
													</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-tree"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Air
														Conditioning</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-glass"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Drink</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-gamepad"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Games</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-coffee"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Coffee</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-glass"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Wines</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-shopping-cart"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Shopping</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-cutlery"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Food</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-bed"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Comfort</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-photo"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">Magazines</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
									</div>
									<!-- end row -->
								</div>
								<!-- end inflight-content-item -->
							</div>
							<!-- end single-content-item -->
							<div class="section-block"></div>
						</div>
						<div class="section-block"></div>
						<!-- end seat-selection -->
						<div id="baggage" class="page-scroll">
							<div
								class="single-content-item padding-top-40px padding-bottom-40px">
								<div class="baggage-feature-item py-4">
									<p class="pb-3">수하물 규정</p>
									<div class="row">
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-shopping-cart"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">기내
														반입</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-briefcase"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">검사</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-briefcase"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">지연가능</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-briefcase"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">손상시
														피해보상</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-briefcase"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">반입금지
														물품</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-3">
													<i class="la la-briefcase"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">분실물
														취급소</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
									</div>
									<!-- end row -->
								</div>
							</div>
							<!-- end single-content-item -->
							<div class="section-block"></div>
						</div>
						<!-- end faq -->
						<div id="fare-rules" class="page-scroll">
							<div
								class="single-content-item padding-top-40px padding-bottom-40px">
								<h3 class="title font-size-20">항공 운임 규정</h3>
								<div class="fare-feature-item padding-top-30px pb-2">
									<div class="row">
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-2">
													<i class="la la-check"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">항공권
														변경</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-2">
													<i class="la la-check"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">좌석등급
														변경</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
										<div class="col-lg-4 responsive-column">
											<div
												class="single-tour-feature d-flex align-items-center mb-3">
												<div
													class="single-feature-icon icon-element ml-0 flex-shrink-0 mr-2">
													<i class="la la-check"></i>
												</div>
												<div class="single-feature-titles">
													<h3 class="title font-size-15 font-weight-medium">항공권
														취소 및 환불</h3>
												</div>
											</div>
											<!-- end single-tour-feature -->
										</div>
										<!-- end col-lg-4 -->
									</div>
									<!-- end row -->
								</div>
								<p>저희 SAP SCANNER는 다음과 같은 약관을 규정합니다.</p>
								<div class="accordion accordion-item padding-top-30px"
									id="accordionExample2">
									<div class="card">
										<div class="card-header" id="faqHeadingFive">
											<h2 class="mb-0">
												<button
													class="btn btn-link d-flex align-items-center justify-content-end flex-row-reverse font-size-16"
													type="button" data-toggle="collapse"
													data-target="#faqCollapseFive" aria-expanded="false"
													aria-controls="faqCollapseFive">
													<span class="ml-3">항공권 변경</span> <i class="la la-minus"></i>
													<i class="la la-plus"></i>
												</button>
											</h2>
										</div>
										<div id="faqCollapseFive" class="collapse"
											aria-labelledby="faqHeadingFive"
											data-parent="#accordionExample2">
											<div class="card-body d-flex">
												<p>같은 등급의 항공권은 출발일 기준 1주일내가 아니면 추가 요금없이 원하는 항공권으로 변경
													가능합니다.</p>
											</div>
										</div>
									</div>
									<!-- end card -->
									<div class="card">
										<div class="card-header" id="faqHeadingSix">
											<h2 class="mb-0">
												<button
													class="btn btn-link d-flex align-items-center justify-content-end flex-row-reverse font-size-16"
													type="button" data-toggle="collapse"
													data-target="#faqCollapseSix" aria-expanded="false"
													aria-controls="faqCollapseSix">
													<span class="ml-3">등급 업그레이드</span> <i class="la la-minus"></i>
													<i class="la la-plus"></i>
												</button>
											</h2>
										</div>
										<div id="faqCollapseSix" class="collapse"
											aria-labelledby="faqHeadingSix"
											data-parent="#accordionExample2">
											<div class="card-body d-flex">
												<p>좌석등급 업그레이드시 해당 항공사의 규정된 금액만큼 추가요금 결제 후 좌석등급 변경 가능합니다.</p>
											</div>
										</div>
									</div>
									<!-- end card -->
									<div class="card">
										<div class="card-header" id="faqHeadingSeven">
											<h2 class="mb-0">
												<button
													class="btn btn-link d-flex align-items-center justify-content-end flex-row-reverse font-size-16"
													type="button" data-toggle="collapse"
													data-target="#faqCollapseSeven" aria-expanded="false"
													aria-controls="faqCollapseSeven">
													<span class="ml-3">취소 및 환불</span> <i class="la la-minus"></i>
													<i class="la la-plus"></i>
												</button>
											</h2>
										</div>
										<div id="faqCollapseSeven" class="collapse"
											aria-labelledby="faqHeadingSeven"
											data-parent="#accordionExample2">
											<div class="card-body d-flex">
												<p>환불: 출발일 기준 <br>1주 100% <br>5일 90% <br>3일 80% <br>2일 70% <br>1일 50%  환불가능 합니다</p>
											</div>
										</div>
									</div>
									<!-- end card -->
								</div>
							</div>
							<!-- end single-content-item -->
							<div class="section-block"></div>
						</div>
						<!-- end faq -->
					</div>
					<!-- end single-content-wrap -->
				</div>
				<!-- end col-lg-8 -->
				<c:forEach items="${firstList}" var="firstList">
					<div class="col-lg-4">
						<div class="sidebar single-content-sidebar mb-0">
							<div class="sidebar-widget single-content-widget">
								<div class="sidebar-widget-item">
									<div class="sidebar-book-title-wrap mb-3">
										<h3>예약 확인</h3>
										<p>
											<span class="text-form">가격</span><span
												class="text-value ml-2 mr-1"> <c:out
													value="${discountSum}" />원
											</span> <span class="before-price"> <c:out
													value="${totalSum}" />원
											</span>
										</p>
									</div>
								</div>
								<!-- end sidebar-widget-item -->
								<div class="sidebar-widget-item">
									<div
										class="qty-box mb-2 d-flex align-items-center justify-content-between">
										<label class="font-size-16">출발하는 날짜 <span></span></label>
										<div class="qtyBtn d-flex align-items-center">
											<c:out value=" ${firstList.depPlandTime}" />
										</div>
									</div>
									<br>
									<div
										class="qty-box mb-2 d-flex align-items-center justify-content-between">
										<label class="font-size-16">좌석 등급 <span></span></label>
										<div class="qtyBtn d-flex align-items-center">
											<c:out value=" ${firstSeatGrade}" />
										</div>
									</div>
									<br>
								</div>
								<!-- end sidebar-widget-item -->
								<div class="sidebar-widget-item">
									<div
										class="qty-box mb-2 d-flex align-items-center justify-content-between">
										<label class="font-size-16">탑승객 <span>24개월 미만
												제외</span></label>
										<div class="qtyBtn d-flex align-items-center">
											<input type="text" name="qtyInput"
												value="<c:out
														value="${firstCount}" />">
											인
										</div>
									</div>
									<br>
								</div>
								<!-- end sidebar-widget-item -->
								<div class="btn-box pt-2">
									<a href="flight-booking.do"
										class="theme-btn text-center w-100 mb-2"><i
										class="la la-shopping-cart mr-2 font-size-18"></i>예약하기</a>
								</div>
							</div>
							<!-- end sidebar-widget -->
							<div class="sidebar-widget single-content-widget">
								<h3 class="title stroke-shape">우리와 함께하는 이유는?</h3>
								<div class="sidebar-list">
									<ul class="list-items">
										<li><i class="la la-dollar icon-element mr-2"></i>번거로움 없는
											결제기능</li>
										<li><i class="la la-microphone icon-element mr-2"></i>실시간
											고객서비스</li>
										<li><i class="la la-file-text icon-element mr-2"></i>무료
											발권 보험</li>
									</ul>
								</div>
								<!-- end sidebar-list -->
							</div>
							<!-- end sidebar-widget -->
							<div class="sidebar-widget single-content-widget">
								<h3 class="title stroke-shape">문의사항</h3>
								<p class="font-size-14 line-height-24">서비스에 대한 문제가 있을 시, 저희
									여행사에 전화 문의 부탁드립니다.</p>
								<div class="sidebar-list pt-3">
									<ul class="list-items">
										<li><i class="la la-phone icon-element mr-2"></i><a
											href="#">+ 82 -2 -1234 5678</a></li>
										<li><i class="la la-envelope icon-element mr-2"></i><a
											href="mailto:info@trizen.com">service@sapscanner.com</a></li>
									</ul>
								</div>
								<!-- end sidebar-list -->
							</div>
							<!-- end sidebar-widget -->
						</div>
						<!-- end sidebar -->
					</div>
				</c:forEach>
				<!-- end col-lg-4 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end single-content-box -->
</section>
<!-- end tour-detail-area -->
<!-- ================================
    END TOUR DETAIL AREA
================================= -->

<div class="section-block"></div>
<!-- Footer -->
<%@include file="../include/footer-search.jsp"%>
