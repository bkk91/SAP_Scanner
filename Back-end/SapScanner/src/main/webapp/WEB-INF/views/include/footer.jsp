<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- ================================
       START FOOTER AREA
================================= -->
<section
	class="footer-area section-bg padding-top-100px padding-bottom-30px">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<div class="footer-logo padding-bottom-30px">
						<a href="index.html" class="foot__logo"><img
							src="images/logo.png" alt="logo"></a>
					</div>
					<!-- end logo -->
					<ul class="list-items list--items">
						<li><a href="#">admin@sapscanner.com</a></li>
						<li>Seocho-gu, Seoul, Republic of Korea</li>
						<li>33, Seocho-daero 74-gil, 06621</li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">회사</h4>
					<ul class="list-items list--items">
						<li><a href="about.do">소개</a></li>
						<li><a href="services.do">서비스</a></li>
						<li><a href="faq.do">문의사항</a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">링크</h4>
					<ul class="list-items list--items">
						<li><a
							href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=saleru1004&logNo=80205857973">관광지
								소개</a></li>
						<li><a
							href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">네이버
								블로그 </a></li>
						<li><a
							href="https://www.kakaocorp.com/page/service/service/KakaoStory?lang=en">카카오
								스토리 </a></li>
					</ul>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
			<div class="col-lg-3 responsive-column">
				<div class="footer-item">
					<h4 class="title curve-shape pb-3 margin-bottom-20px"
						data-text="curvs">구독</h4>
					<div class="contact-form-action">
						<form action="#">
							<div class="input-box">
								<div class="form-group mb-0">
									<span class="la la-envelope form-icon"></span> <input
										class="form-control" type="email" name="email"
										placeholder="이메일 주소">
									<button class="theme-btn theme-btn-small submit-btn"
										type="submit">Go</button>
									<span class="font-size-14 pt-1"><i
										class="la la-lock mr-1"></i>입력된 이메일 보호 및 보안</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- end footer-item -->
			</div>
			<!-- end col-lg-3 -->
		</div>
		<!-- end row -->
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="term-box footer-item">
					<ul class="list-items list--items d-flex align-items-center">
						<li><a href="loading.do">이용 약관</a></li>
						<li><a href="loading.do">개인정보 보호정책</a></li>
					</ul>
				</div>
			</div>
			<!-- end col-lg-8 -->
			<div class="col-lg-4">
				<div class="footer-social-box text-right">
					<ul class="social-profile">
						<li><a href="#"><i class="lab la-facebook-f"></i></a></li>
						<li><a href="#"><i class="lab la-twitter"></i></a></li>
						<li><a href="#"><i class="lab la-instagram"></i></a></li>
						<li><a href="#"><i class="lab la-linkedin-in"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
	<div class="section-block mt-4"></div>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="copy-right padding-top-30px">
					<p class="copy__desc">
						&copy; Copyright SAP Scanner 2021. Made with <span
							class="la la-heart"></span> by <a
							href="https://github.com/bkk91/">Team SAP</a>
					</p>
				</div>
				<!-- end copy-right -->
			</div>
			<!-- end col-lg-7 -->

		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end footer-area -->

<!-- start back-to-top -->
<div id="back-to-top">
	<i class="la la-angle-up" title="Go top"></i>
</div>
<!-- end back-to-top -->
<!-- ================================
         Login/register modal
================================= -->
<%@include file="../user/login.jsp"%>
<%@include file="../user/register.jsp"%>

<!-- Template JS Files -->

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/daterangepicker.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/jquery.countTo.min.js"></script>
<script src="js/animated-headline.js"></script>
<script src="js/jquery.ripples-min.js"></script>
<script src="js/quantity-input.js"></script>
<script src="js/main.js"></script>
</body>

</html>