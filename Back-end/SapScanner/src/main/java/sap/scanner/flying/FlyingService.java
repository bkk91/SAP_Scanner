package sap.scanner.flying;

import java.util.List;

public interface FlyingService {

	// 스케쥴 등록
	void insertSchedule(FlyingVO vo);

	// 스케쥴 수정
	void updateSchedule(FlyingVO vo);

	// 스케쥴 삭제
	void deleteSchedule(FlyingVO vo);

	// 편도 스케쥴 검색
	List<FlyingVO> getSingleSchedule(FlyingVO vo);
		
	// 왕복 스케쥴 검색
	List<FlyingVO> getDoubleSchedule(FlyingVO vo);
		
}
