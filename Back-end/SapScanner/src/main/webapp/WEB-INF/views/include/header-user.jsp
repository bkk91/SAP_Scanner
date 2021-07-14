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

<!-- 회원 정보 수정 : 프로필 설정, 이메일 변경, 비밀번호 변경  -->

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<!-- Template CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/line-awesome.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animated-headline.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flag-icon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="section-bg">
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
       START DASHBOARD NAV
================================= -->
	<div class="sidebar-nav sidebar--nav">
		<div class="sidebar-nav-body">
			<div class="side-menu-close">
				<i class="la la-times"></i>
			</div>
			<!-- end menu-toggler -->
			<div class="author-content">
				<div class="d-flex align-items-center">
					<div class="author-img avatar-sm">
						<img src="${pageContext.request.contextPath}/images/admin.png"
							alt="testimonial image">
					</div>
					<div class="author-bio">
						<h4 class="author__title">회원 페이지</h4>

					</div>
				</div>
			</div>
			<div class="sidebar-menu-wrap">
				<ul class="sidebar-menu toggle-menu list-items">
					<li><a href="user-dashboard-reservation.do"><i
							class="la la-list mr-2 text-color-2"></i>예약</a></li>
					<li><a href="user-dashboard-setting.do"><i
							class="la la-cog mr-2 text-color-10"></i>회원정보</a></li>
					<li><a href="logout.do"><i
							class="la la-power-off mr-2 text-color-11"></i>로그아웃</a></li>
				</ul>
			</div>
			<!-- end sidebar-menu-wrap -->
		</div>
	</div>
	<!-- end sidebar-nav -->
	<!-- ================================
       END DASHBOARD NAV
================================= -->