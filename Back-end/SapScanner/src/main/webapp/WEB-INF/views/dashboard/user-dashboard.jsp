<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Admin-Header -->
<%@include file="../include/header-user.jsp"%>
<!-- ================================
    START INFO AREA
================================= -->
<section
	class="info-area padding-top-50px padding-bottom-60px text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-heading">
					<h2 class="sec__title">"SAP SCANNER - 회원 페이지"</h2>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<div class="row padding-top-100px">
			<div class="col-lg-4 responsive-column"></div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<div class="card-item team-card">
					<div class="card-img">
						<img src="${pageContext.request.contextPath}/images/user.jpg"
							alt="user-image">
					</div>
					<div class="card-body">
						<form role="#">

							<h3 class="card-title">회원아이디</h3>
							<p class="card-meta"></p>
							<p class="card-text font-size-15 pt-2">TEST01</p>

						</form>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column"></div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end info-area -->
<!-- ================================
    END INFO AREA
================================= -->
<!-- Admin-Footer -->
<%@include file="../include/footer-user.jsp"%>