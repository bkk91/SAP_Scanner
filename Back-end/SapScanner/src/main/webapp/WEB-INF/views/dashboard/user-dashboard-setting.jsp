<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Admin-Header -->
<%@include file="../include/header-user.jsp"%>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 프로필 수정
		$(".update_btn_profile").on("click", function() {
			updateUserProfile();
		})

		// 이메일 수정
		$(".update_btn_email").on("click", function() {
			updateUserEmail();
		})

		// 비밀번호 수정
		$(".update_btn_password").on("click", function() {
			updateUserPassword();
		})

		// 결제정보 수정
		$(".update_btn_payment").on("click", function() {
			updateUserPayment();
		})

	})

	function updateUserProfile() {
		$.ajax({
			type : 'post',
			url : 'updateUserProfile.do',
			dataType : 'text',
			data : $('#userDetailForm').serialize(),
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function updateUserEmail() {
		$.ajax({
			type : 'post',
			url : 'updateUserEmail.do',
			dataType : 'text',
			data : $('#userDetailForm').serialize(),
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function updateUserPassword() {
		$.ajax({
			type : 'post',
			url : 'updateUserPassword.do',
			dataType : 'text',
			data : $('#userDetailForm').serialize(),
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function updateUserPayment() {
		$.ajax({
			type : 'post',
			url : 'updateUserPassword.do',
			dataType : 'text',
			data : $('#scheduleDetailForm').serialize(),
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}
</script>
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
								<h2 class="sec__title font-size-30 text-white">나의 정보 및 수정</h2>
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
					<div class="col-lg-6">
						<div class="form-box">
							<div class="form-title-wrap">
								<h3 class="title">프로필 설정</h3>
							</div>
							<div class="form-content">
								<div class="user-profile-action d-flex align-items-center pb-4">
									<div class="user-pro-img">
										<img src="${pageContext.request.contextPath}/images/user.jpg" alt="user-image" style = "width:70px">
									</div>
									<div class="upload-btn-box">
										<div class="file-upload-wrap file-upload-wrap-2">
											<input type="file" name="files[]"
												class="multi file-upload-input with-preview" maxlength="1">
											<span class="file-upload-text"><i
												class="la la-upload mr-2"></i>Upload Image</span>
										</div>
									</div>
								</div>
								<div class="contact-form-action">
									<form role="form" method="post" id="userDetailForm"
										action="user-dashboard-setting.do">
										<div class="row">
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">이름</label>
													<div class="form-group">
														<span class="la la-user form-icon"></span> <input
															class="form-control" name="userName" id="userName"
															type="text" value="${read.userName}">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">생년월일</label>
													<div class="form-group">
														<span class="la la-birthday-cake form-icon"></span> <input
															class="form-control" type="datetime" name="userBirthdate"
															id="userBirthdate" value="${read.userBirthdate}">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">휴대폰번호</label>
													<div class="form-group">
														<span class="la la-phone form-icon"></span> <input
															class="form-control" type="text" name="userMobile"
															id="userMobile" value="${read.userMobile}">
													</div>
												</div>
											</div>
									
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">주소</label>
													<div class="form-group">
														<span class="la la-map form-icon"></span> <input
															class="form-control" type="text" name="userAddress"
															id="userAddress" value="${read.userAddress}">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											</form>
											<div class="col-lg-12">
												<div class="btn-box">
												<button type="button" class="update_btn_profile" onclick="updateUserProfile();">변경</button>
													<!--  <button class="theme-btn" type="button">변경</button>		-->											
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
										<!-- end row -->
								</div>
							</div>
						</div>
						<!-- end form-box -->
					</div>
					<!-- end col-lg-6 -->
					<div class="col-lg-6">
						<div class="form-box">
							<div class="form-title-wrap">
								<h3 class="title">이메일 변경</h3>
							</div>
							<div class="form-content">
								<div class="contact-form-action">
									<div class="row">
										<div class="col-lg-12 responsive-column">
											<div class="input-box">
												<label class="label-text">현재 이메일</label>
												<div class="form-group">
													<span class="la la-envelope form-icon"></span> <input
														class="form-control" type="text"
														placeholder="${read.userEmail}">
												</div>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12 responsive-column">
											<div class="input-box">
												<label class="label-text">새로운 이메일</label>
												<div class="form-group">
													<span class="la la-envelope form-icon"></span> <input
														class="form-control" type="text"
														placeholder="xxxxx@xxxxx.com">
												</div>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12 responsive-column">
											<div class="input-box">
												<label class="label-text">새로운 이메일 (확인)</label>
												<div class="form-group">
													<span class="la la-envelope form-icon"></span> <input
														class="form-control" type="text"
														placeholder="xxxxx@xxxxx.com">
												</div>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<div class="btn-box">
												<button class="theme-btn" type="button">변경</button>
											</div>
										</div>
										<!-- end col-lg-12 -->
									</div>
									<!-- end row -->
									</form>
								</div>
							</div>
						</div>
						<!-- end form-box -->
					</div>
					<!-- end col-lg-6 -->
					<div class="col-lg-6">
						<div class="form-box">
							<div class="form-title-wrap">
								<h3 class="title">비밀번호 변경</h3>
							</div>
							<div class="form-content">
								<div class="contact-form-action">
									<form action="#">
										<div class="row">
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">현재 비밀번호</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" placeholder="****">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">새로운 비밀번호</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text" placeholder="새로운 비밀번호">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 responsive-column">
												<div class="input-box">
													<label class="label-text">새로운 비밀번호(확인)</label>
													<div class="form-group">
														<span class="la la-lock form-icon"></span> <input
															class="form-control" type="text"
															placeholder="새로운 비밀번호(확인)">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" type="button">변경</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
										<!-- end row -->
									</form>
								</div>
							</div>
						</div>
						<!-- end form-box -->
					</div>
					<!-- end col-lg-6 -->
					<div class="col-lg-6">
						<div class="form-box">
							<div class="form-title-wrap">
								<h3 class="title">결제 정보 변경</h3>
							</div>
							<div class="form-content">
								<div class="contact-form-action">
									<form method="post">
										<div class="row">
											<div class="col-lg-4 col-sm-4">
												<div class="input-box">
													<label class="label-text">이름</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text" value="TEST01">
													</div>
												</div>
											</div>
											<!-- end col-lg-4 -->
											<div class="col-lg-4 col-sm-4">
												<div class="input-box">
													<label class="label-text">만료 (년)</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text" value="12">
													</div>
												</div>
											</div>
											<!-- end col-lg-4 -->
											<div class="col-lg-4 col-sm-4">
												<div class="input-box">
													<label class="label-text">만료 (월)</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text" value="24">
													</div>
												</div>
											</div>
											<!-- end col-lg-4 -->
											<div class="col-lg-6 col-sm-6">
												<div class="input-box">
													<label class="label-text">카드번호</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text"
															value="1234-5678-8765-4321">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-6 col-sm-6">
												<div class="input-box">
													<label class="label-text">CVV</label>
													<div class="form-group">
														<span class="la la-pencil form-icon"></span> <input
															class="form-control" type="text" name="text" value="123">
													</div>
												</div>
											</div>
											<!-- end col-lg-6 -->
											<div class="col-lg-12">
												<div class="btn-box">
													<button class="theme-btn" type="submit">변경</button>
												</div>
											</div>
											<!-- end col-lg-12 -->
										</div>
										<!-- end row -->
									</form>
								</div>
							</div>
						</div>
						<!-- end form-box -->
					</div>
					<!-- end col-lg-6 -->
				</div>
				<!-- end row -->
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
<%@include file="../include/footer-user.jsp"%>