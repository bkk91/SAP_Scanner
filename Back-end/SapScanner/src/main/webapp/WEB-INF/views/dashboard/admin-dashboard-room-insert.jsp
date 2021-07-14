<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Admin-Header -->
<%@include file="../include/header-admin.jsp"%>

<style>

.select_img img {
	margin:20px 0;
}

</style>
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
								<h3 class="title">객실 등록</h3>
							</div>
							<!-- <form role="form" method="post" action="admin-hotel-insert.do">-->
							<form id = "roomInsertForm" method="post" action="admin-room-insert.do" enctype = "multipart/form-data">
							
							<div class="form-content">
								<div class="table-form table-responsive">
									<table class="table">
											<thead>
												<tr>
													<th>호텔 번호</th>
													<th>객실 타입</th>
											 	    <th>객실 가격</th>
													<th>객실 최대 인원수</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" name="hotelIdx"  id="hotelIdx" required></td>
													<td><input type="text" name="roomType"  id="roomType" required></td>
													<td><input type="text" name="roomPrice" id="roomPrice" required></td>
													<td><input type="text" name="peopleStandard" id="peopleStandard" required></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th scope="col">객실사진 등록</th>
													<th scope="col"></th>
													<th scope="col"></th>
													<th scope="col"></th>
												</tr>
											</thead>
											
											<tbody>
												<tr>
												
												 <td>
												 <input type="file" name= uploadFile  id="hotelImg" placeholder="파일 선택">
												 <p>
												 <div class="select_img"><img src="" style="width:40px height:50px"/></div>
												 </td>
								
												</tr>
													<p>
													<td><input type="button" id="btnSubmit" class="theme-btn theme-btn-small" 
														 onclick="insertHotel();" value="등록">
													<a href="admin-hotel-list.do" class="theme-btn theme-btn-small">목록</a>
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


 <script>
 	function insertHotel() {

	//var formData  = $("#hotelInsertForm").serialize();
    var form = $('#roomInsertForm')[0];
    var formData = new FormData(form); 
    
	 $.ajax({
        url : "admin-room-insert.do", // 요기에
        /* enctype: 'multipart/form-data', */
        type : 'POST',
        data : formData,
        processData: false,
        contentType:false,
        success : function(data) {
          
        	alert('객실 등록 성공');       	
        }, // success 

        error : function(request, status, error) {
            alert('객실 등록 실패')
        }
    }); // $.ajax */ 
 }
  

	$("#hotelImg").change(function(){
 		if(this.files && this.files[0]){
 			var reader = new FileReader;
 			reader.onload = function(data){
 				$(".select_img img").attr("src", data.target.result).width(300);
 			}
 			reader.readAsDataURL(this.files[0]);
 		}
 	});



</script> 