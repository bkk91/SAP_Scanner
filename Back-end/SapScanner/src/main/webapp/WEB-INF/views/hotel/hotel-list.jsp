<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search2.jsp"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/datepicker.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datepicker.ko.js"></script>

<script>
	//한개만 단순하게 만들때
	$(function() {
		
		$("#ajaxCheckIn").datepicker({
			language : 'ko'
		});	
		
		$("#ajaxCheckOut").datepicker({
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
<!-- Header -->
<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area bread-bg-7">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="search-result-content">
						<div class="section-heading">
							<h2 class="sec__title text-white">쉴만한 호텔을 찾아보세요</h2>
						</div>

					</div>
					<!-- end search-fields-container -->
				</div>
				<!-- end search-result-content -->
			</div>
			<!-- end col-lg-12 -->
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

						</div>
						<!-- end filter-bar-filter -->
						<div class="select-contain">
							<select class="select-contain-select" id="selOrderType">
								<option value="2" selected="selected">최저가 낮은순</option>
								<option value="3">최저가 높은순</option>
								<option value="1">호텔등급순(5에서1)</option>
								<!-- <option value="5">A to Z</option> -->
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

		<!--메뉴바 -->


		<form action="ajaxSearch.do" id="ajaxForm" method="post">
			<input type="hidden" name="orderType" id="orderType"> <input
				type="hidden" name="startPrice" id="startPrice"> <input
				type="hidden" name="endPrice" id="endPrice"> <input
				type="hidden" name="checkinDt" id="checkinDt"> <input
				type="hidden" name="checkoutDt" id="checkoutDt"> <input
				type="hidden" name="pageNum" id="pageNum">
			<div class="row">
				<div class="col-lg-4">
					<div class="sidebar mt-0">
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">지역/호텔 검색</h3>
							<div class="sidebar-widget-item">
								<div class="contact-form-action">
									<div class="input-box">
										<label class="label-text">지역/ 호텔명</label>
										<div class="form-group">
											<span class="la la-map-marker form-icon"></span> <input
												class="form-control" type="text" id="hotelSearch"
												name="hotelSearch" placeholder="지역,호텔명">
										</div>
									</div>

									<div class="col-lg-10 pr-0">
										<div class="input-box">
											<label class="label-text">체크인</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" id="ajaxCheckIn" readonly>
											</div>
										</div>
									</div>

									<!-- end col-lg-3 -->
									<div class="col-lg-10 pr-0">
										<div class="input-box">
											<label class="label-text">체크아웃</label>
											<div class="form-group">
												<span class="la la-calendar form-icon"></span> <input
													class="date-range form-control" type="text"
													name="daterange-single" id="ajaxCheckOut" readonly>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end sidebar-widget-item -->


							<div class="sidebar-widget-item">
								<div
									class="qty-box mb-2 d-flex align-items-center justify-content-between">
									<label class="font-size-16">객실</label>
									<div class="roomBtn d-flex align-items-center">
										<div class="qtyDec">
											<i class="la la-minus"></i>
										</div>
										<input type="text" name="roomNumber" value="0">
										<div class="qtyInc">
											<i class="la la-plus"></i>
										</div>
									</div>
								</div>
								<!-- end qty-box -->
								<div
									class="qty-box mb-2 d-flex align-items-center justify-content-between">
									<label class="font-size-16">성인 <span>18+</span></label>
									<div class="qtyBtn d-flex align-items-center">
										<div class="qtyDec">
											<i class="la la-minus"></i>
										</div>
										<input type="text" name="HotelAdult" value="0">
										<div class="qtyInc">
											<i class="la la-plus"></i>
										</div>
									</div>
								</div>
								<!-- end qty-box -->
								<div
									class="qty-box mb-2 d-flex align-items-center justify-content-between">
									<label class="font-size-16">어린이 <span>2-12 years
											old</span></label>
									<div class="qtyBtn d-flex align-items-center">
										<div class="qtyDec">
											<i class="la la-minus"></i>
										</div>
										<input type="text" name="hotelChild" value="0">
										<div class="qtyInc">
											<i class="la la-plus"></i>
										</div>
									</div>
								</div>
								<!-- end qty-box -->
							</div>
							<!-- end sidebar-widget-item -->
							<div class="btn-box pt-2">
								<button type="button" id="subSearchBtn" onclick="subSearch();"
									class="theme-btn">검색하기</button>
							</div>
						</div>
						<!-- end sidebar-widget -->
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">가격 설정</h3>
							<div class="sidebar-price-range">
								<div class="main-search-input-item">
									<div class="price-slider-amount padding-bottom-20px">
										<label for="amount2" class="filter__label">가격:</label> <input
											type="text" id="amount2" class="amounts">
									</div>
									<!-- end price-slider-amount -->
									<div id="slider-range2"></div>
									<!-- end slider-range -->
								</div>
								<!-- end main-search-input-item -->
								<!-- <div class="btn-box pt-4">
                           <button class="theme-btn theme-btn-small theme-btn-transparent"
                              type="button">확인</button>
                        </div> -->
							</div>
						</div>
						<!-- end sidebar-widget -->
						<!--          <div class="sidebar-widget">
                     <h3 class="title stroke-shape">리뷰 점수</h3>
                     <div class="sidebar-category">
                        <div class="custom-checkbox">
                           <input type="checkbox" id="r6"> <label for="r6">최고에요!</label>
                        </div>
                        <div class="custom-checkbox">
                           <input type="checkbox" id="r7"> <label for="r7">좋아요!</label>
                        </div>
                        <div class="custom-checkbox">
                           <input type="checkbox" id="r8"> <label for="r8">보통이에요</label>
                        </div>
                        <div class="custom-checkbox">
                           <input type="checkbox" id="r9"> <label for="r9">그저그래요</label>
                        </div>
                        <div class="custom-checkbox">
                           <input type="checkbox" id="r10"> <label for="r10">별로에요</label>
                        </div>
                     </div>
                  </div> -->
						<!-- end sidebar-widget -->
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">별점</h3>
							<div class="sidebar-review">
								<div class="custom-checkbox">
									<input type="checkbox" id="s1" name="grade" value="5">
									<label for="s1"> <span
										class="ratings d-flex align-items-center"> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star"></i> <span
											class="color-text-3 font-size-13 ml-1"></span>
									</span>
									</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="s2" name="grade" value="4">
									<label for="s2"> <span
										class="ratings d-flex align-items-center"> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star-o"></i> <span
											class="color-text-3 font-size-13 ml-1"></span>
									</span>
									</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="s3" name="grade" value="3">
									<label for="s3"> <span
										class="ratings d-flex align-items-center"> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star"></i> <i class="la la-star-o"></i> <i
											class="la la-star-o"></i> <span
											class="color-text-3 font-size-13 ml-1"></span>
									</span>
									</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="s4" name="grade" value="2">
									<label for="s4"> <span
										class="ratings d-flex align-items-center"> <i
											class="la la-star"></i> <i class="la la-star"></i> <i
											class="la la-star-o"></i> <i class="la la-star-o"></i> <i
											class="la la-star-o"></i> <span
											class="color-text-3 font-size-13 ml-1"></span>
									</span>
									</label>
								</div>
								<div class="custom-checkbox mb-0">
									<input type="checkbox" id="s5" name="grade" value="1">
									<label for="s5"> <span
										class="ratings d-flex align-items-center"> <i
											class="la la-star"></i> <i class="la la-star-o"></i> <i
											class="la la-star-o"></i> <i class="la la-star-o"></i> <i
											class="la la-star-o"></i> <span
											class="color-text-3 font-size-13 ml-1"></span>
									</span>
									</label>
								</div>
							</div>
						</div>
						<!-- end sidebar-widget -->
						<div class="sidebar-widget">
							<h3 class="title stroke-shape">시설</h3>
							<div class="sidebar-category">
								<div class="custom-checkbox">
									<input type="checkbox" id="chb12"> <label for="chb12">공항교통</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="f2"> <label for="f2">운동시설</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="f3"> <label for="f3">평면TV</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="f4"> <label for="f4">히터</label>
								</div>
								<div class="custom-checkbox">
									<input type="checkbox" id="f5"> <label for="f5">인터넷
										– Wifi</label>
								</div>
								<div class="collapse" id="facilitiesMenu">
									<div class="custom-checkbox">
										<input type="checkbox" id="f6"> <label for="f6">주차</label>
									</div>
									<div class="custom-checkbox">
										<input type="checkbox" id="f7"> <label for="f7">풀장</label>
									</div>
									<div class="custom-checkbox">
										<input type="checkbox" id="f8"> <label for="f8">레스토랑</label>
									</div>
									<div class="custom-checkbox">
										<input type="checkbox" id="f9"> <label for="f9">흡연장</label>
									</div>
									<div class="custom-checkbox">
										<input type="checkbox" id="f10"> <label for="f10">스파
											&amp; 사우나</label>
									</div>
									<div class="custom-checkbox">
										<input type="checkbox" id="f11"> <label for="f11">세탁기
											&amp; 드라이어</label>
									</div>
								</div>
								<a class="btn-text" data-toggle="collapse"
									href="#facilitiesMenu" role="button" aria-expanded="false"
									aria-controls="facilitiesMenu"> <span class="show-more">더보기
										<i class="la la-angle-down"></i>
								</span> <span class="show-less">접기 <i class="la la-angle-up"></i></span>
								</a>
							</div>
						</div>
						<!-- end sidebar-widget -->


						<!--         <div class="sidebar-widget">
                        <h3 class="title stroke-shape">호텔 테마</h3>
                        <div class="sidebar-category">
                            <div class="custom-checkbox">
                                <input type="checkbox" id="ht2">
                                <label for="ht2">부티크</label>
                            </div>
                           <div class="custom-checkbox">
                                <input type="checkbox" id="ht3">
                                <label for="ht3">Budget</label>
                            </div> 
                            <div class="custom-checkbox">
                                <input type="checkbox" id="ht4">
                                <label for="ht4">비즈니스</label>
                            </div>
                            <div class="custom-checkbox">
                                <input type="checkbox" id="ht5">
                                <label for="ht5">매력적인</label>
                            </div>
                            <div class="custom-checkbox">
                                <input type="checkbox" id="ht6">
                                <label for="ht6">클래식</label>
                            </div>
                            <div class="collapse" id="hotelThemeMenu">
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht7">
                                    <label for="ht7">친환경적인</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht8">
                                    <label for="ht8">럭셔리</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht9">
                                    <label for="ht9">Mid-range</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht10">
                                    <label for="ht10">Party</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht11">
                                    <label for="ht11">Quaint</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht12">
                                    <label for="ht12">Quite</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht14">
                                    <label for="ht14">Romantic</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht15">
                                    <label for="ht15">Standard</label>
                                </div>
                                <div class="custom-checkbox">
                                    <input type="checkbox" id="ht16">
                                    <label for="ht16">Trendy</label>
                                </div>
                            </div>
                            <a class="btn-text" data-toggle="collapse" href="#hotelThemeMenu" role="button" aria-expanded="false" aria-controls="hotelThemeMenu">
                                <span class="show-more">Show More <i class="la la-angle-down"></i></span>
                                <span class="show-less">Show Less <i class="la la-angle-up"></i></span>
                            </a>
                        </div> 
                    </div> <!-- end sidebar-widget -->

					</div>
					<!-- end sidebar -->
				</div>
				<!-- end col-lg-4 -->


				<!-- 호텔 리스트 내용 뿌려주는 곳 -->

				<div id="ajaxSearchList" class="col-lg-8">
					<c:forEach var="hotelList01" items="${hotelList01}">
						<!--  <form action ="room_details.do"> -->
						<div class="card-item card-item-list">
							<div class="card-img">
								<a href="${pageContext.request.contextPath}/hotelRoomList.do" class="d-block"> 
								<img src="<c:url value="/${hotelList01.fileName}"/>" />
								</a>
							</div>

							<div class="card-body">
								<h3 class="card-title">
									<!-- 호텔 이름  -->
									<a href="hotelRoomList.do?hotelIdx=${hotelList01.hotelIdx}"
										style="font-size: 1.55rem; font-weight: bold;">
										${hotelList01.hotelName}</a>
								</h3>
								<!-- 지역 -->
								<p class="card-meta">${hotelList01.hotelCountry},
									${hotelList01.hotelCity}</p>
								<div class="card-rating">
									<!-- 호텔 평점 -->
									<%-- <span class="badge text-white">평점:
                              ${hotelList01.hotelRate} / 5</span><br> <span
                              class="review__text">${hotelList01.hotelGrade}성급</span> --%>
									<span class="ratings d-flex align-items-center mr-1"> <c:forEach
											var="i" begin="1" end="${hotelList01.hotelRate}">
											<i class="la la-star"></i>
										</c:forEach>

									</span>
								</div>
								<div
									class="card-price d-flex align-items-center justify-content-between">
									<p>
										<!-- 예약가능한 방중에서 최저 가격으로 보여줘야함. -->
										<span class="price__from">최저가</span> <span class="price__num"><fmt:formatNumber
												value="${hotelList01.minPrice }" pattern="#,###" /> 원</span>
									</p>
									<a href="${pageContext.request.contextPath}/hotelRoomList.do?hotelIdx=${hotelList01.hotelIdx }"
										class="btn-text">자세히 <i class="la la-angle-right"></i></a>
								</div>
							</div>
							<!-- card-body -->
						</div>
						<!--    </form> -->
					</c:forEach>
				</div>
				<!-- end col-lg-8 -->

			</div>
			<!-- end row -->


			<div class="row">
				<div class="col-lg-12">
					<div class="btn-box mt-3 text-center">
						<button type="button" class="theme-btn" id="moreBtn">
							<i class="la la-refresh mr-1"></i>더 보기
						</button>
						<p class="font-size-13 pt-2">Showing 1 - 6 Hotels</p>
					</div>
					<!-- end btn-box -->
				</div>
				<!-- end col-lg-12 -->
			</div>
		</form>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
</form>
<!-- end card-area -->
<!-- ================================
    END CARD AREA
================================= -->

<div class="section-block"></div>

<!-- ================================
    START INFO AREA
================================= -->
<section class="info-area info-bg padding-top-90px padding-bottom-70px">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 responsive-column">
				<a href="#" class="icon-box icon-layout-2 d-flex">
					<div class="info-icon flex-shrink-0 bg-rgb text-color-2">
						<i class="la la-phone"></i>
					</div> <!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">Need Help? Contact us</h4>
						<p class="info__desc">Lorem ipsum dolor sit amet, consectetur
							adipisicing</p>
					</div> <!-- end info-content -->
				</a>
				<!-- end icon-box -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<a href="#" class="icon-box icon-layout-2 d-flex">
					<div class="info-icon flex-shrink-0 bg-rgb-2 text-color-3">
						<i class="la la-money"></i>
					</div> <!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">Payments</h4>
						<p class="info__desc">Lorem ipsum dolor sit amet, consectetur
							adipisicing</p>
					</div> <!-- end info-content -->
				</a>
				<!-- end icon-box -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<a href="#" class="icon-box icon-layout-2 d-flex">
					<div class="info-icon flex-shrink-0 bg-rgb-3 text-color-4">
						<i class="la la-times"></i>
					</div> <!-- end info-icon-->
					<div class="info-content">
						<h4 class="info__title">Cancel Policy</h4>
						<p class="info__desc">Lorem ipsum dolor sit amet, consectetur
							adipisicing</p>
					</div> <!-- end info-content -->
				</a>
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

<!-- ================================
    START CTA AREA
================================= -->
<section
	class="cta-area subscriber-area section-bg-2 padding-top-60px padding-bottom-60px">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="section-heading">
					<h2 class="sec__title font-size-30 text-white">Subscribe to
						see Secret Deals</h2>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-7 -->
			<div class="col-lg-5">
				<div class="subscriber-box">
					<div class="contact-form-action">
						<form action="#">
							<div class="input-box">
								<label class="label-text text-white">Enter email address</label>
								<div class="form-group mb-0">
									<span class="la la-envelope form-icon"></span> <input
										class="form-control" type="email" name="email"
										placeholder="Email address">
									<button class="theme-btn theme-btn-small submit-btn"
										type="submit">Subscribe</button>
									<span class="font-size-14 pt-1 text-white-50"><i
										class="la la-lock mr-1"></i>Don't worry your information is
										safe with us.</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-5 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end cta-area -->
<!-- ================================
    END CTA AREA
================================= -->

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
					<p class="footer__desc">Morbi convallis bibendum urna ut
						viverra. Maecenas consequat</p>
					<ul class="list-items pt-3">
						<li>3015 Grand Ave, Coconut Grove,<br> Cerrick Way, FL
							12345
						</li>
						<li>+123-456-789</li>
						<li><a href="#">trizen@yourwebsite.com</a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">Company</h4>
					<ul class="list-items list--items">
						<li><a href="about.html">About us</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="#">Jobs</a></li>
						<li><a href="blog-grid.html">News</a></li>
						<li><a href="contact.html">Support</a></li>
						<li><a href="#">Advertising</a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">Other Services</h4>
					<ul class="list-items list--items">
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Trizen.com Rewards</a></li>
						<li><a href="#">Partners</a></li>
						<li><a href="#">List My Hotel</a></li>
						<li><a href="#">All Hotels</a></li>
						<li><a href="#">TV Ads</a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">Other Links</h4>
					<ul class="list-items list--items">
						<li><a href="#">USA Vacation Packages</a></li>
						<li><a href="#">USA Flights</a></li>
						<li><a href="#">USA Hotels</a></li>
						<li><a href="#">USA Car Hire</a></li>
						<li><a href="#">Create an Account</a></li>
						<li><a href="#">Trizen Reviews</a></li>
					</ul>
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
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Help Center</a></li>
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
						&copy; Copyright Trizen 2020. Made with <span class="la la-heart"></span>
						by <a href="https://themeforest.net/user/techydevs/portfolio">TechyDevs</a>
					</p>
				</div>
				<!-- end copy-right -->
			</div>
			<!-- end col-lg-7 -->
			<div class="col-lg-5">
				<div
					class="copy-right-content d-flex align-items-center justify-content-end padding-top-30px">
					<h3 class="title font-size-15 pr-2">We Accept</h3>
					<img src="images/payment-img.png" alt="">
				</div>
				<!-- end copy-right-content -->
			</div>
			<!-- end col-lg-5 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- Footer -->
<%@include file="../include/footer-search2.jsp"%>
<script>
   $("#selOrderType").on("change", function(){
      subSearch();
   })
   
   /* 
   let currentPage = 1;
   //현재 페이지가 로딩중인지 여부를 저장할 변수이다.
   let isLoading=false;
   
   
   //웹브라우저의 창을 스크롤 할 때 마다 호출되는 함수 등록
/*    $(window).on("scoll", function(){
      //위로 스크롤된 길이
      let scrollTop=$(window).scrollTop();
      //웹브라우저의 창의 높이
      let windowHeight=$(window).height();
      //문서 전체의 높이
      let documentHeight=$(document).height();
      //바닥까지 스크롤 되었는 지 여부를 알아낸다.
      let isBottom = scrollTop+windowHeight + 10 >= documentHeight;
      
      if(isBottom){
         //만일 현재 마지막 페이지라면
         if(currentPage == $${totalPageCount} || isLoading){
            return; //함수를 여기서  끝낸다.
         }
         //현재 로딩 중이라고 표시한다.
         isLoading = true;
         //로딩바를 듸우고
         $(".back-drop".)show();
         //요청할 페이지 번호를 1 증가시킨다.
         currentPage++;
         //추가로 받아올 페이지를 서버에 ajax 요청을 하고
         console.log("inscroll"+currentPage);
      };
      
   }); */

   
   function subSearch() {
      console.log(1111);
      $('#checkinDt').val($('#ajaxCheckIn').val()); //checkinDt는 히든값, ajaxCheckIn은 input태그내에 id값
      $('#checkoutDt').val($('#ajaxCheckOut').val()); 
      var arrPrice = $("#amount2").val().replace(/원/gi, "").split("-");
      $("#orderType").val($('#selOrderType').val());
      console.log($("#startPrice").val());
      console.log($("#orderType").val());
      $("#startPrice").val(arrPrice[0].trim());
      $("#endPrice").val(arrPrice[1].trim());
      
      var form = $('#ajaxForm').serialize();    
         $.ajax({
               url : "ajaxSearch.do",
               type : 'POST',
               data : form,
               dataType : 'json',
               //contentType : "application/json",
               success : function(data) {
                  console.log(data);
                  $("#ajaxSearchList").html("");
                  var htmlStr = '';
                  for (var i = 0; i < data['ajaxHotelList'].length; i++) {

                     htmlStr += '<div class="card-item card-item-list">';
                     htmlStr += '   <div class="card-img">';
                     htmlStr += '      <a href="${pageContext.request.contextPath}/hotelRoomList.do" class="d-block">';
                     htmlStr += '         <img src="<c:url value="/upload/'+ data['ajaxHotelList'][i].fileName + '"/>"/>';
                     htmlStr += '        </a> ';
                     htmlStr += '    </div>';
                     htmlStr += '    <div class="card-body">';
                     htmlStr += '         <h3 class="card-title">';
                     htmlStr += '           <a href="${pageContext.request.contextPath}/hotelRoomList.do?hotelIdx=' + data['ajaxHotelList'][i].hotelIdx + '"> '+ data['ajaxHotelList'][i].hotelName;
                     htmlStr += '           </a>';
                     htmlStr += '         </h3>';
                     htmlStr += '         <p class="card-meta">'+ data['ajaxHotelList'][i].hotelCountry + ', ' + data['ajaxHotelList'][i].hotelCity;
                     htmlStr += '         </p>';
                     htmlStr += '   <div class="card-rating">';
                     htmlStr += '      <span class="badge text-white">평점: '+ data['ajaxHotelList'][i].hotelRate +' "/5" </span><br>';
                     htmlStr += '      <span class="review__text"> ' + data['ajaxHotelList'][i].hotelGrade + ' +"성급" </span> ';
                     htmlStr += '    </div>';
                     htmlStr += '    <div class="card-price d-flex align-items-center justify-content-between">';
                     htmlStr += '       <p>';
                     htmlStr += '           <span class="price__from">최저가</span>';
                     htmlStr += '          <span class="price__num">' + data['ajaxHotelList'][i].minPrice + '"원" </span>';
                     htmlStr += '        </p>';
                     htmlStr += '       <a href="${pageContext.request.contextPath}/hotelRoomList.do?hotelIdx=' + data['ajaxHotelList'][i].hotelIdx + '" class="btn-text">자세히 ';
                     htmlStr += '      <i class="la la-angle-right"></i></a>';
                     htmlStr += '   </div>';
                     htmlStr += '   </div>';
                     htmlStr += '</div>';
                  }

                  console.log(data);

                  $("#ajaxSearchList").append(htmlStr);

               },
               error : function(xhr, status, msg) {
                  console.log(xhr);
                  console.log("상태값:" + status + "Http에러메시지:" + msg);
               }
            });
      }
   
   $('#subSearchBtn').on('click', subSearch);
   
</script>

<script>
 
/* $(document).on('click', '.qtyDec, .qtyInc', function () {
    var $button = $(this);
    numberButtonFunc($button);
});

function numberButtonFunc($button) {
    var oldValue = $button.parent().find("input").val();
    var total = 0;
    $('input[type="text"]').each(function () {
        total += parseInt($(this).val());
    });
    var newVal ;
    if ($button.hasClass('qtyInc')) {
        newVal = parseFloat(oldValue) + 1;
    } else {
        if (oldValue > 0) {
            newVal = parseFloat(oldValue) - 1;
        } else {
            newVal = 0;
        }
    }
    $button.parent().find("input").val(newVal).trigger('change');
}

$('.gty-container').each(function () {
    var parent = $(this);
    // Adult quantity number
    $('input[name="HotelAdult"]', parent).change(function () {
        var adults = parseInt($(this).val());
        var html = adults;
        if (typeof adults == 'number') {
            if (adults >= 2) {
                html = adults + ' ' + $('.adult', parent).data('text');
            } else {
                html = adults + ' ' + $('.adult', parent).data('text-multi');
            }
        }
        $('.adult', parent).html(html);
    });
    $('input[name="HotelAdult"]', parent).trigger('change');

    // Children quantity number
    $('input[name="HotelChild"]', parent).change(function () {
        var children = parseInt($(this).val());
        var html = children;
        if (typeof children == 'number') {
            if (children >= 2) {
                html = children + ' ' + $('.children', parent).data('text');
            } else {
                html = children + ' ' + $('.children', parent).data('text-multi');
            }
        }
        $('.children', parent).html(html);
    });
    $('input[name="HotelChild"]', parent).trigger('change');
    
    


    // room quantity number
    $('input[name="roomNumber"]', parent).change(function () {
        var room = parseInt($(this).val());
        var html = room;
        if (typeof room == 'number') {
            if (room >= 0) {
                html = room + ' ' + $('.room', parent).data('text');
            } else {
                html = room + ' ' + $('.room', parent).data('text-multi');
            }
        }
        $('.room', parent).html(html);
    });
    $('input[name="roomNumber"]', parent).trigger('change');

}); */

</script> 

<script>
$(document).ready(function() {
var rangeSliderTwo = $('#slider-range2');
var rangeSliderAmountTwo = $('#amount2');

/*======= ui price range slider 2 ========*/
if ($(rangeSliderTwo).length) {
    $(rangeSliderTwo).slider({
        range: true,
        min: 0,
        max: 100000,
        values: [ 30000, 50000 ],
        slide: function( event, ui ) {
            $(rangeSliderAmountTwo).val( ui.values[ 0 ] + "원" + " - "  + ui.values[ 1 ] + "원" );
        }
    });
}

$(rangeSliderAmountTwo).val(  $(rangeSliderTwo).slider( "values", 0 ) + "원"  +
    " - " + $(rangeSliderTwo).slider( "values", 1 ) + "원" );
});

</script>