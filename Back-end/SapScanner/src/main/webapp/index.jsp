<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- ================================
         HEADER AREA
================================= -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="WEB-INF/views/include/header.jsp"%>

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
		
		$("#checkinDt").datepicker({
			language : 'ko'
		});	
		
		$("#checkoutDt").datepicker({
			language : 'ko'
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

<script type="text/javascript">
	function searchFuntion() {

		/* 		var hotelSel = $('#totalPeopleCnt').val;
		
		 var plus = hotelSel.options[hotelSel.selectedIndex];
		
		 hotelSel.value = plus.value + plus.getAttribute("pluss");
		
		 var peoplPlus = oSel.options[oSel.selectedIndex]; */

		var hotelSearch = $('#hotelSearch').val();
		var checkinDt = $('#checkinDt').val();
		var checkoutDt = $('#checkoutDt').val();
		var HotelAdult = $('#HotelAdult').val();
		var HotelChild = $('#HotelChild').val();
		var roomNumber = $('#roomNumber').val();

		location.href = "search/searchHotel.do?hotelSearch=" + hotelSearch
				+ "&checkinDt=" + checkinDt + "&checkoutDt=" + checkoutDt
				+ "&HotelAdult=" + HotelAdult + "&HotelChild=" + HotelChild
				+ "&roomNumber=" + roomNumber;
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
							<li class="nav-item"><a
								class="nav-link d-flex align-items-center" id="hotel-tab"
								data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel"
								aria-selected="false"> <i class="la la-hotel mr-1"></i>호텔
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
							<div class="tab-content" id="myTabContent3">
								<div class="tab-pane fade show active" id="one-way"
									role="tabpanel" aria-labelledby="one-way-tab">
									<div class="contact-form-action">
										<form role="form" action="search/searchOneway.do"
											method="post" class="row align-items-center">
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
																placeholder="2021-07-12 12:00:00">
														</div>
													</div>
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
														<!-- end dropdown -->
													</div>
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
												value="편도 항공권 검색 결과">
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
										<form role="form" action="search/searchRoundtrip.do"
											method="post" class="row align-items-center">
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
												value="왕복 항공권 검색 결과">
											<div class="col-lg-2">
												<button type="submit"
													class="theme-btn w-15 text-center margin-top-20px">
													검색하기</button>
											</div>
										</form>
									</div>
									<!-- 항공권 검색 편도 + 왕복 종료 -->
								</div>

								<!-- end tab-pane -->
								<div class="tab-pane fade multi-flight-wrap" id="multi-city"
									role="tabpanel" aria-labelledby="multi-city-tab">
									<div
										class="contact-form-action multi-flight-field d-flex align-items-center">
										<form action="#" class="row flex-grow-1 align-items-center">
											<div class="col-lg-4 pr-0">
												<div class="input-box">
													<label class="label-text">Flying from</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-4 pr-0">
												<div class="input-box">
													<label class="label-text">Flying to</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-4">
												<div class="input-box">
													<label class="label-text">Departing</label>
													<div class="form-group">
														<span class="la la-calendar form-icon"></span> <input
															class="date-range form-control date-multi-picker"
															id="date" type="text" name="daterange-single" readonly>
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
										</form>
										<div class="multi-flight-delete-wrap pt-3 pl-3">
											<button class="multi-flight-remove" type="button">
												<i class="la la-remove"></i>
											</button>
										</div>
									</div>
									<div class="row align-items-center">
										<div class="col-lg-3 pr-0">
											<div class="form-group">
												<button
													class="theme-btn add-flight-btn margin-top-40px w-100"
													type="button">
													<i class="la la-plus mr-1"></i>Add another flight
												</button>
											</div>
										</div>
										<div class="col-lg-3 pr-0">
											<div class="input-box">
												<label class="label-text">탑승객</label>
												<div class="form-group">
													<div class="dropdown dropdown-contain gty-container">
														<a class="dropdown-toggle dropdown-btn" href="#"
															role="button" data-toggle="dropdown"
															aria-expanded="false"> <span class="adult"
															data-text="Adult" data-text-multi="Adults">0 어른</span> -
															<span class="children" data-text="Child"
															data-text-multi="Children">0 어린이</span>
														</a>
														<div class="dropdown-menu dropdown-menu-wrap">
															<div class="dropdown-item">
																<div
																	class="qty-box d-flex align-items-center justify-content-between">
																	<label>Adults</label>
																	<div class="qtyBtn d-flex align-items-center">
																		<div class="qtyDec">
																			<i class="la la-minus"></i>
																		</div>
																		<input type="text" name="adult_number" value="0">
																		<div class="qtyInc">
																			<i class="la la-plus"></i>
																		</div>
																	</div>
																</div>
															</div>
															<div class="dropdown-item">
																<div
																	class="qty-box d-flex align-items-center justify-content-between">
																	<label>Children</label>
																	<div class="qtyBtn d-flex align-items-center">
																		<div class="qtyDec">
																			<i class="la la-minus"></i>
																		</div>
																		<input type="text" name="child_number" value="0">
																		<div class="qtyInc">
																			<i class="la la-plus"></i>
																		</div>
																	</div>
																</div>
															</div>
															<div class="dropdown-item">
																<div
																	class="qty-box d-flex align-items-center justify-content-between">
																	<label>Infants</label>
																	<div class="qtyBtn d-flex align-items-center">
																		<div class="qtyDec">
																			<i class="la la-minus"></i>
																		</div>
																		<input type="text" name="infants_number" value="0"
																			class="qty-input">
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
										<div class="col-lg-3 pr-0">
											<div class="input-box">
												<label class="label-text">Coach</label>
												<div class="form-group">
													<div class="select-contain w-auto">
														<select class="select-contain-select">
															<option value="1" selected>Economy</option>
															<option value="2">Business</option>
															<option value="3">First class</option>
														</select>
													</div>
												</div>
											</div>
										</div>
										<!-- end col-lg-3 -->
										<div class="col-lg-3">
											<a href="flight-list.html"
												class="theme-btn w-100 text-center margin-top-20px">Search
												Now</a>
										</div>
									</div>
								</div>
								<!-- end tab-pane -->
							</div>
						</div>
						<!-- end tab-pane -->
						<!-- 호텔 검색 시작 -->
						<div class="tab-pane fade" id="hotel" role="tabpanel"
							aria-labelledby="hotel-tab">
							<div class="contact-form-action">
								<form action="search/searchHotel.do" class="row align-items-center"
									method="post">
									<div class="col-lg-3 pr-0">
										<div class="input-box">
											<label class="label-text">도착지 / 호텔이름</label>
											<div class="form-group">
												<span class="la la-map-marker form-icon"></span> <input
													class="form-control" name="hotelSearch" id="hotelSearch"
													type="text" placeholder="도시 또는 호텔" required="required">
											</div>
										</div>
									</div>
									<!-- end col-lg-3 -->
									<div class="col-lg-3 pr-0">
										<div class="input-box">
											<label class="label-text">체크인</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" id="checkinDt" readonly>
											</div>
										</div>
									</div>

									<!-- end col-lg-3 -->
									<div class="col-lg-3 pr-0">
										<div class="input-box">
											<label class="label-text">체크아웃</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" id="checkoutDt" readonly>
											</div>
										</div>
									</div>

									<div class="col-lg-3">
										<div class="input-box">
											<label class="label-text">인원</label>
											<div class="form-group">
												<div class="dropdown dropdown-contain gty-container">
													<a class="dropdown-toggle dropdown-btn" href="#"
														role="button" data-toggle="dropdown" aria-expanded="false">

														<span class="room" data-text="객실" data-text-multi="객실">0
															객실</span> - <span class="adult" data-text="어른"
														data-text-multi="어른">0 어른</span> - <span class="children"
														data-text="어린이" data-text-multi="어린이">0 어린이</span>
													</a>
													<div class="dropdown-menu dropdown-menu-wrap">
														<div class="dropdown-item">
															<div
																class="qty-box d-flex align-items-center justify-content-between">
																<label>객실</label>
																<div class="qtyBtn d-flex align-items-center">
																	<div class="qtyDec">
																		<i class="la la-minus"></i>
																	</div>
																	<input type="text" name="roomNumber" id="roomNumber"
																		value="0" class="qty-input">
																	<div class="qtyInc">
																		<i class="la la-plus"></i>
																	</div>
																</div>
															</div>
														</div>
														<div class="dropdown-item">
															<div
																class="qty-box d-flex align-items-center justify-content-between">
																<label>어른</label>
																<div class="qtyBtn d-flex align-items-center">
																	<div class="qtyDec">
																		<i class="la la-minus"></i>
																	</div>
																	<input type="text" name="HotelAdult" id="HotelAdult"
																		value="0">
																	<div class="qtyInc">
																		<i class="la la-plus"></i>
																	</div>
																</div>
															</div>
														</div>
														<div class="dropdown-item">
															<div
																class="qty-box d-flex align-items-center justify-content-between">
																<label>어린이</label>
																<div class="qtyBtn d-flex align-items-center">
																	<div class="qtyDec">
																		<i class="la la-minus"></i>
																	</div>
																	<input type="text" name="HotelChild" id="HotelChild"
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
									<div class="btn-box">
										<!-- <button type="submit">지금 검색하기</button> -->
										<button type="button" onclick="searchFuntion(); "
											class="theme-btn">지금 검색하기</button>
									</div>
								</form>
							</div>
						</div>
						<!-- end tab-pane -->
						<div class="tab-pane fade" id="package" role="tabpanel"
							aria-labelledby="package-tab">
							<div class="section-tab section-tab-2 pb-3">
								<ul class="nav nav-tabs" id="myTab2" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="flight-hotel-tab" data-toggle="tab" href="#flight-hotel"
										role="tab" aria-controls="flight-hotel" aria-selected="true">
											Flight + Hotel </a></li>
									<li class="nav-item"><a class="nav-link"
										id="flight-hotel-car-tab" data-toggle="tab"
										href="#flight-hotel-car" role="tab"
										aria-controls="flight-hotel-car" aria-selected="false">
											Flight + Hotel + Car </a></li>
									<li class="nav-item"><a class="nav-link"
										id="flight-car-tab" data-toggle="tab" href="#flight-car"
										role="tab" aria-controls="flight-car" aria-selected="false">
											Flight + Car </a></li>
									<li class="nav-item"><a class="nav-link"
										id="hotel-car-tab" data-toggle="tab" href="#hotel-car"
										role="tab" aria-controls="hotel-car" aria-selected="true">
											Hotel + Car </a></li>
								</ul>
							</div>
							<!-- end section-tab -->
							<div class="tab-content" id="myTabContent2">
								<div class="tab-pane fade show active" id="flight-hotel"
									role="tabpanel" aria-labelledby="flight-hotel-tab">
									<div class="contact-form-action">
										<form action="#" class="row align-items-center">
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying from</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying to</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Departing - Returning</label>
													<div class="form-group">
														<span class="la la-calendar form-icon"></span> <input
															class="date-range form-control" type="text"
															name="daterange" readonly>
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3">
												<div class="input-box">
													<label class="label-text">Guests</label>
													<div class="form-group">
														<div class="dropdown dropdown-contain gty-container">
															<a class="dropdown-toggle dropdown-btn" href="#"
																role="button" data-toggle="dropdown"
																aria-expanded="false"> <span class="adult"
																data-text="Adult" data-text-multi="Adults">0 어른</span> -
																<span class="children" data-text="Child"
																data-text-multi="Children">0 어린이</span>
															</a>
															<div class="dropdown-menu dropdown-menu-wrap">
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Rooms</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="room_number" value="0"
																				class="qty-input">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Adults</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="adult_number" value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Children</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="child_number" value="0">
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
										</form>
									</div>
									<div class="checkmark-wrap">
										<div class="custom-checkbox d-inline-block mb-0 mr-3">
											<input type="checkbox" id="directFlightChb"> <label
												for="directFlightChb">Direct flights only</label>
										</div>
										<div class="custom-checkbox d-inline-block mb-0">
											<input type="checkbox" id="onlyHotelChb"> <label
												for="onlyHotelChb">I only need a hotel for part of
												my stay</label>
										</div>
									</div>
									<!-- end checkmark-wrap -->
									<div class="btn-box pt-3">
										<a href="activity-search-result.html" class="theme-btn">Search
											Now</a>
									</div>
								</div>
								<!-- end tab-pane -->
								<div class="tab-pane fade" id="flight-hotel-car" role="tabpanel"
									aria-labelledby="flight-hotel-car-tab">
									<div class="contact-form-action">
										<form action="#" class="row align-items-center">
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying from</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															type="text" class="form-control"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying to</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Departing - Returning</label>
													<div class="form-group">
														<span class="la la-calendar form-icon"></span> <input
															class="date-range form-control" type="text"
															name="daterange" readonly>
													</div>
												</div>
											</div>
											<!-- end col-lg-3 -->
											<div class="col-lg-3">
												<div class="input-box">
													<label class="label-text">Guests</label>
													<div class="form-group">
														<div class="dropdown dropdown-contain gty-container">
															<a class="dropdown-toggle dropdown-btn" href="#"
																role="button" data-toggle="dropdown"
																aria-expanded="false"> <span class="adult"
																data-text="Adult" data-text-multi="Adults">0 어른</span> -
																<span class="children" data-text="Child"
																data-text-multi="Children">0 어린이</span>
															</a>
															<div class="dropdown-menu dropdown-menu-wrap">
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Rooms</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="room_number" value="0"
																				class="qty-input">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Adults</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="adult_number" value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Children</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="child_number" value="0">
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
										</form>
									</div>
									<div class="checkmark-wrap">
										<div class="custom-checkbox d-inline-block mb-0 mr-3">
											<input type="checkbox" id="directFlightChb2"> <label
												for="directFlightChb2">Direct flights only</label>
										</div>
										<div class="custom-checkbox d-inline-block mb-0">
											<input type="checkbox" id="onlyHotelChb2"> <label
												for="onlyHotelChb2">I only need a hotel for part of
												my stay</label>
										</div>
									</div>
									<!-- end checkmark-wrap -->
									<div class="btn-box pt-3">
										<a href="activity-search-result.html" class="theme-btn">Search
											Now</a>
									</div>
								</div>
								<!-- end tab-pane -->
								<div class="tab-pane fade" id="flight-car" role="tabpanel"
									aria-labelledby="flight-car-tab">
									<div class="contact-form-action">
										<form action="#" class="row align-items-center">
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying from</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Flying to</label>
													<div class="form-group">
														<span class="la la-map-marker form-icon"></span> <input
															class="form-control" type="text"
															placeholder="City or airport">
													</div>
												</div>
											</div>
											<div class="col-lg-3 pr-0">
												<div class="input-box">
													<label class="label-text">Departing - Returning</label>
													<div class="form-group">
														<span class="la la-calendar form-icon"></span> <input
															class="date-range form-control" type="text"
															name="daterange" readonly>
													</div>
												</div>
											</div>
											<div class="col-lg-3">
												<div class="input-box">
													<label class="label-text">Passengers</label>
													<div class="form-group">
														<div class="dropdown dropdown-contain gty-container">
															<a class="dropdown-toggle dropdown-btn" href="#"
																role="button" data-toggle="dropdown"
																aria-expanded="false"> <span class="adult"
																data-text="Adult" data-text-multi="Adults">0 어른</span> -
																<span class="children" data-text="Child"
																data-text-multi="Children">0 어린이</span>
															</a>
															<div class="dropdown-menu dropdown-menu-wrap">
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Adults</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="adult_number" value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Children</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="child_number" value="0">
																			<div class="qtyInc">
																				<i class="la la-plus"></i>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="dropdown-item">
																	<div
																		class="qty-box d-flex align-items-center justify-content-between">
																		<label>Infants</label>
																		<div class="qtyBtn d-flex align-items-center">
																			<div class="qtyDec">
																				<i class="la la-minus"></i>
																			</div>
																			<input type="text" name="infants_number" value="0"
																				class="qty-input">
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
										</form>
										<!-- end row -->
									</div>
								</div>
								<!-- end tab-pane -->
							</div>
						</div>
						<!-- end tab-pane -->
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
    START INFO AREA
================================= -->
<section
	class="info-area info-bg padding-top-50px padding-bottom-50px text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="icon-box">
					<div class="info-icon">
						<i class="la la-bullhorn"></i>
					</div>
					<!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">언제든지 내 맘대로</h4>
						<p class="info__desc">지금 떠날 수 있는 여행지를 둘러보시고 수천 개의 항공권, 호텔, 렌터카
							옵션 중에서 나에게 딱 맞는 최고의 가성비 상품을 검색할 수 있어요</p>
					</div>
					<!-- end info-content -->
				</div>
				<!-- end icon-box -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4">
				<div class="icon-box margin-top-50px">
					<div class="info-icon">
						<i class="la la-globe"></i>
					</div>
					<!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">걱정 없이 계획하세요</h4>
						<p class="info__desc">변경 가능한 항공권, 무료 취소가 가능한 호텔과 렌터카, 가장 청결도
							평점이 높은 객실을 둘러보고 남들보다 먼저 준비하세요.</p>
					</div>
					<!-- end info-content -->
				</div>
				<!-- end icon-box -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4">
				<div class="icon-box">
					<div class="info-icon">
						<i class="la la-thumbs-up"></i>
					</div>
					<!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">간편하고 명쾌하게</h4>
						<p class="info__desc">더는 숨은 수수료나 추가 요금, 교묘한 속임수를 걱정하지 마세요.
							SAP스캐너에서 모든 비용을 투명하게 확인하고 편안한 마음으로 여행을 준비하세요.</p>
					</div>
					<!-- end info-content -->
				</div>
				<!-- end icon-box -->
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end info-area -->
<!-- ================================
    END INFO AREA
================================= -->

<div class="section-block"></div>

<!-- ================================
    START ROUND-TRIP AREA
================================= -->
<section class="round-trip-flight section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-heading text-center">
					<h2 class="sec__title line-height-55">
						가장 인기있는<br> 왕복 항공편
					</h2>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<div class="row padding-top-50px">
			<div class="col-lg-12">
				<div class="flight-filter-tab text-center">
					<div class="section-tab section-tab-3">
						<ul class="nav nav-tabs justify-content-center" id="myTab4"
							role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="new-york-tab" data-toggle="tab" href="#new-york" role="tab"
								aria-controls="new-york" aria-selected="false"> New York </a></li>
							<li class="nav-item"><a class="nav-link" id="hong-kong-tab"
								data-toggle="tab" href="#hong-kong" role="tab"
								aria-controls="hong-kong" aria-selected="false"> Hong Kong </a></li>
							<li class="nav-item"><a class="nav-link" id="beijing-tab"
								data-toggle="tab" href="#beijing" role="tab"
								aria-controls="beijing" aria-selected="false"> Beijing </a></li>
							<li class="nav-item"><a class="nav-link" id="tokyo-tab"
								data-toggle="tab" href="#tokyo" role="tab" aria-controls="tokyo"
								aria-selected="false"> Tokyo </a></li>
							<li class="nav-item"><a class="nav-link" id="seoul-tab"
								data-toggle="tab" href="#seoul" role="tab" aria-controls="seoul"
								aria-selected="false"> Seoul </a></li>
						</ul>
					</div>
					<!-- end section-tab -->
				</div>
				<!-- end flight-filter-tab -->
				<div class="popular-round-trip-wrap padding-top-40px">
					<div class="tab-content" id="myTabContent4">
						<div class="tab-pane fade show active" id="new-york"
							role="tabpanel" aria-labelledby="new-york-tab">
							<div class="row">
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>Los Angeles
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img2.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>Barcelona
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$740</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img3.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>Dallas
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$140</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img4.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>San Francisco
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img5.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>Miami
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$100</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img6.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> New York<i
													class="la la-exchange mx-2"></i>London
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$640</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
							</div>
						</div>
						<!-- end tab-pane -->
						<div class="tab-pane fade" id="hong-kong" role="tabpanel"
							aria-labelledby="hong-kong-tab">
							<div class="row">
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Singapore
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">할인가격</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">자세히 보기<i
												class="la la-angle-right"></i></a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img2.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Tokyo
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$740</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img3.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Seoul
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$140</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img4.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Manila
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img5.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Nepal
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$100</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img6.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Hong Kong<i
													class="la la-exchange mx-2"></i>Beijing
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$640</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
							</div>
						</div>
						<!-- end tab-pane -->
						<div class="tab-pane fade" id="seoul" role="tabpanel"
							aria-labelledby="seoul-tab">
							<div class="row">
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Nepal
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img2.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Taipei
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$740</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img3.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Beijing
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$140</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img4.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Tokyo
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img5.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Hong kong
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$100</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img6.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Seoul<i
													class="la la-exchange mx-2"></i>Bangkok
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$640</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
							</div>
						</div>
						<!-- end tab-pane -->
						<div class="tab-pane fade" id="tokyo" role="tabpanel"
							aria-labelledby="tokyo-tab">
							<div class="row">
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Taipei
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img2.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Taipei
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$740</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img3.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Beijing
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$140</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img4.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Tokyo
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img5.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Hong kong
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$100</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img6.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Tokyo<i
													class="la la-exchange mx-2"></i>Hanoi
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$640</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
							</div>
						</div>
						<!-- end tab-pane -->
						<div class="tab-pane fade" id="beijing" role="tabpanel"
							aria-labelledby="beijing-tab">
							<div class="row">
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Taipei
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img2.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Taipei
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$740</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img3.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Beijing
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$140</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img4.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Tokyo
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$340</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img5.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Hong kong
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$100</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
								<div class="col-lg-4 responsive-column">
									<div class="deal-card">
										<div class="deal-title d-flex align-items-center">
											<img src="images/airline-img6.png" alt="air-line-img">
											<h3 class="deal__title">
												<a href="flight-single.html"
													class="d-flex align-items-center"> Beijing<i
													class="la la-exchange mx-2"></i>Hanoi
												</a>
											</h3>
										</div>
										<p class="deal__meta">Tue, Jul 14-Fri, Jul 24</p>
										<div
											class="deal-action-box d-flex align-items-center justify-content-between">
											<div class="price-box d-flex align-items-center">
												<span class="price__from mr-1">From</span><span
													class="price__num">$640</span>
											</div>
											<a href="flight-single.html" class="btn-text">See details<i
												class="la la-angle-right"></i>
											</a>
										</div>
									</div>
									<!-- end deal-card -->
								</div>
								<!-- end col-lg-4 -->
							</div>
						</div>
						<!-- end tab-pane -->
					</div>
					<!-- end tab-content -->
					<div
						class="tab-content-info d-flex justify-content-between align-items-center">
						<p class="font-size-15">
							<i class="la la-question-circle mr-1"></i>1인당 평균 왕복 요금, 세금 및 수수료
							포함
						</p>
						<a href="#" class="btn-text font-size-15">지금 검색하기 <i
							class="la la-angle-right"></i></a>
					</div>
					<!-- end tab-content-info -->
				</div>
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end round-trip-flight -->
<!-- ================================
    END ROUND-TRIP AREA
================================= -->

<!-- ================================
    START HOTEL AREA
================================= -->
<section
	class="hotel-area section-bg section-padding overflow-hidden padding-right-100px padding-left-100px">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-heading text-center">
					<h2 class="sec__title line-height-55">가장 인기있는 호텔</h2>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<div class="row padding-top-50px">
			<div class="col-lg-12">
				<div class="hotel-card-wrap">
					<div class="hotel-card-carousel carousel-action">
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img1.jpg" alt="hotel-img">
								</a> <span class="badge">베스트셀러</span>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">The Millennium Hilton New York</a>
								</h3>
								<p class="card-meta">124 E Huron St, New york</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5.0</span> <span
										class="review__text">평점</span> <span class="rating__text">(30
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$88.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세보기<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img2.jpg" alt="hotel-img">
								</a>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Best Western Grant Park Hotel</a>
								</h3>
								<p class="card-meta">124 E Huron St, Chicago</p>
								<div class="card-rating">
									<span class="badge text-white">4.0/5.0</span> <span
										class="review__text">평점</span> <span class="rating__text">(25
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$58.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세 보기<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img3.jpg" alt="hotel-img">
								</a> <span class="badge">특가</span>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Hyatt Regency Maui Resort</a>
								</h3>
								<p class="card-meta">200 Nohea Kai Dr, Lahaina, HI</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5.0</span> <span
										class="review__text">평점</span> <span class="rating__text">(30
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$88.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세 정보<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img4.jpg" alt="hotel-img">
								</a> <span class="badge">인기상품</span>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Four Seasons Resort at Wailea</a>
								</h3>
								<p class="card-meta">3900 Wailea Alanui Drive, Kihei, HI</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5.0</span> <span
										class="review__text">평점</span> <span class="rating__text">(30
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$88.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세 보기<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img5.jpg" alt="hotel-img">
								</a>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Ibis Styles London Heathrow</a>
								</h3>
								<p class="card-meta">272 Bath Road, Harlington, England</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5.0</span> <span
										class="review__text">평점</span> <span class="rating__text">(30
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$88.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세 보기<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img6.jpg" alt="hotel-img">
								</a>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Hotel Europe Saint Severin
										Paris</a>
								</h3>
								<p class="card-meta">38-40 Rue Saint Séverin, Paris, Paris</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5</span> <span
										class="review__text">Average</span> <span class="rating__text">(30
										Reviews)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">From</span> <span class="price__num">$88.00</span>
										<span class="price__text">Per night</span>
									</p>
									<a href="hotel-single.html" class="btn-text">See details<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img1.jpg" alt="hotel-img">
								</a> <span class="badge">Bestseller</span>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">The Millennium Hilton New York</a>
								</h3>
								<p class="card-meta">124 E Huron St, New york</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5</span> <span
										class="review__text">평점</span> <span class="rating__text">(30
										리뷰)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">시작가</span> <span class="price__num">$88.00</span>
										<span class="price__text">1박 기준</span>
									</p>
									<a href="hotel-single.html" class="btn-text">상세정보<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
						<div class="card-item mb-0">
							<div class="card-img">
								<a href="hotel-single.html" class="d-block"> <img
									src="images/img2.jpg" alt="hotel-img">
								</a>
								<div class="add-to-wishlist icon-element" data-toggle="tooltip"
									data-placement="top" title="Bookmark">
									<i class="la la-heart-o"></i>
								</div>
							</div>
							<div class="card-body">
								<h3 class="card-title">
									<a href="hotel-single.html">Best Western Grant Park Hotel</a>
								</h3>
								<p class="card-meta">124 E Huron St, Chicago</p>
								<div class="card-rating">
									<span class="badge text-white">4.4/5</span> <span
										class="review__text">Average</span> <span class="rating__text">(30
										Reviews)</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<span class="price__from">From</span> <span class="price__num">$58.00</span>
										<span class="price__text">Per night</span>
									</p>
									<a href="hotel-single.html" class="btn-text">See details<i
										class="la la-angle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end hotel-card-carousel -->
				</div>
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container-fluid -->
</section>
<!-- end hotel-area -->
<!-- ================================
    END HOTEL AREA
================================= -->

<!-- ================================
    START DESTINATION AREA
================================= -->
<section class="destination-area section--padding">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="section-heading">
					<h2 class="sec__title">가장 많이 방문한 장소</h2>
					<p class="sec__desc pt-3">아래에 인기있는 관광지 명소를 확인하세요
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-8 -->
			<div class="col-lg-4">
				<div class="btn-box btn--box text-right">
					<a href="#" class="btn-text font-size-15">지금 검색하기 <i
							class="la la-angle-right"></i></a>
				</div>
			</div>
		</div>
		<!-- end row -->
		<div class="row padding-top-50px">
			<div class="col-lg-4">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/place1.jpg" alt="destination-img"> <span
							class="badge">new york</span>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="tour-details.html">Main Street Park</a>
						</h3>
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star-o"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text">(50 Reviews)</span>
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
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/place2.jpg" alt="destination-img"> <span
							class="badge">chicago</span>
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
							</span> <span class="rating__text">(50 Reviews)</span>
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
			<div class="col-lg-4">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/place3.jpg" alt="destination-img"> <span
							class="badge">Hong Kong</span>
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
							</span> <span class="rating__text">(50 Reviews)</span>
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
						<img src="images/place4.jpg" alt="destination-img"> <span
							class="badge">Las Vegas</span>
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
							</span> <span class="rating__text">(50 Reviews)</span>
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
			<div class="col-lg-4">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/place5.jpg" alt="destination-img"> <span
							class="badge">Shanghai</span>
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
<!-- ================================
    END DESTINATION AREA
================================= -->

<!-- ================================
       START CLIENTLOGO AREA
================================= -->
<section
	class="clientlogo-area padding-top-80px padding-bottom-80px text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="client-logo">
					<div class="client-logo-item">
						<img src="images/client-logo.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
					<div class="client-logo-item">
						<img src="images/client-logo2.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
					<div class="client-logo-item">
						<img src="images/client-logo3.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
					<div class="client-logo-item">
						<img src="images/client-logo4.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
					<div class="client-logo-item">
						<img src="images/client-logo5.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
					<div class="client-logo-item">
						<img src="images/client-logo6.png" alt="brand image">
					</div>
					<!-- end client-logo-item -->
				</div>
				<!-- end client-logo -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- ================================
         Footer AREA
================================= -->

<%@include file="WEB-INF/views/include/footer.jsp"%>
