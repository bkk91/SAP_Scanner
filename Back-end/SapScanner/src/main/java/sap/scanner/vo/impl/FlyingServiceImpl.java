package sap.scanner.vo.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sap.scanner.vo.Criteria;
import sap.scanner.vo.FlyingService;
import sap.scanner.vo.FlyingVO;

@Service("flyingService")
public class FlyingServiceImpl implements FlyingService {

	@Autowired
	private FlyingDAO flyingDAO;

	// 항공 스케쥴 추가(OpenAPI)
	public void scheduleAPI(Map<String, String> schedule) {
		flyingDAO.scheduleAPI(schedule);
	}

	// 관리자페이지 항공권 CRUD
	public void insertSchedule(FlyingVO vo) {

		flyingDAO.insertSchedule(vo);

	}

	public List<FlyingVO> getSchedule(Criteria cri) {

		return flyingDAO.getSchedule(cri);

	}

	public int listCount() {

		return flyingDAO.listCount();

	}

	public FlyingVO singleSchedule(int vihicleId) {

		return flyingDAO.singleSchedule(vihicleId);
	}

	public void updateSchedule(FlyingVO vo) {

		flyingDAO.updateSchedule(vo);

	}

	public void deleteSchedule(int vihicleId) {

		flyingDAO.deleteSchedule(vihicleId);

	}

	// 항공권 편도 검색 Search

	public List<Map<String, String>> searchOneway(FlyingVO vo) {

		return flyingDAO.searchOneway(vo);
	}

	// 항공권 편도 검색 Search

	public List<Map<String, String>> searchRoundtrip(FlyingVO vo) {

		return flyingDAO.searchRoundtrip(vo);
	}

	// 항공권 편도 검색 결과 출력

	public List<Map<String, String>> printOneway(FlyingVO vo) {

		return flyingDAO.printOneway(vo);
	}

}
