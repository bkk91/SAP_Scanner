<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
								<h3 class="title">호텔 상세보기</h3>
							</div>
							<!-- <form role="form" method="post" action="admin-hotel-insert.do">-->
							<!-- <form id = "hotelInsertForm" method="post" action="admin-hotel-insert.do"> -->
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
												<td>${hotelData.hotelName}</td>
												<td>${hotelData.hotelCountry}</td>
												<td>${hotelData.hotelCity}</td>
												<td>${hotelData.hotelTel}</td>
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



										<td>${hotelData.hotelInfo}</td>
										<thead>
											<tr>
												<th scope="col">호텔 사진</th>
												<th scope="col"></th>
												<th scope="col"></th>
												<th scope="col"></th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td><img
													src="<c:url value="/upload/${hotelData.fileName}"/>" /></td>
											</tr>

											<p>
											<td>
												<a href="admin-hotel-updateForm.do?hotelIdx=${hotelData.hotelIdx}" class="theme-btn theme-btn-small">수정</a> 
												<a href="admin-hotel-list.do" class="theme-btn theme-btn-small">목록</a>
												<a href="admin-room-list.do?hotelIdx=${hotelData.hotelIdx}" class="theme-btn theme-btn-small">객실 보기</a>
								
												</p>
											</td>
										</tbody>
									</table>
								</div>
							</div>
							</form>
						</div> <!-- end form-box -->
					</div> <!-- end col-lg-12 -->
				</div> <!-- end row -->
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


<script>
 	function insertHotel() {
 
	/*  $('#insertBtn').submit(function(event)){
		//자동 submit을 시키는 것을 막는다.
		event.preventDefault(); */
		
	var formData  = $("#hotelInsertForm").serialize();
		
	 $.ajax({
        cache : false,
        url : "admin-hotel-insert.do", // 요기에
        type : 'POST',
        async: false,
        data : formData, 
        success : function(data) {
           
        	alert('호텔 등록 성공');
        	location.href ="admin-hotel-list.do";
        	
        }, // success 

        error : function(request, status, error) {
            alert('호텔 등록 실패')
        }
    }); // $.ajax */ 
 }
  

/* function insertOk(data){
	
	alert('호텔 등록 성공');
	location.herf = "/admin-hotel-list.do";
} */


</script>
