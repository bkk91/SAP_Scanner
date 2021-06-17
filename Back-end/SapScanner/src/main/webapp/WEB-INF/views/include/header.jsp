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
<title>SAP Scanner - Travel Booking Agency</title>
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
									<li><i class="la la-phone mr-1"></i>(02)1234-5678</li>
									<li><i class="la la-envelope mr-1"></i>admin@sapscanner.com</li>
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
								<a href="index.jsp"><img src="images/logo.png" alt="logo"></a>
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
										<li><a href="index.do">홈 </a></li>
										<li><a href="flight-search.html">항공권 </i></a></li>
										<li><a href="hotel-search-result.html">호텔</a></li>
										<li>페이지<i class="la la-angle-down"></i>
											<div class="dropdown-menu-item mega-menu">
												<ul class="row no-gutters">
													<li class="col-lg-5 mega-menu-item">
														<ul>
															<li><a href="faq.do">문의사항</a></li>
															<li><a href="about.do">소개</a></li>
															<li><a href="services.do">서비스</a></li>
														</ul>
													</li>
													<li class="col-lg-5 mega-menu-item">
														<ul>
															<li><a href="admin-dashboard.do">관리자 대쉬보드</a></li>
															<li><a href="user-dashboard.do">사용자 대쉬보드</a></li>
															<li><a href="recover.do">비밀번호 찾기</a></li>
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