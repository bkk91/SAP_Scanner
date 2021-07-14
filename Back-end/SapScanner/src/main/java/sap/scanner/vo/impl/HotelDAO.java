package sap.scanner.vo.impl;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sap.scanner.vo.HotelVO;

@Repository
public class HotelDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<HotelVO> searchHotel(Map<String, Object> params) {
		System.out.println("DAO----" + params);
		return mybatis.selectList("hotelMapper.searchHotel", params);
	}

	// 관리자 호텔 전체 리스트 출력(확인차원)
	public List<HotelVO> adminHotelListAll() {

		return mybatis.selectList("hotelMapper.adminHotelAllList");
	}

	// 관리자 호텔의 객실 리스트
	public List<HotelVO> adminRoomList(int hotelIdx) {

		return mybatis.selectList("hotelMapper.adminRoomList", hotelIdx);
	}

	// 관리자 호텔 등록
	public void hotelInsert(HotelVO hotelVo) {

		mybatis.insert("hotelMapper.hotelInsert", hotelVo);

		System.out.println("hotelDao===>" + hotelVo);
	}

	// 객실 등록
	public void roomInsert(HotelVO hotelVo) {

		mybatis.insert("hotelMapper.roomInsert", hotelVo);
	}

	// 호텔 선택 삭제
	 public void ajaxDelete(String[] hotelIdxs) {
	      ArrayList<String> hotelIdx = new ArrayList<String>();
	      
	      for(int i = 0; i < hotelIdxs.length; i++) {
	         hotelIdx.add(hotelIdxs[i]);
	      }
	      
	      Map<String, Object> paramMap = new HashMap<String, Object>();
	      
	      paramMap.put("hotelIdxs", hotelIdx);
	      mybatis.delete("hotelMapper.ajaxRoomDelete", paramMap);
	      mybatis.delete("hotelMapper.ajaxDelete", paramMap);
	   }

	// 룸 선택 삭제
	public void ajaxRoomDelete(String roomIdx) {

		mybatis.delete("hotelMapper.ajaxRoomDelete", roomIdx);
	}

	// 관리자보드 호텔 상세보기
	public HotelVO adminHotelDetail(int hotelIdx) {
		return mybatis.selectOne("hotelMapper.adminHotelDetail", hotelIdx);

	}

	// 관리자 호텔 수정
	public void hotelUpdate(HotelVO vo) {

		mybatis.update("hotelMapper.hotelUpdate", vo);
	}

	// 호텔 상세보기(유저입장)
	public HotelVO getHotelOne(int hotelIdx) {
		return mybatis.selectOne("hotelMapper.getHotelOne", hotelIdx);

	}

	// 방 리스트 뿌려주기
	public List<HotelVO> getRoomList(HotelVO hotelVo) {
		List<HotelVO> list = mybatis.selectList("hotelMapper.getRoomList", hotelVo);
		return list;
	}

	// 서브조건처리
	public List<HotelVO> ajaxHotelSearch(HotelVO vo) {

		return mybatis.selectList("hotelMapper.ajaxHotelSearch", vo);
	}

}
