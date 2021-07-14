<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Admin-Header -->
<%@include file="../include/header-admin.jsp"%>
<!-- ================================
    START DASHBOARD AREA
================================= -->
<section class="dashboard-area">
	<div class="dashboard-content-wrap">
		<div class="dashboard-bread dashboard--bread dashboard-bread-2">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="breadcrumb-content">
							<div class="section-heading">
								<h2 class="sec__title font-size-30 text-white">항공편</h2>
							</div>
						</div>
						<!-- end breadcrumb-content -->
					</div>
					<!-- end col-lg-6 -->
				</div>
				<!-- end row -->
			</div>
		</div>
		<!-- end dashboard-bread -->

		<div class="dashboard-main-content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="form-box">
							<div class="form-title-wrap">
								<div class="d-flex align-items-center justify-content-between">
									<div>
										<h3 class="title">항공권 리스트</h3>
										<p class="font-size-14">20개 중 1 ~ 10개 보기</p>
									</div>
									<div class="table-content">
										<a href="admin-dashboard-flying-insertSchedule.do"
											class="theme-btn theme-btn-small"> 항공권 등록</a>
									</div>
								</div>
								<div class="form-content">
									<div class="table-form table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">VihicleId</th>
													<th scope="col">AirlineNm</th>
													<th scope="col">DepAirportId</th>
													<th scope="col">DepAirportNm</th>
													<th scope="col">DepCityNm</th>
													<th scope="col">DepPlandTime</th>
													<th scope="col">ArrAirportId</th>
													<th scope="col">ArrAirportNm</th>
													<th scope="col">ArrCityNm</th>
													<th scope="col">ArrPlandTime</th>
													<th scope="col">EconomyCharge</th>
													<th scope="col">PrestigeCharge</th>
													<th scope="col">FirstCharge</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${list}" var="list">
													<tr>
														<td><c:out value="${list.vihicleId}" /></td>
														<td><a
															href="${pageContext.request.contextPath}/admin/admin-dashboard-flying-selectList.do?vihicleId=${list.vihicleId}">
																<c:out value="${list.airlineNm}" />
														</a></td>
														<td><c:out value="${list.depAirportId}" /></td>
														<td><c:out value="${list.depAirportNm}" /></td>
														<td><c:out value="${list.depCityNm}" /></td>
														<td><c:out value="${list.depPlandTime}" /></td>
														<td><c:out value="${list.arrAirportId}" /></td>
														<td><c:out value="${list.arrAirportNm}" /></td>
														<td><c:out value="${list.arrCityNm}" /></td>
														<td><c:out value="${list.arrPlandTime}" /></td>
														<td><c:out value="${list.economyCharge}" /></td>
														<td><c:out value="${list.prestigeCharge}" /></td>
														<td><c:out value="${list.firstCharge}" /></td>
													</tr>
												</c:forEach>
											</tbody>
											</form>
										</table>
									</div>
								</div>
							</div>
							<!-- end form-box -->
						</div>
						<!-- end col-lg-12 -->
					</div>
					<!-- end row -->
					<div class="row">
						<div class="col-lg-12">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item">
											<a class="page-link page-link-nav"
												href="admin-dashboard-flying-list.do${pageMaker.makeQuery(pageMaker.startPage - 1)}"
												aria-label="Previous"> <span aria-hidden="true"><i
													class="la la-angle-left"></i></span> <span class="sr-only">Previous</span>
											</a>
										</li>

									<c:forEach begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}" var="idx">
										<li class="page-item active"><a
											class="page-link page-link-nav"
											href="admin-dashboard-flying-list.do${pageMaker.makeQuery(idx)}"><span
												class="sr-only">(current)</span>${idx}</a></li>
									</c:forEach>

									<li class="page-item">
											<a class="page-link page-link-nav"
												href="admin-dashboard-flying-list.do${pageMaker.makeQuery(pageMaker.endPage + 1)}"
												aria-label="Next"> <span aria-hidden="true"><i
													class="la la-angle-right"></i></span> <span class="sr-only">Next</span>
											</a>
										</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!-- end container-fluid -->
			</div>
			<!-- end dashboard-main-content -->
		</div>
		<!-- end dashboard-content-wrap -->
</section>
<!-- end dashboard-area -->
<!-- ================================
    END DASHBOARD AREA
================================= -->
<!-- Admin-Footer -->
<%@include file="../include/footer-admin.jsp"%>