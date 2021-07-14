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
								<h2 class="sec__title font-size-30 text-white">회원 리스트</h2>
							</div>
						</div>
						<!-- end breadcrumb-content -->
					</div>
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
								<div>
									<h3 class="title">회원</h3>
									<p class="font-size-14">20개 중 1 ~ 10개 보기</p>
								</div>
							</div>
							<div class="form-content">
								<div class="table-form table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th scope="col">회원번호</th>
												<th scope="col">이름</th>
												<th scope="col">이메일</th>
												<th scope="col">국가</th>
												<th scope="col">활동지역</th>
												<th scope="col">활동상태</th>
												<th scope="col">비고</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${user}" var="user">
											<tr>
												<th scope="row"><c:out value="${user.userNum}"/></th>
												<td>
													<div class="table-content">
														<h3 class="title"><c:out value="${user.userName}"/></h3>
													</div>
												</td>
												<td><c:out value="${user.userEmail}" /></td>
												<td><c:out value="${user.userAddress}" /></td>
												<td><c:out value="${user.userId}" /></td>
												<td><c:out value="${user.userMobile}" /></td>
												<td><span class="badge badge-success py-1 px-2">Active</span></td>
												<td></td>
											</tr>
											</c:forEach>	
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
									<li class="page-item">
											<a class="page-link page-link-nav"
												href="admin-dashboard-user.do${pageMaker.makeQuery(pageMaker.startPage - 1)}"
												aria-label="Previous"> <span aria-hidden="true"><i
													class="la la-angle-left"></i></span> <span class="sr-only">Previous</span>
											</a>
										</li>

									<c:forEach begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}" var="idx">
										<li class="page-item active"><a
											class="page-link page-link-nav"
											href="admin-dashboard-user.do${pageMaker.makeQuery(idx)}"><span
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