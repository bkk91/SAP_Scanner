<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!-- 회원가입 팝업창 시작 -->
<div class="modal-popup">
	<div class="modal fade" id="signupPopupForm" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div>
						<h5 class="modal-title title" id="exampleModalLongTitle">회원가입</h5>
						<p class="font-size-14">간단한 회원가입으로 빠르고 간편한 여행 계획이 가능해집니다!</p>
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" class="la la-close"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="contact-form-action">
						<form role="form" method="post" action="register.do">
							<div class="input-box">
								<label for="userId" class="label-text">아이디</label>
								<div class="form-group">
									<span class="la la-user form-icon"></span> 
									<input type="text" class="form-control" id="userId" name="userId"
										placeholder="아이디를 입력해주세요 ."> 
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="userPassword" class="label-text">비밀번호</label>
								<div class="form-group">
									<span class="la la-lock form-icon"></span> <input type="password"
										class="form-control" id="userPassword" name="userPassword"
										placeholder="최소 8자, 영문, 숫자, 특수문자를 사용해주세요.">
								</div>
							</div>


							<!-- end input-box 
							<div class="input-box">
								<label for="password2" class="label-text">비밀번호 확인</label>
								<div class="form-group">
									<span class="la la-lock form-icon"></span> <input
										type="password" class="form-control" id="password2"
										name="password2" placeholder="비밀번호를 한번 더 입력해주세요." required>
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">비밀번호가 일치하지
										않습니다.</div>
								</div>
							</div> -->


							<!-- end input-box -->
							<div class="input-box">
								<label for="userName" class="label-text">이름</label>
								<div class="form-group">
									<span class="la la-user form-icon"></span> <input type="text"
										class="form-control" id="userName" name="userName"
										placeholder="실명을 입력해주세요.">
								</div>
							</div>

							<!-- end input-box -->
							<div class="input-box">
								<label for="userBirthdate" class="label-text">생년월일</label>
								<div class="form-group">
									<span class="la la-birthday-cake form-icon"></span> <input
										type="text" class="form-control" id="userBirthdate"
										name="userBirthdate" placeholder="생년월일을 선택해주세요.">									
									</div>
								</div>
							</div>
							
							<!-- end input-box -->
							<div class="input-box">
								<label for="userGender" class="label-text">성별</label>
								<div class="form-group">
									<span class="la la-transgender form-icon"></span> <select
										type="text" class="form-control" id="userGender" name="userGender"
										style="color: rgb(110, 110, 110);">
										<option value="M">남성</option>
										<option value="F">여성</option>
									</select>
								</div>
							</div>
							
							<!-- end input-box -->
							<div class="input-box">
								<label for="userEmail" class="label-text">본인확인용 이메일</label>
								<div class="form-group">
									<span class="la la-envelope form-icon"></span> <input
										type="text" class="form-control" id="userEmail" name="userEmail"
										placeholder="아이디 분실시 사용할 본인확인용 메일 주소를 입력해주세요.">
								</div>
							</div>
							
							<!-- end input-box -->
							<div class="input-box">
								<label for="userMobile" class="label-text">연락처</label>
								<div class="form-group">
									<span class="la la-mobile form-icon"></span> <input type="text"
										class="form-control" id="userMobile" name="userMobile"
										placeholder="010-XXXX-XXXX">
								</div>
							</div>
							
							<!-- end input-box -->
							<div class="input-box">
								<label for="userAddress" class="label-text">주소</label>
								<div class="form-group">
									<span class="la la-home form-icon"></span> <input type="text"
										class="form-control" id="userAddress" name="userAddress"
										placeholder="주소 입력">
								</div>
							</div>
							
							<!-- end input-box -->
							<div class="btn-box pt-3 pb-4">
								<button type="submit" class="theme-btn w-100">가입하기</button>
							</div>
						</form>
					</div>
					<!-- end contact-form-action -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 회원가입 팝업창 종료 -->