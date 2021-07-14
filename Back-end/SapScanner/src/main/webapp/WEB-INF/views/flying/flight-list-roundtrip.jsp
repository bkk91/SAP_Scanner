<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/datepicker.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.ko.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#sortData').change(function() {
			var sortData = this.value;
			if (sortData == "1") {
				alert("가격 정렬");
				sortByPrice();
			} else if (sortData == "2") {
				alert("출발시간 정렬");
				sortByDepTime();
			} else if (sortData == "3") {
				alert("도착시간 정렬");
				sortByArrTime();
			}
		});
	})
	
	

	function sortByPrice() {
		$.ajax({
			type : 'post',
			url : 'sortByPrice.do',
			success : function(data) {
				console.log("가격순 정렬");
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function sortByDepTime() {
		$.ajax({
			type : 'post',
			url : 'sortByDepTime.do',
			success : function(data) {
				console.log("출발 시간 정렬");
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function sortByArrTime() {
		$.ajax({
			type : 'post',
			url : 'sortByArrTime.do',
			success : function(data) {
				console.log("도착 시간 정렬");
			},
			error : function(e) {
				console.log(e);
			}
		});
	}
</script>
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
						<div class="filter-bar-filter d-flex flex-wrap align-items-center">
							<div class="filter-option">
								<h3 class="title font-size-16">필터:</h3>
							</div>
						</div>
						<!-- end filter-bar-filter -->
						<div class="select-contain">
							<select class="select-contain-select" name="sortData"
								id="sortData" style="float: right">
								<option value="1">낮은가격순</option>
								<option value="2">출발시간빠른순</option>
								<option value="3">도착시간빠른순</option>
							</select> <br>
						</div>
					</div>
					<!-- end filter-bar -->
				</div>
				<!-- end filter-wrap -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<!-- 왕복 검색 -->
		<div class="row">
			<div class="col-lg-4">
				<div class="sidebar mt-0">
					<div class="sidebar-widget">
						<h3 class="title stroke-shape">검색</h3>
						<div class="sidebar-widget-item">
							<div class="contact-form-action">
								<form role="form" action="searchRoundtrip.do" method="post">
									<div class="input-box">
										<label class="label-text">출발지</label>
										<div class="form-group">
											<span class="la la-map-marker form-icon"></span> <input
												class="form-control" type="text" name="depAirportCityNm"
												id="depAirportCityNm" placeholder="도시 또는 공항">
										</div>
									</div>
									<div class="input-box">
										<label class="label-text">도착지</label>
										<div class="form-group">
											<span class="la la-map-marker form-icon"></span> <input
												class="form-control" type="text" name="arrAirportCityNm"
												id="arrAirportCityNm" placeholder="도시 또는 공항">
										</div>
									</div>
									<div class="input-box">
										<label class="label-text">출발날짜</label>
										<div class="form-group">
											<div class="single">
												<span class="la la-calendar form-icon"></span> <input
													type="text" class="date-range form-control"
													id="depdatepicker1" name="depTimeTest"
													placeholder="2021-07-12 12:00:00">
											</div>
										</div>
									</div>
									<div class="input-box">
										<label class="label-text">도착날짜</label>
										<div class="form-group">
											<div class="single">
												<span class="la la-calendar form-icon"></span> <input
													type="text" class="date-range form-control"
													id="arrdatepicker1" name="arrTimeTest"
													placeholder="2021-07-12 12:00:00">
											</div>
										</div>
									</div>
									<div class="input-box">
										<label class="label-text">탑승객</label>
										<div class="form-group">
											<div class="dropdown dropdown-contain gty-container">
												<a class="dropdown-toggle dropdown-btn" href="#"
													role="button" data-toggle="dropdown" aria-expanded="false">
													<span class="font-size-8">유아 제외</span>
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
									</div>
									<!-- end dropdown -->
									<div class="input-box">
										<label class="label-text">좌석등급</label>
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
									<input type="hidden" name="roundTrip" id="roundTrip"
										value="왕복 항공권 ">
									<div class="btn-box pt-2">
										<button type="submit"
											class="theme-btn w-15 text-center margin-top-20px">
											찾아보기</button>
									</div>
								</form>
							</div>
						</div>
						<!-- end sidebar-widget-item -->
					</div>
					<!-- end sidebar-widget -->
				</div>
				<!-- end sidebar -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-8" id="resultDiv">
				<!-- 첫번째 출발일 기준 티켓 출력 -->
				<c:forEach var="firstList" items="${firstList}" varStatus="status">
					<div
						class="card-item flight-card flight--card card-item-list card-item-list-2">
						<div class="card-img">
							<table>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/images/flight/<c:out value="${firstList.airlineNm}"/>.png"
										alt="flight-logo-img"></td>
								</tr>
								<tr>
									<td><br> <br> <br> <br> <br></td>
								</tr>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/images/flight/<c:out value="${secondList[status.index].airlineNm}"/>.png"
										alt="flight-logo-img"></td>
								</tr>
							</table>
						</div>
						<div class="card-body">
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<p class="card-meta font-size-14">출발하는날</p>
									<h3 class="card-title font-size-17">
										FROM >>
										<c:out value="${firstList.depCityNm}" />
										<br> <br>TO >>
										<c:out value="${firstList.arrCityNm}" />
									</h3>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">
											${roundTrip}<br> <c:out value=" : ${firstSeatGrade} " />
											<br> 1인/금액
										</span>
										<h6 class="font-weight-bold color-text">

											<c:out value="${firstPrice}" />
											원
										</h6>
										<span class="font-weight-regular font-size-14 d-block">합계
											금액</span>
										<h6 class="font-weight-bold color-text">
											<c:out value="${firstSum}" />
											원
										</h6>
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
											<h3 class="card-title font-size-15 font-weight-medium mb-0">이륙
												시간</h3>
											<p class="card-meta font-size-14">
												<c:out value="${firstList.depPlandTime}" />
											</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">착륙
												시간</h3>
											<p class="card-meta font-size-14">
												<c:out value="${firstList.arrPlandTime}" />
											</p>
										</div>
									</div>
									<!-- end flight-time -->
									<div class="flight-time-item take-off d-flex">
										<p class="font-size-14">
											<span class="color-text-2 mr-1">비행 소요 시간: 약 <c:out
													value="${firstList.seatStatus}" />시간
											</span>
										</p>
									</div>
								</div>
							</div>
							<div class="card-top-title d-flex justify-content-between">
								<div>
									<p class="card-meta font-size-14">돌아오는날</p>
									<h3 class="card-title font-size-17">
										FROM >>
										<c:out value="${secondList[status.index].arrCityNm}" />
										<br> <br>TO >>
										<c:out value="${secondList[status.index].depCityNm}" />
									</h3>
								</div>
								<div>
									<div class="text-right">
										<span class="font-weight-regular font-size-14 d-block">
											1인/금액 </span>
										<h6 class="font-weight-bold color-text">
											<c:out value="${firstPrice}" />
											원
										</h6>
										<span class="font-weight-regular font-size-14 d-block">합계
											금액</span>
										<h6 class="font-weight-bold color-text">
											<c:out value="${firstSum}" />
											원
										</h6>
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
											<h3 class="card-title font-size-15 font-weight-medium mb-0">이륙
												시간</h3>
											<p class="card-meta font-size-14">
												<c:out value="${secondList[status.index].depPlandTime}" />
											</p>
										</div>
									</div>
									<div class="flight-time-item landing d-flex">
										<div class="flex-shrink-0 mr-2">
											<i class="la la-plane"></i>
										</div>
										<div>
											<h3 class="card-title font-size-15 font-weight-medium mb-0">착륙
												시간</h3>
											<p class="card-meta font-size-14">
												<c:out value="${secondList[status.index].arrPlandTime}" />
											</p>
										</div>
									</div>
									<!-- end flight-time -->
									<div class="flight-time-item take-off d-flex">
										<p class="font-size-14">
											<span class="color-text-2 mr-1">비행 소요 시간: 약 <c:out
													value="${firstList.seatStatus}" />시간
											</span>
										</p>
									</div>
								</div>
							</div>
							<!-- end flight-details -->
							<div class="btn-box text-center">
								<a
									href="${pageContext.request.contextPath}/search/flight-single-roundtrip.do?sIndex=${status.index}"
									class="theme-btn theme-btn-small w-100">자세히 보기</a>
							</div>
						</div>
					</div>
				</c:forEach>
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
<!-- Footer -->
<%@include file="../include/footer-search.jsp"%>