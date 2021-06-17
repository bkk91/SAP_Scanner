<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../include/header.jsp"%>
<!-- Header -->

<!-- ================================
    START CONTACT AREA
================================= -->
<section class="contact-area padding-top-100px padding-bottom-70px">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 mx-auto">
				<div class="form-box">
					<div class="form-title-wrap">
						<h3 class="title">Recover Password</h3>
						<p class="font-size-15 pt-2">
							Enter the email of your account to reset password. Then you will
							receive a link to email to reset the password.If you have any
							issue about reset password <a href="contact.html"
								class="text-color">contact us</a>
						</p>
					</div>
					<!-- form-title-wrap -->
					<div class="form-content ">
						<div class="contact-form-action">
							<form method="post">
								<div class="input-box">
									<label class="label-text">Your Email</label>
									<div class="form-group">
										<span class="la la-envelope-o form-icon"></span> <input
											class="form-control" type="email" name="email"
											placeholder="Enter email address">
									</div>
								</div>
								<div class="btn-box">
									<button type="button" class="theme-btn">Reset Password</button>
								</div>
							</form>
						</div>
						<!-- end contact-form-action -->
					</div>
					<!-- end form-content -->
				</div>
				<!-- end form-box -->
			</div>
			<!-- end col-lg-8 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end contact-area -->
<!-- ================================
    END CONTACT AREA
================================= -->
<!-- Footer -->
<%@include file="../include/footer.jsp"%>
