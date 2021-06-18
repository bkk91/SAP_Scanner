<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header.jsp"%>
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
													<label for="amount" class="filter__label">Price:</label> <input
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
													type="button">Apply</button>
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
										role="button" data-toggle="dropdown"> 리뷰점수 </a>
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
										role="button" data-toggle="dropdown"> 시설 </a>
									<div class="dropdown-menu dropdown-menu-wrap">
										<div class="dropdown-item">
											<div class="checkbox-wrap">
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb1"> <label
														for="catChb1">애완견 가능</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb2"> <label
														for="catChb2">그룹 가능</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb3"> <label
														for="catChb3">여행 가이드</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb4"> <label
														for="catChb4">장애인용</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb5"> <label
														for="catChb5">룸서비스</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb6"> <label
														for="catChb6">주차</label>
												</div>
												<div class="custom-checkbox">
													<input type="checkbox" id="catChb7"> <label
														for="catChb7">레스토랑</label>
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
								<option value="2">추천순</option>
								<option value="3">높은가격순</option>
								<option value="4">낮은가격순</option>
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
		<div class="row">
			<div class="col-lg-4">
				<div class="sidebar mt-0">
					<div class="sidebar-widget">
						<h3 class="title stroke-shape">지역/호텔 검색</h3>
						<div class="sidebar-widget-item">
							<div class="contact-form-action">
								<form action="#">
									<div class="input-box">
										<label class="label-text">지역/ 호텔명</label>
										<div class="form-group">
											<span class="la la-map-marker form-icon"></span> <input
												class="form-control" type="text" name="text"
												placeholder="지역,호텔명">
										</div>
									</div>
									<div class="input-box">
										<label class="label-text">체크인 - 체크아웃</label>
										<div class="form-group">
											<span class="la la-calendar form-icon"></span> <input
												class="date-range form-control" type="text" name="daterange"
												readonly>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- end sidebar-widget-item -->


						<div class="sidebar-widget-item">
							<div
								class="qty-box mb-2 d-flex align-items-center justify-content-between">
								<label class="font-size-16">객실</label>
								<div class="roomBtn d-flex align-items-center">
									<div class="roomDec">
										<i class="la la-minus"></i>
									</div>
									<input type="text" name="roomInput" value="0">
									<div class="roomInc">
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
									<input type="text" name="qtyInput" value="0">
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
									<input type="text" name="qtyInput" value="0">
									<div class="qtyInc">
										<i class="la la-plus"></i>
									</div>
								</div>
							</div>
							<!-- end qty-box -->
						</div>
						<!-- end sidebar-widget-item -->
						<div class="btn-box pt-2">
							<a href="hotel-search-result.html" class="theme-btn">Search
								Now</a>
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
							<div class="btn-box pt-4">
								<button class="theme-btn theme-btn-small theme-btn-transparent"
									type="button">확인</button>
							</div>
						</div>
					</div>
					<!-- end sidebar-widget -->
					<div class="sidebar-widget">
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
					</div>
					<!-- end sidebar-widget -->
					<div class="sidebar-widget">
						<h3 class="title stroke-shape">별점</h3>
						<div class="sidebar-review">
							<div class="custom-checkbox">
								<input type="checkbox" id="s1"> <label for="s1">
									<span class="ratings d-flex align-items-center"> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star"></i> <span
										class="color-text-3 font-size-13 ml-1">(55.590)</span>
								</span>
								</label>
							</div>
							<div class="custom-checkbox">
								<input type="checkbox" id="s2"> <label for="s2">
									<span class="ratings d-flex align-items-center"> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star-o"></i> <span
										class="color-text-3 font-size-13 ml-1">(40.590)</span>
								</span>
								</label>
							</div>
							<div class="custom-checkbox">
								<input type="checkbox" id="s3"> <label for="s3">
									<span class="ratings d-flex align-items-center"> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star"></i> <i class="la la-star-o"></i> <i
										class="la la-star-o"></i> <span
										class="color-text-3 font-size-13 ml-1">(23.590)</span>
								</span>
								</label>
							</div>
							<div class="custom-checkbox">
								<input type="checkbox" id="s4"> <label for="s4">
									<span class="ratings d-flex align-items-center"> <i
										class="la la-star"></i> <i class="la la-star"></i> <i
										class="la la-star-o"></i> <i class="la la-star-o"></i> <i
										class="la la-star-o"></i> <span
										class="color-text-3 font-size-13 ml-1">(12.590)</span>
								</span>
								</label>
							</div>
							<div class="custom-checkbox mb-0">
								<input type="checkbox" id="s5"> <label for="s5">
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
							<a class="btn-text" data-toggle="collapse" href="#facilitiesMenu"
								role="button" aria-expanded="false"
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



			<div class="col-lg-8">
				<div class="card-item card-item-list">
					<div class="card-img">
						<a href="room-details.html" class="d-block"> <img
							src="images/img1.jpg" alt="hotel-img">
						</a> <span class="badge">Bestseller</span>
						<div class="add-to-wishlist icon-element" data-toggle="tooltip"
							data-placement="top" title="Bookmark">
							<i class="la la-heart-o"></i>
						</div>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="room-details.html">The Millennium Hilton New York</a>
						</h3>
						<p class="card-meta">124 E Huron St, New york</p>
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
							<a href="room-details.html" class="btn-text">See details<i
								class="la la-angle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- end card-item -->
				<div class="card-item card-item-list">
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
				<div class="card-item card-item-list">
					<div class="card-img">
						<a href="hotel-single.html" class="d-block"> <img
							src="images/img3.jpg" alt="hotel-img">
						</a> <span class="badge">Featured</span>
						<div class="add-to-wishlist icon-element" data-toggle="tooltip"
							data-placement="top" title="Bookmark">
							<i class="la la-heart-o"></i>
						</div>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="hotel-single.html">Hyatt Regency Maui Resort & Spa</a>
						</h3>
						<p class="card-meta">200 Nohea Kai Dr, Lahaina, HI</p>
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
				<div class="card-item card-item-list">
					<div class="card-img">
						<a href="hotel-single.html" class="d-block"> <img
							src="images/img4.jpg" alt="hotel-img">
						</a> <span class="badge">Popular</span>
						<div class="add-to-wishlist icon-element" data-toggle="tooltip"
							data-placement="top" title="Bookmark">
							<i class="la la-heart-o"></i>
						</div>
					</div>
					<div class="card-body">
						<h3 class="card-title">
							<a href="hotel-single.html">Four Seasons Resort Maui at
								Wailea</a>
						</h3>
						<p class="card-meta">3900 Wailea Alanui Drive, Kihei, HI</p>
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
				<div class="card-item card-item-list">
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
				<div class="card-item card-item-list">
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
							<a href="hotel-single.html">Hotel Europe Saint Severin Paris</a>
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
				<div class="card-item card-item-list">
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
							<a href="hotel-single.html">Grand Desert Resort</a>
						</h3>
						<p class="card-meta">Delaware, USA</p>
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
			</div>
			<!-- end col-lg-8 -->
		</div>
		<!-- end row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="btn-box mt-3 text-center">
					<button type="button" class="theme-btn">
						<i class="la la-refresh mr-1"></i>Load More
					</button>
					<p class="font-size-13 pt-2">Showing 1 - 6 of 2224 Hotels</p>
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
<%@include file="../include/footer.jsp"%>
