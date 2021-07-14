package sap.scanner.vo.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sap.scanner.vo.HotelService;
import sap.scanner.vo.HotelVO;

@Service("hotelService")
public class HotelServiceImpl implements HotelService {

	@Autowired
	private HotelDAO hotelDao;

	@Override
	public List<HotelVO> searchHotel(Map<String, Object> params) {
		System.out.println("Service -----" + params);

		return hotelDao.searchHotel(params);
	}

	@Override
	public String hotelDetail(String idx, HotelVO vo) {

		return null;
	}

	// 관리자 호텔 리스트
	@Override
	public List<HotelVO> adminHotelListAll() {

		return hotelDao.adminHotelListAll();
	}

	// 관리자 객실 리스트
	@Override
	public List<HotelVO> adminRoomList(int hotelIdx) {

		return hotelDao.adminRoomList(hotelIdx);
	}

	@Override
	public void hotelInsert(HotelVO hotelVo) {

		hotelDao.hotelInsert(hotelVo);

		System.out.println("hotelServiceImpl===>" + hotelVo);
	}

	// 호텔 선택 삭제
	@Override
	public void ajaxDelete(String[] hotelIdxs) {
		hotelDao.ajaxDelete(hotelIdxs);
	}

	// 객실 선택 삭제
	public void ajaxRoomDelete(String roomIdx) {
		hotelDao.ajaxRoomDelete(roomIdx);
	}

	// 호텔 상세보기
	@Override
	public HotelVO adminHotelDetail(int hotelIdx) {

		return hotelDao.adminHotelDetail(hotelIdx);
	}

	// 호텔 수정
	@Override
	public void hotelUpdate(HotelVO vo) {

		hotelDao.hotelUpdate(vo);

	}

	// 호텔 방 리스트(유저입장)
	@Override
	public List<HotelVO> getRoomList(HotelVO hotelVo) {
		List<HotelVO> list = hotelDao.getRoomList(hotelVo);

		return list;
	}

	// 호텔 상세보기(유저입장)
	@Override
	public HotelVO getHotelOne(int hotelIdx) {

		return hotelDao.getHotelOne(hotelIdx);
	}

	@Override
	public List<HotelVO> ajaxHotelSearch(HotelVO vo) {

		return hotelDao.ajaxHotelSearch(vo);
	}

	// 객실 등록
	@Override
	public void roomInsert(HotelVO hotelVo) {

		hotelDao.roomInsert(hotelVo);
	}

}
