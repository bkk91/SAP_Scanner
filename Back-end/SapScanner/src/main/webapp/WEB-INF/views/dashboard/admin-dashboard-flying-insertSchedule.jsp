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
								<h3 class="title">항공권 스케쥴</h3>
							</div>
							<div class="form-content">
								<div class="table-form table-responsive">
									<table class="table">
										<form role="form" method="post" action="insertSchedule.do">
											<thead>
												<tr>
													<th scope="col">VihicleId</th>
													<th scope="col">AirlineNm</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="vihicleId" id="vihicleId"></td>
													<td><input type="text" name="airlineNm" id="airlineNm"></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th scope="col">DepAirportId</th>
													<th scope="col">DepAirportNm</th>
													<th scope="col">DepCityNm</th>
													<th scope="col">DepPlandTime</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="depAirportId"
														id="depAirportId"></td>
													<td><input type="text" name="depAirportNm"
														id="depAirportNm"></td>
													<td><input type="text" name="depCityNm" id="depCityNm"></td>
													<td><input type="datetime" name="depPlandTime"
														id="depPlandTime"></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th scope="col">ArrAirportId</th>
													<th scope="col">ArrAirportNm</th>
													<th scope="col">ArrCityNm</th>
													<th scope="col">ArrPlandTime</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="arrAirportId"
														id="arrAirportId"></td>
													<td><input type="text" name="arrAirportNm"
														id="arrAirportNm"></td>
													<td><input type="text" name="arrCityNm" id="arrCityNm"></td>
													<td><input type="datetime" name="arrPlandTime"
														id="arrPlandtime"></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th scope="col">EconomyCharge</th>
													<th scope="col">PrestigeCharge</th>
													<th scope="col">FirstCharge</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="economyCharge"
														id="economyCharge"></td>
													<td><input type="text" name="PrestigeCharge"
														id="PrestigeCharge"></td>
													<td><input type="text" name="firstCharge"
														id="firstCharge"></td>
													<td><button type="submit"
															class="theme-btn theme-btn-small">등록</button></td>
												</tr>
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
					<div class="col-lg-12"></div>
				</div>
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end dashboard-main-content -->
	</div>
	<!-- end dashboard-content-wrap -->
</section>
<!-- end dashboard-area -->
<!-- footer -->
<%@include file="../include/footer-admin.jsp"%>