<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Admin-Header -->
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
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 수정
		$(".update_btn").on("click", function() {
			updateSchedule();
		})
		
		// 삭제
		$(".delete_btn").on("click", function() {
			deleteSchedule();
		})
	})
	
	function updateSchedule() {
		$.ajax({
			type: 'post',
			url: 'updateSchedule.do',
			dataType: 'text',
			data: $('#scheduleDetailForm').serialize(), // json -> serialize? 해쉬 밸류 : int 값
			success: function(data) {
				console.log(data);
				location.href = "admin-dashboard-flying-list.do";
			},
			error: function(e) {
				console.log(e);
			}
		});
	}	
		
	function deleteSchedule(){
		$.ajax({
			type: 'post',
			url: 'deleteSchedule.do',
			dataType: 'text',
			data: $('#scheduleDetailForm').serialize(),
			success: function(data) {
				console.log(data);
				location.href = "admin-dashboard-flying-list.do";
			},
			error: function(e) {
				console.log(e);
			}
		});		
	}
</script>

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
<style>
/*== 버튼 수정 == */
.update_btn {
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

.theme-btn:hover {
	background-color: #fff;
	color: #287dfa;
}

/*=== update-btn-small ====*/
.update_btn-small {
	line-height: 35px;
	padding-left: 15px;
	padding-right: 15px;
}

.delete_btn {
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

.theme-btn:hover {
	background-color: #fff;
	color: #287dfa;
}

/*=== delete-btn-small ====*/
.delete_btn-small {
	line-height: 35px;
	padding-left: 15px;
	padding-right: 15px;
}
</style>
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
						<img src="images/admin.png" alt="testimonial image">
					</div>
					<div class="author-bio">
						<h4 class="author__title">관리자 페이지</h4>

					</div>
				</div>
			</div>
			<div class="sidebar-menu-wrap">
				<ul class="sidebar-menu toggle-menu list-items">
					<li><a href="admin-dashboard-reservation.do"><i
							class="la la-list mr-2 text-color-2"></i>예약</a></li>
					<li><a href="admin-dashboard-user.do"><i
							class="la la-users mr-2 text-color-3"></i>고객</a></li>
					<li><a href="admin-dashboard-review.do"><i
							class="la la-star mr-2 text-color-5"></i>리뷰</a></li>
					<li><span class="side-menu-icon toggle-menu-icon"> <i
							class="la la-angle-down"></i>
					</span> <a href="#"><i class="la la-area-chart mr-2 text-color-8"></i>호텔/항공
							관리</a>
						<ul class="toggle-drop-menu">
							<li><a href="admin-dashboard-flying-list.do">항공</a></li>
							<li><a href="admin-dahsboard-hotel.do">호텔</a></li>
						</ul></li>
					<li><a href="/admin-dashboard-setting.do"><i
							class="la la-cog mr-2 text-color-10"></i>설정</a></li>
					<li><a href="index.jsp"><i
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



	<!-- ================================
    START DASHBOARD AREA
================================= -->
	<section class="dashboard-area">
		<div class="dashboard-content-wrap">
			<div class="dashboard-bread dashboard--bread dashboard-bread-2">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="breadcrumb-content">
								<div class="section-heading">
									<h2 class="sec__title font-size-30 text-white">항공편</h2>
								</div>
							</div>
							<!-- end breadcrumb-content -->
						</div>
						<!-- end col-lg-6 -->
					</div>
					<!-- end row -->
				</div>
			</div>
			<!-- end dashboard-bread -->

			<div class="dashboard-main-content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="form-box">
								<div class="form-title-wrap">
									<h3 class="title">선택한 스케쥴 보기</h3>
								</div>
								<div class="form-content">
									<div class="table-form table-responsive">
										<table class="table">
											<form role="form" method="post" id="scheduleDetailForm"
												action="admin-dashboard-flying-selectList.do">
												<thead>
													<tr>
														<th scope="col">VihicleId</th>
														<th scope="col">AirlineNm</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="text" name="vihicleId"
															id="vihicleId" value="${read.vihicleId}" /></td>
														<td><input type="text" name="airlineNm"
															id="airlineNm" value="${read.airlineNm}" /></td>
													</tr>
												</tbody>
												<thead>
													<tr>
														<th scope="col">DepAirportId</th>
														<th scope="col">DepAirportNm</th>
														<th scope="col">DepCityNm</th>
														<th scope="col">DepPlandTime</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="text" name="depAirportId"
															id="depAirportId" value="${read.depAirportId}" /></td>
														<td><input type="text" name="depAirportNm"
															id="depAirportNm" value="${read.depAirportNm}" /></td>
														<td><input type="text" name="depCityNm"
															id="depCityNm" value="${read.depCityNm}" /></td>
														<td><input type="datetime" name="depPlandTime"
															id="depPlandTime" value="${read.depPlandTime}" /></td>
													</tr>
												</tbody>
												<thead>
													<tr>
														<th scope="col">ArrAirportId</th>
														<th scope="col">ArrAirportNm</th>
														<th scope="col">ArrCityNm</th>
														<th scope="col">ArrPlandTime</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="text" name="arrAirportId"
															id="arrAirportId" value="${read.arrAirportId}" /></td>
														<td><input type="text" name="arrAirportNm"
															id="arrAirportNm" value="${read.arrAirportNm}" /></td>
														<td><input type="text" name="arrCityNm"
															id="arrCityNm" value="${read.arrCityNm}" /></td>
														<td><input type="datetime" name="arrPlandTime"
															id="arrPlandtime" value="${read.arrPlandTime}" /></td>
													</tr>
												</tbody>
												<thead>
													<tr>
														<th scope="col">EconomyCharge</th>
														<th scope="col">PrestigeCharge</th>
														<th scope="col">FirstCharge</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="text" name="economyCharge"
															id="economyCharge" value="${read.economyCharge}" /></td>
														<td><input type="text" name="PrestigeCharge"
															id="PrestigeCharge" value="${read.prestigeCharge}" /></td>
														<td><input type="text" name="firstCharge"
															id="firstCharge" value="${read.firstCharge}" /></td>
														<td>
														<th scope="col">
															<button type="button" class="update_btn"
																onclick="updateSchedule();">수정</button>
															<button type="button" class="delete_btn"
																onclick="deleteSchedule();">삭제</button>
														</th>
														
														</th>
													</tr>
												</tbody>
											</form>
										</table>
									</div>
								</div>
							</div>
							<!-- end form-box -->
						</div>
						<!-- end col-lg-12 -->
					</div>
					<!-- end row -->
					<div class="row">
						<div class="col-lg-12"></div>
					</div>
				</div>
				<!-- end container-fluid -->
			</div>
			<!-- end dashboard-main-content -->
		</div>
		<!-- end dashboard-content-wrap -->
	</section>
	<!-- end dashboard-area -->
	<!-- footer -->
	<!-- ================================
       START FOOTER AREA
================================= -->
	<section
		class="footer-area section-bg padding-top-15px padding-bottom-15px">
		<div class="section-block mt-4"></div>
		<div class="container" style="float: right;">
			<p class="copy__desc">
				<br> &copy; Copyright SAP Scanner 2021. Made with <span
					class="la la-heart"></span> by <a href="https://github.com/bkk91/">Team
					SAP</a>
			</p>
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
	<!-- ================================
         Login/register modal
================================= -->

	<!-- Template JS Files -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
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
	<script
		src="${pageContext.request.contextPath}/js/animated-headline.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.ripples-min.js"></script>
	<script src="${pageContext.request.contextPath}/js/quantity-input.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>