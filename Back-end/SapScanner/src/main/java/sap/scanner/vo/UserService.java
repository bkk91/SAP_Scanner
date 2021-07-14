package sap.scanner.vo;

import java.util.List;

public interface UserService {
	// 회원 CRUD
	// 회원가입
	public void register(UserVO vo);

	// 로그인
	public UserVO login(UserVO vo);
	
	// 로그인 회원 정보 출력
	public UserVO getUserInfo(int userId);
		
	// 회원 정보 수정 : 프로필
	public void updateUserProfile(UserVO vo);

	// 회원 정보 수정 : 이메일
	public void updateUserEmail(UserVO vo);

	// 회원 정보 수정 : 비밀번호
	public void updateUserPassword(UserVO vo);

	// 회원 리스트 보기 (관리자 페이지용)
	public List<UserVO> getUser(Criteria cri);

	// 회원 탈퇴
	public void deleteUser(int userNum);

}
