<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header-payment.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						<div class="row">
							<div class="col-lg-12">
								<div class="payment-received-list">
									<h3 class="title">영수증 </h3>
									<ul class="list-items list-items-3 list-items-4 py-4">
										<li><span class="text-black font-weight-bold">예약번호</span>
										<c:out value="${idx}" /></li>
										<li><span class="text-black font-weight-bold">회원번호</span>
										<c:out value="${userDetail.userNum}" /></li>
										<li><span class="text-black font-weight-bold">회원이름</span>
										<c:out value="${userDetail.userName}" /></li>
										<li><span class="text-black font-weight-bold">인원</span>
										<c:out value="${printList.count}" /> 인</li>
										<li><span class="text-black font-weight-bold">결제가격</span>
										<c:out value="${printList.discountSum}" /> 원</li>
									</ul>
								</div>
								<p>출발 전 1주일 까지 결제 취소가 무료로 가능합니다.</p>
								<br><br><br>
							</div>
							<!-- end card-item -->
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="payment-received-list">
									<h3 class="title font-size-24">
										<c:out value="${printList.arrCityNm}" />
										to
										<c:out value="${printList.depCityNm}" />
									</h3>
									<div class="card-rating">
										<span class="badge badge-warning text-white">4.50/5</span> <span
											class="review__text text-warning">항공사 - <c:out
												value="${printList.airlineNm}" /></span>
									</div>
									<ul class="list-items list-items-2 py-3">
										<li><span>이륙시간:</span> <c:out
												value="${printList.depPlandTime}" /></li>
										<li><span>착륙시간:</span> <c:out
												value="${printList.arrPlandTime}" /></li>
										<li><span>소요시간:</span> <c:out
												value="${printList.duration}" /></li>
										<li><span>좌석등급:</span> <c:out
												value="${printList.currentSeatGrade}" /></li>
										<li><span>탑승인원:</span> <c:out value="${printList.count} " />
											인</li>
									</ul>
								</div>
								<!-- end card-item -->
							</div>
							<!-- end col-lg-6 -->
							<c:if test='${printList.depCityNm eq printList.depCityNm2}'>
								<div class="col-lg-6">
									<div class="payment-received-list">
										<h3 class="title font-size-24">
											<c:out value="${printList.depCityNm}" />
											to
											<c:out value="${printList.arrCityNm}" />
										</h3>
										<div class="card-rating">
											<span class="badge badge-warning text-white">4.50/5</span> <span
												class="review__text text-warning">항공사 - <c:out
													value="${printList.airlineNm2}" /></span>
										</div>
										<ul class="list-items list-items-2 py-3">
											<li><span>이륙시간:</span> <c:out
													value="${printList.depPlandTime2}" /></li>
											<li><span>착륙시간:</span> <c:out
													value="${printList.arrPlandTime2}" /></li>
											<li><span>소요시간:</span> <c:out
													value="${printList.duration2}" /></li>
											<li><span>좌석등급:</span> <c:out
													value="${printList.currentSeatGrade}" /></li>
											<li><span>탑승인원:</span> <c:out
													value="${printList.count} " /> 인</li>
										</ul>
									</div>
									<!-- end card-item -->
								</div>
							</c:if>
							<!-- end col-lg-6 -->
						</div>
						<!-- end row -->
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
<%@include file="../include/footer-payment.jsp"%>
