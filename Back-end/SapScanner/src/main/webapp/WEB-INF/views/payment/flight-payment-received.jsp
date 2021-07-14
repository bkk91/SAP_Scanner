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
								<li class="step-bar flex-grow-1"><span class="icon-element">3</span>
									<p class="pt-2 color-text-2">결제 완료!</p></li>
							</ul>
						</div>
					</div>
					<div class="form-content">
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
						<div class="row">
							<div class="col-lg-12">
								<div class="payment-received-list">
									<h3 class="title font-size-24">결제 정보</h3>
									<div class="table-form table-responsive pt-3 pb-3">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">회원 번호</th>
													<th scope="col">회원 이름</th>
													<th scope="col">예약 번호</th>
													<th scope="col">예약 날짜</th>
													<th scope="col">예약 가격</th>
													<th scope="col">회원 할인가</th>
													<th scope="col">결제 금액</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<th id="rUserNum" name="rUserNum" scope="row"><c:out
															value="${userDetail.userNum}" /></th>
													<th id="rName" name="rName" scope="row"><c:out
															value="${userDetail.userName}" /></th>
													<th id="rIdx" name="rIdx" scope="row"><c:out
															value="${idx}" /></th>
													<td>
														<div class="table-content">
															<c:set var="today" value="<%=new java.util.Date()%>" />
															<c:set var="date">
																<fmt:formatDate value="${today}"
																	pattern="yyyy-MM-dd HH:mm" />
															</c:set>
															<h3 class="title" id="rDate" name="rDate">
																<c:out value="${date}" />
															</h3>
														</div>
													</td>
													<td>
														<div class="table-content">
															<h3 class="title">
																<c:out value="${printList.sum}" />
															</h3>
														</div>
													</td>
													<td>
														<div class="table-content">
															<h3 class="title">
																<c:out value="${printList.discount}" />
															</h3>
														</div>
													</td>
													<td>
														<div class="table-content">
															<h3 class="title" id="price" name="price">
																<c:out value="${printList.discountSum}" />
															</h3>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p>입력하신 신용카드 정보로 결제를 완료하였습니다. 이메일을 확인해주세요</p>
								</div>
								<!-- end card-item -->
							</div>
							<div class="col-lg-12">
								<form role="form" method="post" action="paymentInfo.do">
									<input type="hidden" id="rIdx" name="rIdx" value="${idx}" />
									<input type="hidden" id="rUserNum" name="rUserNum" value="${userDetail.userNum}" />
									<input type="hidden" id="rName" name="rName" value="${userDetail.userName}" />
									<input type="hidden" id="rDate" name="rDate" value="${date}" />
									<input type="hidden" id="price" name="price" value="${printList.discountSum}" />
									<input type="hidden" id="rCredit" name="rCredit" value="${encrypt}" />
									<div class="section-block mt-3"></div>
									<div class="btn-box text-center pt-4">
										<button type="submit" class="theme-btn theme-btn-small">결제
											완료</button>
									</div>
								</form>
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
<%@include file="../include/footer-payment.jsp"%>
