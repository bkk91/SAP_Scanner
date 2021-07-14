<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>

<!-- start cssload-loader -->
<div class="preloader" id="preloader">
	<div class="loader">
		<svg class="spinner" viewBox="0 0 50 50">
            <circle class="path" cx="25" cy="25" r="20" fill="none"
				stroke-width="5"></circle>
        </svg>
	</div>
</div>

<section class="breadcrumb-area bread-bg-10">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-content text-center">
						<div class="section-heading">
							<h2 class="sec__title text-white">Room List</h2>
						</div>
						<span class="arrow-blink"> <i class="la la-arrow-down"></i>
						</span>
					</div>
					<!-- end breadcrumb-content -->
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
				<div class="filter-wrap margin-bottom-40px">
					<div
						class="filter-top d-flex align-items-center justify-content-between">
						<div class="section-tab section-tab-3">
							<ul class="nav nav-tabs" id="myTab4" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="all-tab" data-toggle="tab" href="#all" role="tab"
									aria-controls="all" aria-selected="false"> All </a></li>
								<li class="nav-item"><a class="nav-link" id="dorm-beds-tab"
									data-toggle="tab" href="#dorm-beds" role="tab"
									aria-controls="dorm-beds" aria-selected="false"> Dorm Beds
								</a></li>
								<li class="nav-item"><a class="nav-link"
									id="private-room-tab" data-toggle="tab" href="#private-room"
									role="tab" aria-controls="private-room" aria-selected="false">
										Private Room </a></li>
								<li class="nav-item"><a class="nav-link" id="suites-tab"
									data-toggle="tab" href="#suites" role="tab"
									aria-controls="suites" aria-selected="false"> Suites </a></li>
							</ul>
						</div>
						<!-- end section-tab -->
						<div class="layout-view d-flex align-items-center">
							<a href="room-grid.html" data-toggle="tooltip"
								data-placement="top" title="Grid View"><i
								class="la la-th-large"></i></a> <a href="room-list.html"
								data-toggle="tooltip" data-placement="top" title="List View"
								class="active"><i class="la la-th-list"></i></a>
						</div>
					</div>
				</div>
				<!-- end filter-wrap -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<div class="tab-content" id="may-tabContent4">
			<div class="tab-pane fade show active" id="all" role="tabpanel"
				aria-labelledby="all-tab">
				<div class="row">
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img5.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img29.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img30.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$88.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$45.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Standard 2 Bed Male Dorm</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Deluxe King Bed Private</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Suite</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Superior Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
			<div class="tab-pane fade" id="dorm-beds" role="tabpanel"
				aria-labelledby="dorm-beds-tab">
				<div class="row">
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Suite</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Superior Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img5.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img29.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img30.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$88.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$45.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Standard 2 Bed Male Dorm</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Deluxe King Bed Private</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
			<div class="tab-pane fade" id="private-room" role="tabpanel"
				aria-labelledby="private-room-tab">
				<div class="row">
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img5.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img29.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img30.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$88.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$45.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Standard 2 Bed Male Dorm</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Deluxe King Bed Private</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Suite</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Superior Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
			<div class="tab-pane fade" id="suites" role="tabpanel"
				aria-labelledby="suites-tab">
				<div class="row">
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$45.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Standard 2 Bed Male Dorm</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Deluxe King Bed Private</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img5.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img29.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img30.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$88.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Premium Lake View Suite</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
					<div class="col-lg-12">
						<div class="card-item card-item-list room-card">
							<div class="card-img-carousel carousel-action carousel--action">
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img31.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img32.jpg" alt="hotel-img">
									</a>
								</div>
								<div class="card-img">
									<a href="room-details.html" class="d-block"> <img
										src="images/img33.jpg" alt="hotel-img">
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="card-price pb-2">
									<p>
										<span class="price__from">From</span> <span class="price__num">$145.00</span>
									</p>
								</div>
								<h3 class="card-title font-size-26">
									<a href="room-details.html">Superior Room</a>
								</h3>
								<p class="card-text pt-2">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Aperiam asperiores commodi
									deleniti hic inventore laboriosam laborum molestias, non odit
									quaerat! Aperiam culpa facilis fuga impedit.</p>
								<div class="card-attributes pt-3 pb-4">
									<ul class="d-flex align-items-center">
										<li class="d-flex align-items-center"><i
											class="la la-bed"></i><span>2 Beds</span></li>
										<li class="d-flex align-items-center"><i
											class="la la-building"></i><span>24 ft<sup>2</sup></span></li>
										<li class="d-flex align-items-center"><i
											class="la la-bathtub"></i><span>2 Bathrooms</span></li>
									</ul>
								</div>
								<div class="card-btn">
									<a href="room-details.html"
										class="theme-btn theme-btn-transparent">Book Now</a>
								</div>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end col-lg-12 -->
				</div>
				<!-- end row -->
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="btn-box mt-4 text-center">
					<button type="button" class="theme-btn">
						<i class="la la-refresh mr-1"></i>Load More
					</button>
					<p class="font-size-13 pt-2">Showing 1 - 5 of 124 Rooms</p>
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

<!-- ================================
    START CHECK AVAILABILITY AREA
================================= -->
<section class="check-availability-area section-bg section-padding">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-12">
				<div class="check-availability-content">
					<div class="section-heading text-center">
						<h2 class="sec__title">Book Your Stay</h2>
					</div>
					<!-- end section-heading -->
					<div class="contact-form-action padding-top-40px">
						<form action="#">
							<div class="row">
								<div class="col-lg-3">
									<div class="input-box">
										<label class="label-text">Check-in</label>
										<div class="form-group">
											<span class="la la-calendar form-icon"></span> <input
												class="date-range form-control" type="text"
												name="daterange-single" readonly>
										</div>
									</div>
								</div>
								<!-- end col-lg-3 -->
								<div class="col-lg-3">
									<div class="input-box">
										<label class="label-text">Check-out</label>
										<div class="form-group">
											<span class="la la-calendar form-icon"></span> <input
												class="date-range form-control" type="text"
												name="daterange-single" readonly>