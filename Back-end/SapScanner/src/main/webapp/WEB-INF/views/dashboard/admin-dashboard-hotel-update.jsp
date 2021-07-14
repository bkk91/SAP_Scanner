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
								<h2 class="sec__title font-size-30 text-white">호텔</h2>
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
								<h3 class="title">호텔 수정</h3>
							</div>
							<!-- <form role="form" method="post" action="admin-hotel-insert.do">-->
							<form name ="hotelUpdateForm" method="post" action="hotelUpdate.do?hotelIdx=${hotelData.hotelIdx}">
							<div class="form-content">
								<div class="table-form table-responsive">
									<table class="table">
											<thead>
												<tr>
													<th>호텔 이름</th>
											 	    <th>호텔 국가</th>
													<th>호텔 지역</th>
													<th>호텔 번호</th> 
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="hotelName"
														id="hotelName" value="${hotelData.hotelName}" required ></td>
													<td><input type="text" name="hotelCountry"
														id="hotelCountry" value="${hotelData.hotelCountry}" required></td>
													<td><input type="text" name="hotelCity" id="hotelCity" value="${hotelData.hotelCity}" required></td>
													<td><input type="text" name="hotelTel"
														id="hotelTel"  value="${hotelData.hotelTel}" required></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th>호텔 정보</th>
													<th></th>
													<th></th>
													<th></th>
												
												</tr>
											</thead>

													<td colspan="4"><textarea cols="120" rows="4" id="hotelInfo" name="hotelInfo" required>${hotelData.hotelInfo} </textarea></td>
											<thead>
												<tr>
													<th scope="col">호텔 사진 등록</th>
													<th scope="col"></th>
													<th scope="col"></th>
													<th scope="col"></th>
												</tr>
											</thead>
											
											<tbody>
												<tr>
												<td><img src="<c:url value="/upload/${hotelData.fileName}"/>" /></td>
												 <td><input type="file" name="fileName" id="fileName" value="${hotelData.fileName}"></td>
												</tr>
											
													<p>
													<td><input type="submit" class="theme-btn theme-btn-small" value="수정완료">
													<a href="admin-hotel-list.do" class="theme-btn theme-btn-small">취소</a>
													</td>
													
											</tbody>
									</table>
								</div>
							</div>
						 </form>
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


 