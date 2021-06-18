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
								<h2 class="sec__title font-size-30 text-white">리뷰 페이지</h2>
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
										<h3 class="title">리뷰 목록</h3>
										<p class="font-size-14">20개 중 1 ~ 4개 보기</p>
									</div>
									<div class="select-contain">
										<select class="select-contain-select">
											<option value="1">전체보기</option>
											<option value="2">항공리뷰</option>
											<option value="3">호텔리뷰</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-content">
								<div class="comments-list">
									<div class="comment">
										<div class="comment-avatar">
											<img class="avatar__img" alt="" src="images/team8.jpg">
										</div>
										<div class="comment-body">
											<div class="meta-data">
												<h3 class="comment__author">Grand Plaza Serviced
													Apartments</h3>
												<div class="meta-data-inner d-flex">
													<p class="comment__meta mr-1">
														By <a href="#">John Smith</a>
													</p>
													<span class="ratings d-flex align-items-center mr-1">
														<i class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i>
													</span>
													<p class="comment__date">April 5, 2019</p>
												</div>
											</div>
											<p class="comment-content">Our stay was pleasant and
												welcoming. We stayed in an apartment meant for 3 adults with
												kitchen facilities. The cleaning services were superp. We
												liked the laundry and kitchen cleaning services on top of
												the regular cleaning services.</p>
											<div class="comment-reply">
												<a class="theme-btn" href="#" data-toggle="modal"
													data-target="#modalPopup"> <span
													class="la la-mail-reply mr-1"></span>답글
												</a>
											</div>
										</div>
									</div>
									<!-- end comments -->
									<div class="comment">
										<div class="comment-avatar">
											<img class="avatar__img" alt="" src="images/team8.jpg">
										</div>
										<div class="comment-body">
											<div class="meta-data">
												<h3 class="comment__author">Three-Hour South Beach
													Lunch Tour</h3>
												<div class="meta-data-inner d-flex">
													<p class="comment__meta mr-1">
														By <a href="#">Alex smith</a>
													</p>
													<span class="ratings d-flex align-items-center mr-1">
														<i class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i>
													</span>
													<p class="comment__date">April 5, 2019</p>
												</div>
											</div>
											<p class="comment-content">Our stay was pleasant and
												welcoming. We stayed in an apartment meant for 3 adults with
												kitchen facilities. The cleaning services were superp. We
												liked the laundry and kitchen cleaning services on top of
												the regular cleaning services.</p>
											<div class="comment-reply">
												<a class="theme-btn" href="#" data-toggle="modal"
													data-target="#modalPopup"> <span
													class="la la-mail-reply mr-1"></span>답글
												</a>
											</div>
										</div>
									</div>
									<!-- end comments -->
									<div class="comment">
										<div class="comment-avatar">
											<img class="avatar__img" alt="" src="images/team8.jpg">
										</div>
										<div class="comment-body">
											<div class="meta-data">
												<h3 class="comment__author">7 Night Western Caribbean
													Cruise</h3>
												<div class="meta-data-inner d-flex">
													<p class="comment__meta mr-1">
														By <a href="#">Alex smith</a>
													</p>
													<span class="ratings d-flex align-items-center mr-1">
														<i class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i>
													</span>
													<p class="comment__date">April 5, 2019</p>
												</div>
											</div>
											<p class="comment-content">Our stay was pleasant and
												welcoming. We stayed in an apartment meant for 3 adults with
												kitchen facilities. The cleaning services were superp. We
												liked the laundry and kitchen cleaning services on top of
												the regular cleaning services.</p>
											<div class="comment-reply">
												<a class="theme-btn" href="#" data-toggle="modal"
													data-target="#modalPopup"> <span
													class="la la-mail-reply mr-1"></span>답글
												</a>
											</div>
										</div>
									</div>
									<!-- end comments -->
									<div class="comment mb-0 pb-0 border-bottom-0">
										<div class="comment-avatar">
											<img class="avatar__img" alt="" src="images/team8.jpg">
										</div>
										<div class="comment-body">
											<div class="meta-data">
												<h3 class="comment__author">Two Hour Walking Tour of
													Manhattan</h3>
												<div class="meta-data-inner d-flex">
													<p class="comment__meta mr-1">
														By <a href="#">Alex smith</a>
													</p>
													<span class="ratings d-flex align-items-center mr-1">
														<i class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i> <i class="la la-star"></i> <i
														class="la la-star"></i>
													</span>
													<p class="comment__date">April 5, 2019</p>
												</div>
											</div>
											<p class="comment-content">Our stay was pleasant and
												welcoming. We stayed in an apartment meant for 3 adults with
												kitchen facilities. The cleaning services were superp. We
												liked the laundry and kitchen cleaning services on top of
												the regular cleaning services.</p>
											<div class="comment-reply">
												<a class="theme-btn" href="#" data-toggle="modal"
													data-target="#modalPopup"> <span
													class="la la-mail-reply mr-1"></span>답글
												</a>
											</div>
										</div>
									</div>
									<!-- end comments -->
								</div>
								<!-- end comments-list -->
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
								<li class="page-item"><a class="page-link page-link-nav"
									href="#">1</a></li>
								<li class="page-item active"><a
									class="page-link page-link-nav" href="#">2 <span
										class="sr-only">(current)</span></a></li>
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