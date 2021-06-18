package sap.scanner.flying.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sap.scanner.flying.FlyingVO;

@Repository
public class FlyingDAO extends SqlSessionDaoSupport {

	private SqlSessionTemplate mybatis;

	// 스케쥴 등록
	public void insertSchedule(FlyingVO vo) {
		mybatis.insert("FlyingDAO.insertSchedule", vo);
	}

	// 스케쥴 수정
	public void updateSchedule(FlyingVO vo) {
		mybatis.update("FlyingDAO.updateSchedule", vo);
	}

	// 스케쥴 삭제
	public void deleteSchedule(FlyingVO vo) {
		mybatis.delete("FlyingDAO.deleteSchedule", vo);
	}

	// 편도스케쥴 검색 후 출력
	public FlyingVO getSingleSchedule(FlyingVO vo) {
		return (FlyingVO) mybatis.selectOne("FlyingDAO.getSingleSchedule", vo);
	}

	// 왕복스케쥴 검색 후 출력
	public FlyingVO getDoubleSchedule(FlyingVO vo) {
		return (FlyingVO) mybatis.selectOne("FlyingDAO.getDoubleSchedule", vo);
	}

}
