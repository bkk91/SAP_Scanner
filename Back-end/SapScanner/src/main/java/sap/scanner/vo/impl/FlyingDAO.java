package sap.scanner.vo.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sap.scanner.vo.Criteria;
import sap.scanner.vo.FlyingVO;

@Repository
public class FlyingDAO{	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 항공권 스케쥴 추가 (OpenAPI)
	public void scheduleAPI(Map<String, String> schedule){
		mybatis.insert("FlyingDAO.scheduleAPI", schedule);
	}
	
	// 항공권 CRUD (관리자용)
	// 항공 스케쥴 입력
	public void insertSchedule(FlyingVO vo) {
		String depPlandTime = vo.getDepPlandTime();
		depPlandTime = depPlandTime.replace("-", "");
		depPlandTime = depPlandTime.replace(":", "");
		vo.setDepPlandTime(depPlandTime);
		String arrPlandTime = vo.getArrPlandTime();
		arrPlandTime = arrPlandTime.replace("-", "");
		arrPlandTime = arrPlandTime.replace(":", "");
		vo.setArrPlandTime(arrPlandTime);
		mybatis.insert("FlyingDAO.insertSchedule", vo);
	}
	
	// 스케쥴 출력(페이징: 10)
	public List<FlyingVO> getSchedule(Criteria cri) {		
		return mybatis.selectList("FlyingDAO.getSchedule", cri);
	}
	
	// 스케쥴 카운트
	public int listCount() {
		return mybatis.selectOne("FlyingDAO.listCount");
	}
	
	public FlyingVO singleSchedule(int vihicleId) {
		return mybatis.selectOne("FlyingDAO.singleSchedule", vihicleId);
	}

	public void updateSchedule(FlyingVO vo) {
		String depPlandTime = vo.getDepPlandTime();
		depPlandTime = depPlandTime.replace("-", "");
		depPlandTime = depPlandTime.replace(":", "");
		depPlandTime = depPlandTime.substring(0, 11);
		vo.setDepPlandTime(depPlandTime);
		String arrPlandTime = vo.getArrPlandTime();
		arrPlandTime = arrPlandTime.replace("-", "");
		arrPlandTime = arrPlandTime.replace(":", "");
		arrPlandTime = arrPlandTime.substring(0, 11);
		vo.setArrPlandTime(arrPlandTime);
		mybatis.update("FlyingDAO.updateSchedule", vo);
	}

	public void deleteSchedule(int vihicleId) {
		mybatis.delete("FlyingDAO.deleteSchedule", vihicleId);
	}
	
	public List<Map<String, String>> searchOneway(FlyingVO vo){
		return mybatis.selectList("FlyingDAO.searchOneway", vo);
	}
	
	public List<Map<String, String>> searchRoundtrip(FlyingVO vo){		
		return mybatis.selectList("FlyingDAO.searchRoundtrip", vo);
	}

	public List<Map<String, String>> printOneway(FlyingVO vo) {
		
		return mybatis.selectList("FlyingDAO.printOneway", vo);
	}

	

}
