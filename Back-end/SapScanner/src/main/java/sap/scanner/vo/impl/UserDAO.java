package sap.scanner.vo.impl;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sap.scanner.vo.Criteria;
import sap.scanner.vo.UserVO;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 회원 가입
	public void register(UserVO vo) {
		String userBirthdate = vo.getUserBirthdate();
		userBirthdate = userBirthdate.replace("-", "");
		userBirthdate = userBirthdate.replace(":", "");
		vo.setUserBirthdate(userBirthdate);
		mybatis.insert("UserDAO.register", vo);
	}
	
	// 로그인
	public UserVO login(UserVO vo) {
		UserVO user = (UserVO)mybatis.selectOne("UserDAO.login", vo);
		System.out.println(user.toString());
		return mybatis.selectOne("UserDAO.login", vo);
	}	
	
	// 로그인 회원 정보 출력
	public UserVO getUserInfo(int userId) {
		return mybatis.selectOne("UserDAO.getUserInfo", userId);
	}

	// 회원 정보 수정 : 프로필
	public void updateUserProfile(UserVO vo) {
		mybatis.update("UserDAO.updateUserProfile", vo);
	}

	// 회원 정보 수정 : 이메일
	public void updateUserEmail(UserVO vo) {
		mybatis.update("UserDAO.updateUserEmail", vo);
	}

	// 회원 정보 수정 : 비밀번호
	public void updateUserPassword(UserVO vo) {
		mybatis.update("UserDAO.updateUserPassword", vo);
	}

	// 회원 정보 목록 보기 (관리자용)
	public List<UserVO> getUser(Criteria cri) {
		return mybatis.selectList("UserDAO.getUser", cri);
	}

	// 회원 탈퇴
	public void deleteUser(int userNum) {
		mybatis.delete("UserDAO.deleteUser", userNum);
	}
}
