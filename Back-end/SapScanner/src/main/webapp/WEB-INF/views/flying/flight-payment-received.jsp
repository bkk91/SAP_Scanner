<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header.jsp"%>
<!-- Header -->
<!-- ================================
    START PAYMENT AREA
================================= -->
<section class="payment-area section-bg section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="form-box payment-received-wrap mb-0">
					<div class="form-title-wrap">
						<div class="step-bar-wrap text-center">
							<ul
								class="step-bar-list d-flex align-items-center justify-content-around">
								<li class="step-bar flex-grow-1 step-bar-active"><span
									class="icon-element">1</span>
									<p class="pt-2 color-text-2">항공권 선택</p></li>
								<li class="step-bar flex-grow-1 step-bar-active"><span
									class="icon-element">2</span>
									<p class="pt-2 color-text-2">예약 및 결제상태</p></li>
								<li class="step-bar flex-grow-1"><span class="icon-element">3</span>
									<p class="pt-2 color-text-2">결제 완료!</p></li>
							</ul>
						</div>
					</div>


					<div class="form-content">
						<div class="row">
							<div class="col-lg-6">
								<div class="payment-received-list">
									<h3 class="title font-size-24">EnVision Hotel Boston</h3>
									<div class="card-rating">
										<span class="badge badge-warning text-white">4.4/5</span> <span
											class="review__text text-warning">Average</span> <span
											class="rating__text">(30 Reviews)</span>
									</div>
									<ul class="list-items list-items-2 py-3">
										<li><span>지역:</span>Delaware, OH, USA</li>
										<li><span>체크인:</span>Thu 30 Mar, 2020</li>
										<li><span>체크아웃:</span>Sat 01 Jun, 2020</li>
										<li><span>예약 정보:</span>2 Nights, 1 Room, Max 2 Adult(s)</li>
										<li><span>방유형:</span>Luxury View Suite</li>
										<li><span>고객:</span>David Martin</li>
									</ul>
								</div>
								<!-- end card-item -->
							</div>
							<!-- end col-lg-6 -->
							<div class="col-lg-6">
								<div class="card-item card-item-list payment-received-card">
									<div class="card-img">
										<img src="images/img1.jpg" alt="hotel-img">
									</div>
									<div class="card-body">
										<h3 class="card-title">1 Room x 2 Nights</h3>
										<div class="card-price pb-3">
											<span class="price__from">From</span> <span
												class="price__num">$88.00</span> <span class="price__text">Per
												night</span>
										</div>
										<div class="section-block"></div>
										<p class="card-text pt-3">Hotel tax 7% not included,
											Service charge 10% not included</p>
									</div>
								</div>
								<!-- end card-item -->
							</div>
							<!-- end col-lg-6 -->
						</div>
						<!-- end row -->
						<div class="row">
							<div class="col-lg-6">
								<div class="payment-received-list">
									<h3 class="title">받은정보</h3>

									<div class="table-form table-responsive pt-3 pb-3">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">예약번호</th>
													<th scope="col">날짜</th>
													<th scope="col">결제금액</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">#121</th>
													<td>
														<div class="table-content">
															<h3 class="title">Thu 30 Mar, 2020</h3>
														</div>
													</td>
													<td>
														<div class="table-content">
															<h3 class="title">$88</h3>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p>우리 은행 계좌로 바로 입금해 주세요. 주문 ID를 결제 참조로 사용하십시오. 당신의 주문은 우리의
										계좌에서 자금이 청산될 때까지 선적되지 않을 것입니다.</p>
								</div>
								<!-- end card-item -->
							</div>
							<!-- end col-lg-6 -->
							<div class="col-lg-6">
								<!--   <div class="payment-received-list">
                                    <h3 class="title">결제상세</h3>
                                    <div class="table-form table-layout-2 table-responsive pt-3">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th scope="col">객실</th>
                                                <th scope="col" class="text-right">총</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <div class="table-content">
                                                        <p class="title pb-2">EnVision Hotel Boston</p>
                                                        <p class="font-size-13 text-gray line-height-20 font-weight-medium"><span class="mr-2 color-text-2">체크인:</span>Thu 30 Mar, 2020</p>
                                                        <p class="font-size-13 text-gray line-height-20 font-weight-medium"><span class="mr-2 color-text-2">End Date:</span>Sat 01 Jun, 2020</p>
                                                    </div>
                                                </th>
                                                <td>
                                                    <div class="table-content text-right">
                                                        <h3 class="title color-text">$88</h3>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">
                                                    <div class="table-content">
                                                        <p class="title">Subtotal</p>
                                                    </div>
                                                </th>
                                                <td>
                                                    <div class="table-content text-right">
                                                        <h3 class="title color-text">$88</h3>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">
                                                    <div class="table-content">
                                                        <p class="title">Order Total</p>
                                                    </div>
                                                </th>
                                                <td>
                                                    <div class="table-content text-right">
                                                        <h3 class="title color-text">$88</h3>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!-- end card-item -->


							</div>
							<!-- end col-lg-6 -->
							<div class="col-lg-12">
								<div class="section-block mt-3"></div>
								<div class="btn-box text-center pt-4">
									<a href="payment-complete.html" class="theme-btn">결제 완료</a>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
				</div>
				<!-- end payment-card -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- ================================
    END PAYMENT AREA
================================= -->
<!-- Footer -->
<%@include file="../include/footer.jsp"%>
