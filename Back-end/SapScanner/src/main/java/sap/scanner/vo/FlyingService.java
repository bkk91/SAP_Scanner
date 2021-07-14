package sap.scanner.vo;

import java.util.List;
import java.util.Map;

public interface FlyingService {

	// 항공 스케쥴 추가(OpenAPI)
	public void scheduleAPI(Map<String, String> schedule);

	// 항공 스케쥴 입력
	public void insertSchedule(FlyingVO vo);

	// 항공 스케쥴 리스트 보기
	public List<FlyingVO> getSchedule(Criteria cri);

	// 항공 스케쥴 총 갯수 (10개 단위 페이징)
	public int listCount();

	// 선택한 항공 스케쥴 보기
	public FlyingVO singleSchedule(int vihicleId);

	// 항공 스케쥴 수정
	public void updateSchedule(FlyingVO vo);

	// 항공 스케쥴 삭제
	public void deleteSchedule(int vihicleId);

	// 항공권 편도 검색
	public List<Map<String, String>> searchOneway(FlyingVO vo);

	// 항공권 왕복 검색
	public List<Map<String, String>> searchRoundtrip(FlyingVO vo);

	// 항공권 편도 검색 결과 보기
	public List<Map<String, String>> printOneway(FlyingVO vo);

}
