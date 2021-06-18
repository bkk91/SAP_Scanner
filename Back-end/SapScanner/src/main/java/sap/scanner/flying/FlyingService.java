package sap.scanner.flying;

public interface FlyingService {

	// 스케쥴 등록
	void insertSchedule(FlyingVO vo);

	// 스케쥴 수정
	void updateSchedule(FlyingVO vo);

	// 스케쥴 삭제
	void deleteSchedule(FlyingVO vo);

	// 편도 스케쥴 검색
	FlyingVO getSingleSchedule(FlyingVO vo);

	// 왕복 스케쥴 검색
	FlyingVO getDoubleSchedule(FlyingVO vo);
}
