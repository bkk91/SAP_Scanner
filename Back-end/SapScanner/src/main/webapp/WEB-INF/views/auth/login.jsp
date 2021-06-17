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
						<form method="post" class="needs-validation"
							oninput='password2.setCustomValidity(password2.value != password.value ? "비밀번호가 일치하지 않습니다." : "")'
							novalidate>
							<div class="input-box">
								<label for="eamil" class="label-text">아이디</label>
								<div class="form-group">
									<span class="la la-envelope form-icon"></span> <input
										type="email" class="form-control" id="email" name="email"
										placeholder="이메일 주소를 사용합니다."
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
									<img id="id_check_sucess" style="display: none;">
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">올바른 이메일 형식이
										아닙니다. 다시 입력해주세요.</div>
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="password" class="label-text">비밀번호</label>
								<div class="form-group">
									<span class="la la-lock form-icon"></span> <input
										type="password" class="form-control" id="password"
										name="password" placeholder="최소 8자, 영문, 숫자, 특수문자를 사용해주세요."
										pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
										required>
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">올바른 비밀번호 형식이
										아닙니다. 다시 입력해주세요.</div>
								</div>
							</div>
							<!-- end input-box -->
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
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="name" class="label-text">이름</label>
								<div class="form-group">
									<span class="la la-user form-icon"></span> <input type="text"
										class="form-control" id="name" name="name"
										placeholder="실명을 입력해주세요." pattern="^[가-힣]{2,6}" required>
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">한글 2~6글자만을
										허용합니다. (공백 입력 불가)</div>
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="birthdate" class="label-text">생년월일</label>
								<div class="form-group">
									<span class="la la-birthday-cake form-icon"></span> <input
										type="text" class="form-control" id="birthdate"
										name="birthdate" placeholder="생년월일을 선택해주세요."
										onfocus="(this.type='date')" onblur="(this.type='text')"
										required>
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">생년월일을 선택해주세요.
									</div>
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="gender" class="label-text">성별</label>
								<div class="form-group">
									<span class="la la-transgender form-icon"></span> <select
										type="text" class="form-control" id="gender" name="gender"
										style="color: rgb(110, 110, 110);">
										<option value="O">성별을 선택해주세요. 필수 입력사항은 아닙니다.</option>
										<option value="M">남성</option>
										<option value="F">여성</option>
										<option value="O">선택하지 않음</option>
									</select>
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="email2" class="label-text">본인확인용 보조 이메일</label>
								<div class="form-group">
									<span class="la la-envelope form-icon"></span> <input
										type="email" class="form-control" id="email2" name="email2"
										placeholder="아이디 분실시 사용할 본인확인용 메일 주소를 입력해주세요."
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
									<div class="valid-feedback feedback-pos"></div>
									<div class="invalid-feedback feedback-pos">올바른 이메일 형식이
										아닙니다. 다시 입력해주세요.</div>
								</div>
							</div>
							<!-- end input-box -->
							<div class="input-box">
								<label for="mobile" class="label-text">연락처</label>
								<div class="form-group">
									<span class="la la-mobile form-icon"></span> <input type="text"
										class="form-control" id="mobile" name="mobile"
										placeholder="휴대폰 인증 API">
								</div>
							</div>
							<!-- end input-box -->
							<div class="btn-box pt-3 pb-4">
								<button type="submit" class="theme-btn w-100">가입하기</button>
							</div>
							<div class="action-box text-center">
								<p class="font-size-14">Or Sign up Using</p>
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
						</form>
					</div>
					<!-- end contact-form-action -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 회원가입 팝업창 종료 -->