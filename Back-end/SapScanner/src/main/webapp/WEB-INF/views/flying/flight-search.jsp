<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>
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
				<div class="col-lg-12">
					<div class="search-result-content">
						<div class="section-heading">
							<h2 class="sec__title text-white"></h2>
						</div>
						<div class="section-tab text-center pl-4">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item"><a
									class="nav-link d-flex align-items-center active"
									id="flight-tab" data-toggle="tab" href="#flight" role="tab"
									aria-controls="flight" aria-selected="true"> <i
										class="la la-plane mr-1"></i>항공권
								</a></li>
							</ul>
						</div>
						<div class="tab-content search-fields-container" id="myTabContent">
							<div class="tab-pane fade show active" id="flight"
								role="tabpanel" aria-labelledby="flight-tab">
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
											<form action="#" class="row align-items-center">
												<div class="col-lg-6 pr-0">
													<div class="input-box">
														<label class="label-text">출발지</label>
														<div class="form-group">
															<span class="la la-map-marker form-icon"></span> <input
																class="form-control" type="text" placeholder="도시 또는 공항">
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-6">
													<div class="input-box">
														<label class="label-text">도착지</label>
														<div class="form-group">
															<span class="la la-map-marker form-icon"></span> <input
																class="form-control" type="text" placeholder="도시 또는 공항">
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-3 pr-0">
													<div class="input-box">
														<label class="label-text">출발일</label>
														<div class="form-group">
															<span class="la la-calendar form-icon"></span> <input
																class="date-range form-control" type="text"
																name="daterange-single" readonly>
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
																	aria-expanded="false"> <span class="adult"
																	data-text="Adult" data-text-multi="Adults">0 어른</span>
																	- <span class="children" data-text="Child"
																	data-text-multi="Children">0 어린이</span>
																</a>
																<div class="dropdown-menu dropdown-menu-wrap">
																	<div class="dropdown-item">
																		<div
																			class="qty-box d-flex align-items-center justify-content-between">
																			<label>어른</label>
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
																			<label>어린이</label>
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
																			<label>유아</label>
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
														<label class="label-text">등급</label>
														<div class="form-group select-contain w-auto">
															<select class="select-contain-select">
																<option value="1" selected>이코노미</option>
																<option value="2">비지니스</option>
																<option value="3">1등석</option>
															</select>
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-3">
													<a href="flight-list.do"
														class="theme-btn w-100 text-center margin-top-20px">지금
														검색하기</a>
												</div>
											</form>
										</div>
									</div>
									<!-- end tab-pane -->
									<div class="tab-pane fade" id="round-trip" role="tabpanel"
										aria-labelledby="round-trip-tab">
										<div class="contact-form-action">
											<form action="#" class="row align-items-center">
												<div class="col-lg-6 pr-0">
													<div class="input-box">
														<label class="label-text">출발지</label>
														<div class="form-group">
															<span class="la la-map-marker form-icon"></span> <input
																class="form-control" type="text" placeholder="도시 또는 공항">
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-6">
													<div class="input-box">
														<label class="label-text">도착지</label>
														<div class="form-group">
															<span class="la la-map-marker form-icon"></span> <input
																class="form-control" type="text" placeholder="도시 또는 공항">
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-3 pr-0">
													<div class="input-box">
														<label class="label-text">출발일 - 도착일</label>
														<div class="form-group">
															<span class="la la-calendar form-icon"></span> <input
																class="date-range form-control" type="text"
																name="daterange" readonly>
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
																	aria-expanded="false"> <span class="adult"
																	data-text="Adult" data-text-multi="Adults">0 어른</span>
																	- <span class="children" data-text="Child"
																	data-text-multi="Children">0 어린이</span>
																</a>
																<div class="dropdown-menu dropdown-menu-wrap">
																	<div class="dropdown-item">
																		<div
																			class="qty-box d-flex align-items-center justify-content-between">
																			<label>어른</label>
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
																			<label>어린이</label>
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
																			<label>유아</label>
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
														<label class="label-text">등급</label>
														<div class="form-group">
															<div class="select-contain w-auto">
																<select class="select-contain-select">
																	<option value="1" selected>이코노미</option>
																	<option value="2">비지니스</option>
																	<option value="3">1등석</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<!-- end col-lg-3 -->
												<div class="col-lg-3">
													<a href="flight-list.do"
														class="theme-btn w-100 text-center margin-top-20px">지금
														검색하기</a>
												</div>
											</form>
										</div>
										<div class="advanced-wrap">
											<a class="btn collapse-btn theme-btn-hover-gray font-size-15"
												data-toggle="collapse" href="#collapseThree" role="button"
												aria-expanded="false" aria-controls="collapseThree"> 추가
												옵션선택 <i class="la la-angle-down ml-1"></i>
											</a>
											<div class="collapse pt-3" id="collapseThree">
												<div class="row">
													<div class="col-lg-4">
														<div class="input-box">
															<label class="label-text">선호하는 항공사</label>
															<div class="form-group">
																<div class="select-contain w-100">
																	<select class="select-contain-select">
																		<option selected="selected" value="">상관없음</option>
																		<option value="AN">Advanced Air</option>
																		<option value="A3">Aegean</option>
																		<option value="7Q">Elite Airways</option>
																		<option value="EL">Ellinair</option>
																		<option value="EK">Emirates</option>
																		<option value="EY">Etihad Airways</option>
																		<option value="EW">Eurowings</option>
																		<option value="BR">EVA Airways</option>
																		<option value="FJ">Fiji Airways</option>
																		<option value="AY">Finnair</option>
																		<option value="FY">Firefly</option>
																		<option value="F8">Flair Airlines</option>
																		<option value="BE">Flybe</option>
																		<option value="GF">Gulf Air</option>
																		<option value="HU">Hainan Airlines</option>
																		<option value="IB">Iberia</option>
																		<option value="FI">Icelandair</option>
																		<option value="4O">Interjet</option>
																		<option value="03">Involatus</option>
																		<option value="JL">Japan Airlines</option>
																		<option value="9W">Jet Airways</option>
																		<option value="B6">JetBlue Airways</option>
																		<option value="KQ">Kenya Airways</option>
																		<option value="KL">KLM</option>
																		<option value="KE">Korean Air</option>
																		<option value="B0">La Compagnie</option>
																		<option value="LR">LACSA</option>
																		<option value="QV">Lao Airlines</option>
																		<option value="WY">Oman Air</option>
																		<option value="8Q">Onur Air</option>
																		<option value="H2">Sky Airlines</option>
																		<option value="GQ">Sky Express</option>
																		<option value="IE">Solomon Airlines</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- end advanced-wrap -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end breadcrumb-wrap -->
</section>
<!-- end breadcrumb-area -->
<!-- ================================
    START DESTINATION AREA
================================= -->
<section class="destination-area section--padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/destination1.jpg" alt="destination-img"> <span
							class="badge">뉴욕</span>
					</div>
					<div class="card-body">
						<div class="card-rating d-flex align-items-center">
							<span class="ratings d-flex align-items-center mr-1"> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star"></i> <i class="la la-star"></i> <i
								class="la la-star-o"></i>
							</span> <span class="rating__text"></span>
						</div>
						<div
							class="card-price d-flex align-items-center justify-content-between">
							<p class="tour__text"></p>
							<p>
								<span class="price__from">Price</span> <span class="price__num">$58.00</span>
							</p>
						</div>
					</div>
				</div>
				<!-- end card-item -->
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/destination2.jpg" alt="destination-img"> <span
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
							</span> <span class="rating__text">(70694 Reviews)</span>
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
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/destination3.jpg" alt="destination-img"> <span
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
							</span> <span class="rating__text">(70694 Reviews)</span>
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
						<img src="images/destination4.jpg" alt="destination-img"> <span
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
							</span> <span class="rating__text">(70694 Reviews)</span>
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
			<div class="col-lg-4 responsive-column">
				<div class="card-item destination-card">
					<div class="card-img">
						<img src="images/destination5.jpg" alt="destination-img"> <span
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
<!-- footer -->
<%@include file="../include/footer.jsp"%>
