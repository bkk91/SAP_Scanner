<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-search.jsp"%>
<!-- Header -->
<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area bread-bg-10">

	<div class="bread-svg-box">
		<svg class="bread-svg" xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 100 10" preserveAspe>
			</svg>
</section>
<!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
    START BOOKING AREA
================================= -->
<section class="booking-area padding-top-100px padding-bottom-70px">
	<div class="container">

		<div class="form-title-wrap">
			<div class="step-bar-wrap text-center">
				<ul
					class="step-bar-list d-flex align-items-center justify-content-around">
					<li class="step-bar flex-grow-1 step-bar-active"><span
						class="icon-element">1</span>
						<p class="pt-2 color-text-2">결제창</p></li>
					<li class="step-bar flex-grow-1"><span class="icon-element">2</span>
						<p class="pt-2 color-text-2">예약확인</p></li>
					<li class="step-bar flex-grow-1"><span class="icon-element">3</span>
						<p class="pt-2 color-text-2">결제완료</p></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-8">
				<div class="form-box">
					<div class="form-title-wrap">
						<h3 class="title">예약정보</h3>
					</div>
					<!-- form-title-wrap -->
					<div class="form-content ">
						<div class="contact-form-action">
							<form method="post">
								<div class="row">
									<div class="col-lg-6 responsive-column">
										<div class="input-box">
											<label class="label-text">성함</label>
											<div class="form-group">
												<span class="la la-user form-icon"></span> <input
													class="form-control" type="text" name="text"
													placeholder="First name">
											</div>
										</div>
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-6 responsive-column">
										<!--      <div class="input-box">
                                            <label class="label-text">Last Name</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="Last name">
                                            </div>
                                        </div> -->
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-6 responsive-column">
										<div class="input-box">
											<label class="label-text">이메일</label>
											<div class="form-group">
												<span class="la la-envelope-o form-icon"></span> <input
													class="form-control" type="email" name="email"
													placeholder="Email address">
											</div>
										</div>
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-6 responsive-column">
										<div class="input-box">
											<label class="label-text">전화번호</label>
											<div class="form-group">
												<span class="la la-phone form-icon"></span> <input
													class="form-control" type="text" name="text"
													placeholder="Phone Number">
											</div>
										</div>
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-12 responsive-column">
										<!--  <div class="input-box">
                                            <label class="label-text">Address Line</label>
                                            <div class="form-group">
                                                <span class="la la-map-marked form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="Address line">
                                            </div>
                                        </div> -->
									</div>
									<!-- end col-lg-12 -->


									<div class="col-lg-6 responsive-column">
										<div class="input-box">
											<label class="label-text">체크인시간</label>
											<div class="form-group">
												<div class="select-contain w-auto">
													<select class="select-contain-select">
														<option value="select-country">시간을 선택하세요</option>
														<option value="Afghanistan">13:00~14:00</option>
														<option value="Åland Islands">14:00~15:00</option>
														<option value="Albania">15:00~16:00</option>
														<option value="Algeria">16:00~17:00</option>
														<option value="American Samoa">17:00~18:00</option>
														<option value="Andorra">18:00~19:00</option>
														<option value="Angola">19:00~20:00</option>
														<option value="Anguilla">20:00~21:00</option>
														<option value="Antarctica">21:00~22:00</option>
														<option value="Antigua and Barbuda">22:00~23:00</option>
														<option value="Argentina">23:00~24:00</option>

													</select>
												</div>
											</div>
										</div>
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-6 responsive-column">
										<!--                   <div class="input-box">
                                            <label class="label-text">Country Code</label>
                                            <div class="form-group">
                                                <div class="select-contain w-auto">
                                                    <select class="select-contain-select">
                                                        <option value="country-code">Select country code</option>
                                                        <option value="1">United Kingdom (+44)</option>
                                                        <option value="2">United States (+1)</option>
                                                        <option value="3">Bangladesh (+880)</option>
                                                        <option value="4">Brazil (+55)</option>
                                                        <option value="5">China (+86)</option>
                                                        <option value="6">India (+91)</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div> -->
									</div>
									<!-- end col-lg-6 -->
									<div class="col-lg-12">
										<!--       <div class="input-box">
                                            <div class="form-group mb-0">
                                                <div class="custom-checkbox mb-0">
                                                    <input type="checkbox" id="receiveChb">
                                                    <label for="receiveChb">I want to receive Trizen's promotional offers in the future</label>
                                                </div>
                                            </div>
                                        </div> -->
									</div>
									<!-- end col-lg-12 -->
								</div>
							</form>
						</div>
						<!-- end contact-form-action -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
				<div class="form-box">
					<div class="form-title-wrap">
						<h3 class="title">카드 정보</h3>
					</div>
					<!-- form-title-wrap -->
					<div class="form-content">
						<div class="section-tab check-mark-tab text-center pb-4">
							<ul class="nav nav-tabs justify-content-center" id="myTab"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="credit-card-tab" data-toggle="tab" href="#credit-card"
									role="tab" aria-controls="credit-card" aria-selected="false">
										<i class="la la-check icon-element"></i> <img
										src="images/payment-img.png" alt=""> <span
										class="d-block pt-2">Payment with credit card</span>
								</a></li>
								<!--            <li class="nav-item">
                                    <a class="nav-link" id="paypal-tab" data-toggle="tab" href="#paypal" role="tab" aria-controls="paypal" aria-selected="true">
                                        <i class="la la-check icon-element"></i>
                                        <img src="images/paypal.png" alt="">
                                        <span class="d-block pt-2">Payment with PayPal</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="payoneer-tab" data-toggle="tab" href="#payoneer" role="tab" aria-controls="payoneer" aria-selected="true">
                                        <i class="la la-check icon-element"></i>
                                        <img src="images/payoneer.png" alt="">
                                        <span class="d-block pt-2">Payment with payoneer</span>
                                    </a>
                                </li> -->
							</ul>
						</div>
						<!-- end section-tab -->
						<div class="tab-content">
							<div class="tab-pane fade show active" id="credit-card"
								role="tabpanel" aria-labelledby="credit-card-tab">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">카드 소지자 성함</label>
													<div class="form-group">
														<span class="la la-credit-card form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Card holder name">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">카드 번호</label>
													<div class="form-group">
														<span class="la la-credit-card form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Card number">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="row">
													<div class="col-lg-6">
														<div class="input-box">
															<label class="label-text">만료 월</label>
															<div class="form-group">
																<span class="la la-credit-card form-icon"></span> <input
																	class="form-control" type="text" name="text"
																	placeholder="MM">
															</div>
														</div>
													</div>
													<div class="col-lg-6">
														<div class="input-box">
															<label class="label-text">만료년도</label>
															<div class="form-group">
																<span class="la la-credit-card form-icon"></span> <input
																	class="form-control" type="text" name="text"
																	placeholder="YY">
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">CVV</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="CVV">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												f
												<div class="input-box">
													<div class="form-group">
														<div class="custom-checkbox">
															<input type="checkbox" id="agreechb"> <label
																for="agreechb"><a href="#">이용 약관</a>에 동의합니다.</label>
														</div>
													</div>
												</div>
											</div>
											<!-- end col-lg-12 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<input class="theme-btn" type="button" value="결제확인"
														onClick="location.href='hotel-payment-received.html'">
													</button>

												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
							<div class="tab-pane fade" id="paypal" role="tabpanel"
								aria-labelledby="paypal-tab">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">Email Address</label>
													<div class="form-group">
														<span class="la la-envelope form-icon"></span> <input
															class="form-control" type="email" name="email"
															placeholder="Enter email address">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">Password</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Enter password">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" type="submit">Login
														Account</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
							<div class="tab-pane fade" id="payoneer" role="tabpanel"
								aria-labelledby="payoneer-tab">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">Email Address</label>
													<div class="form-group">
														<span class="la la-envelope form-icon"></span> <input
															class="form-control" type="email" name="email"
															placeholder="Enter email address">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6">
												<div class="input-box">
													<label class="label-text">Password</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" name="text"
															placeholder="Enter password">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" type="submit">Login
														Account</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
									</form>
								</div>
								<!-- end contact-form-action -->
							</div>
							<!-- end tab-pane-->
						</div>
						<!-- end tab-content -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
			</div>
			<!-- end col-lg-8 -->


			<div class="col-lg-4">
				<div class="form-box booking-detail-form">
					<div class="form-title-wrap">
						<h3 class="title">내 예약</h3>
					</div>
					<!-- end form-title-wrap -->
					<div class="form-content">
						<div class="card-item shadow-none radius-none mb-0">
							<div class="card-img pb-4">
								<a href="room-details.html" class="d-block"> <img
									src="images/img5.jpg" alt="room-img">
								</a>
							</div>
							<div class="card-body p-0">
								<div class="d-flex justify-content-between">
									<div>
										<h3 class="card-title">Premium Lake View Room</h3>
										<p class="card-meta">Mariana's hotel, Mexico</p>
									</div>
									<div>
										<a href="room-details.html" class="btn ml-1"><i
											class="la la-edit" data-toggle="tooltip" data-placement="top"
											title="Edit"></i></a>
									</div>
								</div>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 list-items-flush py-2">
									<li class="font-size-15"><span
										class="w-auto d-block mb-n1"><i
											class="la la-calendar mr-1 font-size-17"></i>체크인</span>12 May 2020</li>
									<li class="font-size-15"><span
										class="w-auto d-block mb-n1"><i
											class="la la-calendar mr-1 font-size-17"></i>체크아웃</span>16 May 2020</li>
								</ul>
								<h3 class="card-title pb-3">상세정보</h3>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 py-3">
									<li><span>객실타입:</span>Luxury</li>
									<!--  <li><span>Night:</span>1</li> -->
									<li><span>객실:</span>1</li>
									<li><span>인원:</span>2 adults</li>
									<li><span>서비스:</span>Cleaning, Laundry, Breakfast</li>
								</ul>
								<div class="section-block"></div>
								<ul class="list-items list-items-2 pt-3">
									<!--    <li><span>Sub Total:</span>$240</li>
                                    <li><span>Taxes And Fees:</span>$5</li> -->
									<li><span>총 결제금액:</span>500,000원</li>
								</ul>
							</div>
						</div>
						<!-- end card-item -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end booking-area -->
<!-- ================================
    END BOOKING AREA
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
					<p class="sec__desc text-white-50 pb-1">Newsletter sign up</p>
					<h2 class="sec__title font-size-30 text-white">Subscribe to
						Get Special Offers</h2>
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
<%@include file="../include/footer-search.jsp"%>
