<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="author" content="TechyDevs">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SAP Scanner - Flight List</title>
<!-- Favicon -->
<link rel="icon" href="images/favicon.png">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<!-- Template CSS Files -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.min.css">
<link rel="stylesheet" href="css/line-awesome.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="css/daterangepicker.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/animated-headline.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/flag-icon.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- start cssload-loader -->
	<div class="preloader" id="preloader">
		<div class="loader">
			<svg class="spinner" viewBox="0 0 50 50">
            <circle class="path" cx="25" cy="25" r="20" fill="none"
					stroke-width="5"></circle>
        </svg>
		</div>
	</div>
	<!-- end cssload-loader -->

	<!-- ================================
            START HEADER AREA
================================= -->
	<header class="header-area">
		<div class="header-top-bar padding-right-100px padding-left-100px">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="header-top-content">
							<div class="header-left">
								<ul class="list-items">
									<li><a href="#"><i class="la la-phone mr-1"></i>(02)1234-5678</a></li>
									<li><a href="#"><i class="la la-envelope mr-1"></i>admin@sapscanner.com</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header-top-content">
							<div
								class="header-right d-flex align-items-center justify-content-end">
								<div class="header-right-action">
									<div class="select-contain select--contain w-auto">
										<select class="select-contain-select">
											<option
												data-content='<span class="flag-icon flag-icon-kr mr-1"></span> Korean'
												selected>Korean</option>
											<option
												data-content='<span class="flag-icon flag-icon-us mr-1"></span> English(US)'>
												English (US)</option>
										</select>
									</div>
								</div>
								<div class="header-right-action">
									<div class="select-contain select--contain w-auto">
										<select class="select-contain-select">
											<option value="1" selected>KRW</option>
											<option value="2">USD</option>
										</select>
									</div>
								</div>
								<div class="header-right-action">
									<a href="#"
										class="theme-btn theme-btn-small theme-btn-transparent mr-1"
										data-toggle="modal" data-target="#signupPopupForm">회원가입</a> <a
										href="#" class="theme-btn theme-btn-small" data-toggle="modal"
										data-target="#loginPopupForm">로그인</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			class="header-menu-wrapper padding-right-100px padding-left-100px">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="menu-wrapper">
							<a href="#" class="down-button"><i class="la la-angle-down"></i></a>
							<div class="logo">
								<a href="index.html"><img src="images/logo.png" alt="logo"></a>
								<div class="menu-toggler">
									<i class="la la-bars"></i> <i class="la la-times"></i>
								</div>
								<!-- end menu-toggler -->
							</div>
							<!-- end logo -->

							<!--headerMenu-->
							<div class="main-menu-content">
								<nav>
									<ul>
										<li><a href="#">홈 </a></li>
										<li><a href="flight-search-result.html">항공권 </i></a></li>

										<li><a href="hotel-search-result.html">호텔</a></li>

										<li><a href="#">페이지<i class="la la-angle-down"></i></a>
											<div class="dropdown-menu-item mega-menu">
												<ul class="row no-gutters">
													<li class="col-lg-3 mega-menu-item">
														<ul>
															<li><a href="admin-dashboard.html">관리자 대쉬보드</a></li>
															<li><a href="about.html">소개</a></li>
															<li><a href="services.html">서비스</a></li>
														</ul>
													</li>
													<li class="col-lg-3 mega-menu-item">
														<ul>
															<li><a href="user-dashboard.html">사용자 대쉬보드</a></li>
															<li><a href="user-profile.html">사용자 프로필</a></li>
															<li><a href="recover.html">비밀번호 찾기</a></li>
														</ul>
													</li>
													<li class="col-lg-3 mega-menu-item">
														<ul>
															<li><a href="cart.html">카트</a></li>
															<li><a href="checkout.html">체크아웃</a></li>
															<li><a href="pricing.html">가격</a></li>
														</ul>
													</li>
													<li class="col-lg-3 mega-menu-item">
														<ul>
															<li><a href="payment-received.html">결제 확인</a></li>
															<li><a href="payment-complete.html">결제 완료</a></li>
															<li><a href="faq.html">문의사항</a></li>
														</ul>
													</li>
												</ul>
											</div></li>

									</ul>
								</nav>
							</div>
							<!-- end main-menu-content -->
							<div class="nav-btn">
								<a href="become-local-expert.html" class="theme-btn">여행가이드
									신청</a>
							</div>
							<!-- end nav-btn -->
						</div>
						<!-- end menu-wrapper -->
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end header-menu-wrapper -->
	</header>
	<!-- ================================
     END HEADER AREA
================================= -->

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
								<h2 class="sec__title text-white">어디로 떠나고 싶으세요?</h2>
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
				<polygon points="100 0 50 10 0 0 0 10 100 10"></polygon></svg>
		</div>
		<!-- end bread-svg -->
	</section>
	<!-- end breadcrumb-area -->
	<!-- ================================
    END BREADCRUMB AREA
================================= -->

	<!-- ================================
    START CARD AREA
================================= -->
	<section class="card-area section--padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="filter-wrap margin-bottom-30px">
						<div
							class="filter-top d-flex align-items-center justify-content-between pb-4">

						</div>
						<!-- end filter-top -->
						<div
							class="filter-bar d-flex align-items-center justify-content-between">
							<div
								class="filter-bar-filter d-flex flex-wrap align-items-center">
								<div class="filter-option">
									<h3 class="title font-size-16">필터:</h3>
								</div>
								<div class="filter-option">
									<div class="dropdown dropdown-contain">
										<a class="dropdown-toggle dropdown-btn dropdown--btn" href="#"
											role="button" data-toggle="dropdown"> 가격 </a>
										<div class="dropdown-menu dropdown-menu-wrap">
											<div class="dropdown-item">
												<div class="slider-range-wrap">
													<div class="price-slider-amount padding-bottom-20px">
														<label for="amount" class="filter__label">가격</label> <input
															type="text" id="amount" class="amounts">
													</div>
													<!-- end price-slider-amount -->
													<div id="slider-range"></div>
													<!-- end slider-range -->
												</div>
												<!-- end slider-range-wrap -->
												<div class="btn-box pt-4">
													<button
														class="theme-btn theme-btn-small theme-btn-transparent"
														type="button">확인</button>
												</div>
											</div>
											<!-- end dropdown-item -->
										</div>
										<!-- end dropdown-menu -->
									</div>
									<!-- end dropdown -->
								</div>
								<div class="filter-option">
									<div class="dropdown dropdown-contain">
										<div class="dropdown-menu dropdown-menu-wrap">
											<div class="dropdown-item">
												<div class="checkbox-wrap">
													<div class="custom-checkbox">
														<input type="checkbox" id="r1"> <label for="r1">
															<span class="ratings d-flex align-items-center"> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star"></i> <span
																class="color-text-3 font-size-13 ml-1">(55.590)</span>
														</span>
														</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="r2"> <label for="r2">
															<span class="ratings d-flex align-items-center"> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star-o"></i> <span
																class="color-text-3 font-size-13 ml-1">(40.590)</span>
														</span>
														</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="r3"> <label for="r3">
															<span class="ratings d-flex align-items-center"> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star"></i> <i class="la la-star-o"></i> <i
																class="la la-star-o"></i> <span
																class="color-text-3 font-size-13 ml-1">(23.590)</span>
														</span>
														</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="r4"> <label for="r4">
															<span class="ratings d-flex align-items-center"> <i
																class="la la-star"></i> <i class="la la-star"></i> <i
																class="la la-star-o"></i> <i class="la la-star-o"></i> <i
																class="la la-star-o"></i> <span
																class="color-text-3 font-size-13 ml-1">(12.590)</span>
														</span>
														</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="r5"> <label for="r5">
															<span class="ratings d-flex align-items-center"> <i
																class="la la-star"></i> <i class="la la-star-o"></i> <i
																class="la la-star-o"></i> <i class="la la-star-o"></i> <i
																class="la la-star-o"></i> <span
																class="color-text-3 font-size-13 ml-1">(590)</span>
														</span>
														</label>
													</div>
												</div>
											</div>
											<!-- end dropdown-item -->
										</div>
										<!-- end dropdown-menu -->
									</div>
									<!-- end dropdown -->
								</div>
								<div class="filter-option">
									<div class="dropdown dropdown-contain">
										<a class="dropdown-toggle dropdown-btn dropdown--btn" href="#"
											role="button" data-toggle="dropdown"> 항공사 </a>
										<div class="dropdown-menu dropdown-menu-wrap">
											<div class="dropdown-item">
												<div class="checkbox-wrap">
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb1"> <label
															for="catChb1">Major Airlines</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb2"> <label
															for="catChb2">United Airlines</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb3"> <label
															for="catChb3">Delta Airlines</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb4"> <label
															for="catChb4">Alitalia</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb5"> <label
															for="catChb5">US Airways</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb6"> <label
															for="catChb6">Air France</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb7"> <label
															for="catChb7">Air Tahiti Nui</label>
													</div>
													<div class="custom-checkbox">
														<input type="checkbox" id="catChb8"> <label
															for="catChb8">Indigo</label>
													</div>
												</div>
											</div>
											<!-- end dropdown-item -->
										</div>
										<!-- end dropdown-menu -->
									</div>
									<!-- end dropdown -->
								</div>
							</div>
							<!-- end filter-bar-filter -->
							<div class="select-contain">
								<select class="select-contain-select">

									<option value="2">출발시간빠른순</option>
									<option value="3">출발시간늦은순</option>
									<option value="4">낮은가격순</option>

								</select>
							</div>
							<!-- end select-contain -->
						</div>
						<!-- end filter-bar -->
					</div>
					<!-- end filter-wrap -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-4">
					<div class="sidebar mt-0">
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">검색</h3>
							<div class="sidebar-widget-item">
								<div class="contact-form-action">
									<form action="#">
										<div class="input-box">
											<label class="label-text">출발지</label>
											<div class="form-group">
												<span class="la la-map-marker form-icon"></span> <input
													class="form-control" type="text" name="text"
													placeholder="공항명 또는 도시">
											</div>
										</div>
										<div class="input-box">
											<label class="label-text">도착지</label>
											<div class="form-group">
												<span class="la la-map-marker form-icon"></span> <input
													class="form-control" type="text" name="text"
													placeholder="공항명 또는 도시">
											</div>
										</div>
										<div class="input-box">
											<label class="label-text">출발날짜</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" readonly>
											</div>
										</div>
										<div class="input-box">
											<label class="label-text">도착날짜</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" readonly>
											</div>
										</div>
										<div class="input-box">
											<label class="label-text">항공사</label>
											<div class="form-group">
												<div class="select-contain w-auto">
													<select class="select-contain-select">
														<option value="1">American Airlines</option>
														<option value="2">Air France</option>
														<option value="3">Asiana</option>
														<option value="4">Cathay Pacific</option>
														<option value="5">China Southern</option>
														<option value="6">Delta Airlines</option>
														<option value="7">Jet Airways</option>
														<option value="8">Vietnam Airlines</option>
														<option value="9">Qatar Airways</option>
														<option value="10">Singapore Airlines</option>
													</select>
												</div>
												<!-- end select-contain -->
											</div>
										</div>
										<div class="input-box">
											<label class="label-text">좌석등급</label>
											<div class="form-group">
												<div class="select-contain w-auto">
													<select class="select-contain-select">
														<option value="1">이코노미</option>
														<option value="2">비지니스</option>
														<option value="3">1등석</option>
													</select>
												</div>
												<!-- end select-contain -->
											</div>
										</div>
										<div class="btn-box pt-2">
											<a href="flight-search-result.html" class="theme-btn">찾아보기</a>
										</div>
									</form>
								</div>
							</div>
							<!-- end sidebar-widget-item -->
						</div>
						<!-- end sidebar-widget -->
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">가격</h3>
							<div class="sidebar-price-range">
								<div class="slider-range-wrap">
									<div class="price-slider-amount padding-bottom-20px">
										<label for="amount2" class="filter__label">가격:</label> <input
											type="text" id="amount2" class="amounts">
									</div>
									<!-- end price-slider-amount -->
									<div id="slider-range2"></div>
									<!-- end slider-range -->
								</div>
								<!-- end slider-range-wrap -->
								<div class="btn-box pt-4">
									<button class="theme-btn theme-btn-small theme-btn-transparent"
										type="button">확인</button>
								</div>
							</div>
						</div>
						<!-- end sidebar-widget -->
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">시간</h3>
							<div class="sidebar-widget-item">
								<div class="select-contain w-auto">
									<select class="select-contain-select">
										<option value="1200AM">12:00AM</option>
										<option value="1230AM">12:30AM</option>
										<option value="0100AM">1:00AM</option>
										<option value="0130AM">1:30AM</option>
										<option value="0200AM">2:00AM</option>
										<option value="0230AM">2:30AM</option>
										<option value="0300AM">3:00AM</option>
										<option value="0330AM">3:30AM</option>
										<option value="0400AM">4:00AM</option>
										<option value="0430AM">4:30AM</option>
										<option value="0500AM">5:00AM</option>
										<option value="0530AM">5:30AM</option>
										<option value="0600AM">6:00AM</option>
										<option value="0630AM">6:30AM</option>
										<option value="0700AM">7:00AM</option>
										<option value="0730AM">7:30AM</option>
										<option value="0800AM">8:00AM</option>
										<option value="0830AM">8:30AM</option>
										<option value="0900AM" selected>9:00AM</option>
										<option value="0930AM">9:30AM</option>
										<option value="1000AM">10:00AM</option>
										<option value="1030AM">10:30AM</option>
										<option value="1100AM">11:00AM</option>
										<option value="1130AM">11:30AM</option>
										<option value="1200PM">12:00PM</option>
										<option value="1230PM">12:30PM</option>
										<option value="0100PM">1:00PM</option>
										<option value="0130PM">1:30PM</option>
										<option value="0200PM">2:00PM</option>
										<option value="0230PM">2:30PM</option>
										<option value="0300PM">3:00PM</option>
										<option value="0330PM">3:30PM</option>
										<option value="0400PM">4:00PM</option>
										<option value="0430PM">4:30PM</option>
										<option value="0500PM">5:00PM</option>
										<option value="0530PM">5:30PM</option>
										<option value="0600PM">6:00PM</option>
										<option value="0630PM">6:30PM</option>
										<option value="0700PM">7:00PM</option>
										<option value="0730PM">7:30PM</option>
										<option value="0800PM">8:00PM</option>
										<option value="0830PM">8:30PM</option>
										<option value="0900PM">9:00PM</option>
										<option value="0930PM">9:30PM</option>
										<option value="1000PM">10:00PM</option>
										<option value="1030PM">10:30PM</option>
										<option value="1100PM">11:00PM</option>
										<option value="1130PM">11:30PM</option>
									</select>
								</div>
							</div>
							<!-- end sidebar-widget-item -->
						</div>
						<!-- end sidebar-widget -->




					</div>
					<!-- end sidebar -->
				</div>
				<!-- end col-lg-4 -->
				<div class="col-lg-8">
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img7.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">Beijing</h3>
									<p class="card-meta font-size-14">One way flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$350.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->
					</div>
					<!-- end card-item -->
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img8.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">Paris</h3>
									<p class="card-meta font-size-14">Round flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$650.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->

					</div>
					<!-- end card-item -->
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img9.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">Dubai</h3>
									<p class="card-meta font-size-14">One way flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$350.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->
					</div>
					<!-- end card-item -->
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img10.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">Turkey</h3>
									<p class="card-meta font-size-14">One way flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$350.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->
					</div>
					<!-- end card-item -->
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img11.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">New york</h3>
									<p class="card-meta font-size-14">Round flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$650.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->
					</div>
					<!-- end card-item -->
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<img src="images/airline-img7.png" alt="flight-logo-img">
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<h3 class="card-title font-size-17">London</h3>
									<p class="card-meta font-size-14">One way flight</p>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">avg/person</span>
										<h6 class="font-weight-bold color-text">$350.00</h6>
									</div>
								</div>
							</div>
							<!-- end card-top-title -->
							<div class="flight-details py-3">
								<div class="flight-time pb-3">
									<div class="flight-time-item take-off d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Take
												off</h3>
											<p class="card-meta font-size-14">Wed Nov 12 6:50 AM</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">Landing</h3>
											<p class="card-meta font-size-14">Thu Nov 13 8:50 AM</p>
										</div>
									</div>
								</div>
								<!-- end flight-time -->
								<p class="font-size-14 text-center">
									<span class="color-text-2 mr-1">Total Time:</span>12 Hours 30
									Minutes
								</p>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a href="flight-single.html"
									class="theme-btn theme-btn-small w-100">View Details</a>
							</div>
						</div>
						<!-- end card-body -->
					</div>
					<!-- end card-item -->
				</div>
				<!-- end col-lg-8 -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="btn-box mt-3 text-center">
						<button type="button" class="theme-btn">
							<i class="la la-refresh mr-1"></i>더 보기
						</button>
						<p class="font-size-13 pt-2">24개 중 1-6개 보여주기</p>
					</div>
					<!-- end btn-box -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end card-area -->
	<!-- ================================
    END CARD AREA
================================= -->

	<div class="section-block"></div>


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
								src="images/logo.png" alt="logo"></a>
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
							<li><a href="about.html">소개</a></li>
							<li><a href="services.html">서비스</a></li>
							<li><a href="#">문의사항</a></li>
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
							<li><a href="#">관광지 소개</a></li>
							<li><a href="#">네이버 블로그 </a></li>
							<li><a href="#">카카오 스토리 </a></li>
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
							<li><a href="#">이용 약관</a></li>
							<li><a href="#">개인정보 보호정책</a></li>
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
	<!-- ================================
   START FOOTER AREA
================================= -->

	<!-- start back-to-top -->
	<div id="back-to-top">
		<i class="la la-angle-up" title="Go top"></i>
	</div>
	<!-- end back-to-top -->

	<!-- 회원가입 팝업창 시작 -->
	<div class="modal-popup">
		<div class="modal fade" id="signupPopupForm" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<div>
							<h5 class="modal-title title" id="exampleModalLongTitle">Sign
								Up</h5>
							<p class="font-size-14">안녕하세요^^!$#@$#@$#@$</p>
						</div>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" class="la la-close"></span>
						</button>
					</div>
					<div class="modal-body">
						<div class="contact-form-action">
							<form method="post">
								<div class="input-box">
									<label class="label-text">Username</label>
									<div class="form-group">
										<span class="la la-user form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type your username">
									</div>
								</div>
								<!-- end input-box -->
								<div class="input-box">
									<label class="label-text">Email Address</label>
									<div class="form-group">
										<span class="la la-envelope form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type your email">
									</div>
								</div>
								<!-- end input-box -->
								<div class="input-box">
									<label class="label-text">Password</label>
									<div class="form-group">
										<span class="la la-lock form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type password">
									</div>
								</div>
								<!-- end input-box -->
								<div class="input-box">
									<label class="label-text">Repeat Password</label>
									<div class="form-group">
										<span class="la la-lock form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type again password">
									</div>
								</div>
								<!-- end input-box -->
								<div class="btn-box pt-3 pb-4">
									<button type="button" class="theme-btn w-100">Register
										Account</button>
								</div>
								<div class="action-box text-center">
									<p class="font-size-14">Or Sign up Using</p>
									<ul class="social-profile py-3">
										<li><a href="#" class="bg-5 text-white"><i
												class="lab la-facebook-f"></i></a></li>
										<li><a href="#" class="bg-6 text-white"><i
												class="lab la-twitter"></i></a></li>
										<li><a href="#" class="bg-7 text-white"><i
												class="lab la-instagram"></i></a></li>
										<li><a href="#" class="bg-5 text-white"><i
												class="lab la-linkedin-in"></i></a></li>
									</ul>
								</div>
							</form>
						</div>
						<!-- end contact-form-action -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 회원가입 팝업창 종료 -->

	<!-- end modal-shared -->
	<div class="modal-popup">
		<div class="modal fade" id="loginPopupForm" tabindex="-1"
			role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<div>
							<h5 class="modal-title title" id="exampleModalLongTitle2">Login</h5>
							<p class="font-size-14">Hello! Welcome to your account</p>
						</div>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" class="la la-close"></span>
						</button>
					</div>
					<div class="modal-body">
						<div class="contact-form-action">
							<form method="post">
								<div class="input-box">
									<label class="label-text">Username</label>
									<div class="form-group">
										<span class="la la-user form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type your username">
									</div>
								</div>
								<!-- end input-box -->
								<div class="input-box">
									<label class="label-text">Password</label>
									<div class="form-group mb-2">
										<span class="la la-lock form-icon"></span> <input
											class="form-control" type="text" name="text"
											placeholder="Type your password">
									</div>
									<div class="d-flex align-items-center justify-content-between">
										<div class="custom-checkbox mb-0">
											<input type="checkbox" id="rememberchb"> <label
												for="rememberchb">Remember me</label>
										</div>
										<p class="forgot-password">
											<a href="recover.html">Forgot Password?</a>
										</p>
									</div>
								</div>
								<!-- end input-box -->
								<div class="btn-box pt-3 pb-4">
									<button type="button" class="theme-btn w-100">Login
										Account</button>
								</div>
								<div class="action-box text-center">
									<p class="font-size-14">Or Login Using</p>
									<ul class="social-profile py-3">
										<li><a href="#" class="bg-5 text-white"><i
												class="lab la-facebook-f"></i></a></li>
										<li><a href="#" class="bg-6 text-white"><i
												class="lab la-twitter"></i></a></li>
										<li><a href="#" class="bg-7 text-white"><i
												class="lab la-instagram"></i></a></li>
										<li><a href="#" class="bg-5 text-white"><i
												class="lab la-linkedin-in"></i></a></li>
									</ul>
								</div>
							</form>
						</div>
						<!-- end contact-form-action -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end modal-popup -->

	<!-- Template JS Files -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/daterangepicker.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.countTo.min.js"></script>
	<script src="js/animated-headline.js"></script>
	<script src="js/jquery.ripples-min.js"></script>
	<script src="js/quantity-input.js"></script>
	<script src="js/main.js"></script>
</body>

</html>