<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- end modal-shared -->
<div class="modal-popup">
	<div class="modal fade" id="loginPopupForm" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div>
						<h5 class="modal-title title" id="exampleModalLongTitle2">로그인</h5>
						<p class="font-size-14">SAP SCANNER에 오신것을 환영합니다!</p>
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" class="la la-close"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="contact-form-action">
						<form name="login" method="post" action="${pageContext.request.contextPath}/login.do">
							<!-- start input-box -->
							<div class="input-box">
								<label class="label-text">아이디</label>
								<div class="form-group">
									<span class="la la-user form-icon"></span> <input
										class="form-control" type="text" name="userId" id="userId"
										placeholder="아이디를 입력하세요">
								</div>
							</div>
							<div class="input-box">
								<label class="label-text">비밀번호</label>
								<div class="form-group mb-2">
									<span class="la la-lock form-icon"></span> <input
										class="form-control" type="password" name="userPassword"
										id="userPassword" style=display:block; placeholder="비밀번호를 입력하세요">
								</div>
								<div class="d-flex align-items-center justify-content-between">
									<div class="custom-checkbox mb-0">
										<input type="checkbox" id="rememberchb"> <label
											for="rememberchb">아이디 저장하기</label>
									</div>
									<p class="forgot-password">
										<a href="recover.html">비밀번호 찾기</a>
									</p>
								</div>
							</div>
							<!-- end input-box -->
							<div class="btn-box pt-3 pb-4">
								<button type="submit" class="theme-btn w-100">로그인</button>
							</div>
						</form>
						<div class="action-box text-center">
							<p class="font-size-14"></p>
							<ul class="social-profile py-3">
								<li><a href="#" class="bg-5 text-white"><i
										class="lab la-facebook-f"></i></a></li>
								<li><a href="#" class="bg-6 text-white"><i
										class="lab la-twitter"></i></a></li>
								<li><a href="#" class="bg-7 text-white"><i
										class="lab la-instagram"></i></a></li>
								<li><a href="#" class="bg-5 text-white"><i
										class="lab la-linkedin-in"></i></a></li>
							</ul>
						</div>

					</div>
					<!-- end contact-form-action -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end modal-popup -->