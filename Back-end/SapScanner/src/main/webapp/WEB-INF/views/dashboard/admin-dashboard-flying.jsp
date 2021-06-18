<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
								<h3 class="title">항공편 리스트</h3>
								<p class="font-size-14">X개 중 1 ~ 8개 보기</p>
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
												<th scope="col">ArrPlandNm</th>
												<th scope="col">EconomyCharge</th>
												<th scope="col">PrestigeCharge</th>
												<th scope="col">FirstCharge</th>
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Korean Air</td>
												<td>001</td>
												<td>ICN</td>
												<td>Incheon</td>
												<td>2021/06/18 15:00</td>
												<td>002</td>
												<td>PUS</td>
												<td>Pusan</td>
												<td>2021/06/18 16:40</td>
												<td>100,000</td>
												<td>150,000</td>
												<td>300,000</td>
											</tr>
										</tbody>
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
								<li class="page-item"><a class="page-link page-link-nav"
									href="#" aria-label="Previous"> <span aria-hidden="true"><i
											class="la la-angle-left"></i></span> <span class="sr-only">Previous</span>
								</a></li>
								<li class="page-item active"><a
									class="page-link page-link-nav" href="#">1<span
										class="sr-only">(current)</span></a></li>
								<li class="page-item"><a class="page-link page-link-nav"
									href="#">2</a></li>
								<li class="page-item"><a class="page-link page-link-nav"
									href="#">3</a></li>
								<li class="page-item"><a class="page-link page-link-nav"
									href="#" aria-label="Next"> <span aria-hidden="true"><i
											class="la la-angle-right"></i></span> <span class="sr-only">Next</span>
								</a></li>
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