<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
								<h2 class="sec__title font-size-30 text-white">등록된 호텔</h2>
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
										<h3 class="title">객실 리스트</h3>
									</div>
							
									<div class="table-content">
								
										<a href="admin-room-insertForm.do" class="theme-btn theme-btn-small">객실 등록</a>
										<input type ="button" id="deleteBtn" value="선택삭제" onclick="hotelDelete();" class="theme-btn theme-btn-small" >
							
									</div>
								</div>
							
								<div class="form-content">
									<div class="table-form table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th scope="col"><input id="allCheck" type="checkbox" name="allCheck"/></th>
													
													<th scope="col">호텔이름</th>
													<th scope="col">룸번호</th>
													<th scope="col">객실이미지</th>
													<th scope="col">객실타입</th>
													<th scope="col">객실가격</th>								
													<th scope="col">최대인원수</th>
													<th scope="col">방 갯수</th>
																			
					
													
												</tr>
											</thead>
											<tbody>
											
												<c:forEach items="${adminHotelRoomList}" var="adminHotelRoomList">
													<tr>
														<td><input name="RowCheck" type="checkbox" value="${adminHotelRoomList.roomIdx}"/></td>
														<td><c:out value="${adminHotelRoomList.hotelName}" /></td>
														<td><c:out value="${adminHotelRoomList.roomIdx}" /></td>														
														<td><img src = "<c:url value="/upload/${adminHotelRoomList.roomImage}"/>"/></td>
														<td><a href="admin-room-detail.do?roomIdx=${adminHotelRoomList.roomIdx}"><c:out value="${adminHotelRoomList.roomType}" /></a></td>
														<td><c:out value="${adminHotelRoomList.roomPrice}" /></td>
														<td><c:out value="${adminHotelRoomList.peopleStandard}" /></td>
														<td><c:out value="${adminHotelRoomList.roomCountType}" /></td>
													</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								</div>
							
							</div>
							</form>
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

<script type="text/javascript">
		
$(function(){
	var chkObj = document.getElementsByName("RowCheck");
	var rowCnt = chkObj.length;
	
	$("input[name='allCheck']").click(function(){
		var chk_listArr = $("input[name='RowCheck']");
		for(var i=0; i < chk_listArr.length; i++){
			chk_listArr[i].checked = this.checked;
		}
	});
	
	$("input[name='RowCheck']").click(function(){
		if($("input[name='RowCheck']:checked").length == rowCnt){
			$("input[name='allCheck']")[0].checked = true;
		}
		else{
			$("input[name='allCheck']")[0].checked = false;
		}
	});
});

function hotelDelete(){
	
	var url = "ajaxRoomDelete.do"; //Controller로 보내고자 하는 url
	var valueArr = new Array();
	var list = $("input[name='RowCheck']");
	for(var i = 0; i < list.length; i++){
		if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함.
			valueArr.push(list[i].value);
		}
	}
	if(valueArr.length == 0){
		alert("선택된 글이 없습니다.");
	} else {
		var chk = confirm("정말 삭제하시겠습니까?");
		$.ajax({
			url : url,
			type: 'POST',
			traditional : true,
			data : {
				valueArr : valueArr //보내고자 하는 data 변수 설정
				
			},
			success: function(jdata){
				if(jdata = 1){
					alert("삭제 성공");
					location.reload("admin-room-list.do")
				}
				else{
					alert("삭제 실패");
				}
			}
		});
	}
	

}
</script>