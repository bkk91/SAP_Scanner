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
								<li class="step-bar flex-grow-1 step-bar-active"><span
									class="icon-element">3</span>
									<p class="pt-2 color-text-2">결제 완료!</p></li>
							</ul>
						</div>
					</div>
					<div class="form-content">
						<div class="payment-received-list">
							<!-- <div class="d-flex align-items-center">
                                <i class="la la-check icon-element flex-shrink-0 mr-3 ml-0"></i>
                                <div>
                                    <h3 class="title pb-1">예약 확인</h3>
                                   
                                </div>
                            </div> -->
							<!--   <ul class="list-items py-4">
                                <li><i class="la la-check text-success mr-2"></i><strong class="text-black">EnVision Hotel Boston</strong> is Expecting you on <strong class="text-black">01 june</strong></li>
                                <li><i class="la la-check text-success mr-2"></i>Your <strong class="text-black">payment</strong> will be handled by EnVision Hotel Boston, the <strong class="color-text-2">'Payment'</strong> section below has more details</li>
                                <li><i class="la la-check text-success mr-2"></i>Make changes to your booking or ask the properly a question in just a few clicks</li>
                            </ul> -->
							<!--  <div class="btn-box pb-4">
                                <a href="#" class="theme-btn mb-2 mr-2">Make changes to your booking</a>
                                <a href="#" class="theme-btn mb-2 theme-btn-transparent">Make your booking in the app</a>
                            </div> -->
							<h3 class="title">
								<a href="#" class="text-black">EnVision Hotel Boston</a>
							</h3>
							<p>New York City, NY, USA</p>
							<!--   <p class="py-1"><a href="#" class="text-color">Click for directions on Google maps <i class="la la-arrow-right"></i></a></p> -->
							<p>
								<strong class="text-black mr-1">전화번호:</strong>010-5499-0556
							</p>
							<ul class="list-items list-items-3 list-items-4 py-4">
								<li><span class="text-black font-weight-bold">예약</span>2
									Nights, 1 Room</li>
								<li><span class="text-black font-weight-bold">체크인</span>Thu
									30 Mar, 2020</li>
								<li><span class="text-black font-weight-bold">체크아웃</span>Sat
									01 Jun, 2020</li>
								<li><span class="text-black font-weight-bold">선입금</span>언제든지
									총금액의 선결제가 청구됩니다.</li>
								<li><span class="text-black font-weight-bold">취소 비용</span>From
									now on: USD 34</li>
								<li><span class="text-black font-weight-bold">예약 금액</span>500,000원</li>
							</ul>
							<div class="btn-box">
								<a href="#" class="theme-btn border-0 text-white bg-7">예약 취소</a>
								<a href="#" class="theme-btn border-0 text-white bg-7">확인</a>
							</div>
						</div>
						<!-- end card-item -->
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
