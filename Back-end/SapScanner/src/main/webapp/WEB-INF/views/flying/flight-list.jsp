<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header.jsp"%>
<!-- Header -->
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
										<a href="flight-search-result.do" class="theme-btn">찾아보기</a>
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
							<a href="flight-single.do"
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
							<a href="flight-single.do"
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
							<a href="flight-single.do"
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
							<a href="flight-single.do"
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
							<a href="flight-single.do"
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
							<a href="flight-single.do"
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
<!-- Footer -->
<%@include file="../include/footer.jsp"%>
