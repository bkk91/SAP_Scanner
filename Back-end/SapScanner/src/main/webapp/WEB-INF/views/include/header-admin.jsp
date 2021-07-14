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

<!-- ajax 수정/삭제 버튼 jQuery -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		// 수정
		/* $(".update_btn").on("click", function(){
			formObj.attr("action", "/admin/updateSchedule.do");
			formObj.attr("method", "post");
			formObj.submit();
		}) */
		
		// 삭제
		$(".delete_btn").on("click", function(){
			formObj.attr("action", "/admin/deleteSchedule.do");
			formObj.attr("method", "get");
			formObj.submit();
		})
	})
</script>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<!-- Template CSS Files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/line-awesome.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/daterangepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animated-headline.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flag-icon.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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
						<img src="${pageContext.request.contextPath}/images/admin.png" alt="testimonial image">
					</div>
					<div class="author-bio">
						<h4 class="author__title">관리자 페이지</h4>

					</div>
				</div>
			</div>
			<div class="sidebar-menu-wrap">
				<ul class="sidebar-menu toggle-menu list-items">
					<li><a href="${pageContext.request.contextPath}/admin/admin-dashboard-reservation.do"><i
							class="la la-list mr-2 text-color-2"></i>예약</a></li>
				<%-- 	<li><a href="${pageContext.request.contextPath}/admin/admin-dashboard-user.do"><i
							class="la la-users mr-2 text-color-3"></i>고객</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/admin-dashboard-review.do"><i
							class="la la-star mr-2 text-color-5"></i>리뷰</a></li> --%>
					<li><span class="side-menu-icon toggle-menu-icon"> <i
							class="la la-angle-down"></i>
					</span> <a href="#"><i class="la la-area-chart mr-2 text-color-8"></i>호텔/항공
							관리</a>
						<ul class="toggle-drop-menu">
							<li><a href="${pageContext.request.contextPath}/admin/admin-dashboard-flying-list.do">항공</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/admin-hotel-list.do">호텔</a></li>
						</ul></li>					
					<%-- <li><a href="${pageContext.request.contextPath}/admin/admin-dashboard-setting.do"><i
							class="la la-cog mr-2 text-color-10"></i>설정</a></li> --%>
					<li><a href="${pageContext.request.contextPath}/logout.do"><i
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