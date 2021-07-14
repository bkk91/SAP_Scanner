package sap.scanner.vo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sap.scanner.vo.Criteria;
import sap.scanner.vo.UserService;
import sap.scanner.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	// 회원 등록
	public void register(UserVO vo) {
		userDAO.register(vo);
	}
	
	// 회원 이름 출력
	public UserVO getUserInfo(int userId) {
		return userDAO.getUserInfo(userId);
	}
	
	// 로그인	
	public UserVO login(UserVO vo) {
		return userDAO.login(vo);
	}

	// 회원 리스트 보기(관리자용)
	public List<UserVO> getUser(Criteria cri) {
		return userDAO.getUser(cri);
	}

	// 회원 정보 수정 : 프로필
	public void updateUserProfile(UserVO vo) {
		userDAO.updateUserProfile(vo);
	}

	// 회원 정보 수정 : 이메일
	public void updateUserEmail(UserVO vo) {
		userDAO.updateUserEmail(vo);
	}

	// 회원 정보 수정 : 비밀번호
	public void updateUserPassword(UserVO vo) {
		userDAO.updateUserPassword(vo);
	}

	// 회원 탈퇴
	public void deleteUser(int userNum) {
		userDAO.deleteUser(userNum);
	}

}