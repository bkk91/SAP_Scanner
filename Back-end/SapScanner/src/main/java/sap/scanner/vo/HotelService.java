package sap.scanner.vo;

import java.util.List;
import java.util.Map;

public interface HotelService {

	// 관리자 호텔 리스트 전체
	List<HotelVO> adminHotelListAll();

	// 호텔 검색 조건
	List<HotelVO> searchHotel(Map<String, Object> params);

	// 호텔 상세
	String hotelDetail(String hotelidx, HotelVO vo);

	// 호텔 등록
	void hotelInsert(HotelVO hotelVo);

	// 호텔 선택 삭제
	void ajaxDelete(String[] hotelIdxs);

	// 객실 선택 삭제
	void ajaxRoomDelete(String roomIdx);

	// 어드민 호텔 상세보기
	HotelVO adminHotelDetail(int hotelIdx);

	// 호텔 수정
	void hotelUpdate(HotelVO vo);

	// 호텔의 룸 리스트(유저입장)
	List<HotelVO> getRoomList(HotelVO hotelVo);

	// 호텔 상세보기(유저입장)
	HotelVO getHotelOne(int hotelIdx);

	// ajax서브 서치
	List<HotelVO> ajaxHotelSearch(HotelVO vo);

	// 관리자 호텔의 객실 리스트
	List<HotelVO> adminRoomList(int hotelIdx);

	// 룸 등록
	void roomInsert(HotelVO hotelVo);

}
