<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Admin-Header -->
<%@include file="../include/header-admin.jsp"%>
<!-- ================================
    START INFO AREA
================================= -->
<section
	class="info-area padding-top-50px padding-bottom-60px text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-heading">
					<h2 class="sec__title">"SAP SCANNER - 관리자 페이지"</h2>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
		<div class="row padding-top-100px">
			<div class="col-lg-4 responsive-column">
				<div class="card-item team-card">
					<div class="card-img">
						<img src="${pageContext.request.contextPath}/images/member/team1.jpg" alt="team-img">
					</div>
					<div class="card-body">
						<h3 class="card-title">곽붕기</h3>
						<p class="card-meta">팀장</p>
						<p class="card-text font-size-15 pt-2">2021년, 저희는 SAP스캐너 서비스를
						시작함에 있어 차별화를 추구했습니다. 모든 항공권 옵션을 한 번에 보여주며,간편한 플랫폼을 제공합니다.</p>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<div class="card-item team-card">
					<div class="card-img">
						<img src="${pageContext.request.contextPath}/images/member/team2.jpg" alt="team-img">
					</div>
					<div class="card-body">
						<h3 class="card-title">박상훈</h3>
						<p class="card-meta">팀원</p>
						<p class="card-text font-size-15 pt-2">SAP스캐너는 오늘날까지 빠르게 발전이
						이뤄지는 항공권 검색 엔진 시장에서 글로벌 여행 선도기업으로 자리매김하기 위해 부단히 노력하고 있습니다. </p>
					</div>
				</div>
				<!-- end card-item -->
			</div>
			<!-- end col-lg-4 -->
			<div class="col-lg-4 responsive-column">
				<div class="card-item team-card">
					<div class="card-img">
						<img src="${pageContext.request.contextPath}/images/member/team3.jpg" alt="team-img">
					</div>
					<div class="card-body">
						<h3 class="card-title">정상인</h3>
						<p class="card-meta">팀원</p>
						<p class="card-text font-size-15 pt-2">SAP스캐너와 함께라면 최적의 항공권, 호텔 옵션을
						찾아 완벽하게 여행을 예약할 수 있습니다. SAP스캐너는 전세계 고객들의 수요를 완벽히 충족하는 앱과 
						웹사이트를 제공하는 것을 목표로 합니다.</p>
					</div>
				</div>
				<!-- end card-item -->
			</div>
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
<%@include file="../include/footer-admin.jsp"%>