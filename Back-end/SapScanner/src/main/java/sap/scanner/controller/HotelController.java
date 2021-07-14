package sap.scanner.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sap.scanner.vo.HotelService;
import sap.scanner.vo.HotelVO;

@Controller
public class HotelController {

	@Autowired
	private HotelService hotelService;

//   //호텔 검색 조건을 매핑해주고 list에서 맞는 값 뿌려주기
//   //클라이언트에서 요청 -> 컨트롤러에서 받으니까 어떤 검색 요청을 받았는지 값을 받아야함.
//   @RequestMapping(value = "/searchHotel.do")
//   public String hotelSearch(Model model, HotelVO vo, String searchWord) {
//      
//      model.addAttribute("hotelService", hotelService.searchHotel(vo));
//      
//      
//      return "hotel/hotel-list";
//      
//   }

//   //그냥 검색 누를시 값 list값 넘어오는지 먼저 확인 해야함 (확인 OK)
//   @RequestMapping(value="/hotel-list.do")
//   public String allList(Model model, HotelVO vo) {
//      
//      model.addAttribute("allList", hotelService.hotelAllList(vo));
//      
//      return "hotel/hotel-list";
//   }

	// 호텔 상세보기
	@RequestMapping(value = "/hotelRoomList.do")
	public String hotelDetail(HttpServletRequest request, HttpServletResponse response, Model model, HotelVO hotelVo,
			int hotelIdx) {

//      HttpSession session = request.getSession();
//      MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
//      if(loginuser!=null) {
//         hotelVO.setMemberidx(loginuser.getMemberidx());
//         service.setTrendView(hotelVO);
//      }
		HotelVO hotelOne = hotelService.getHotelOne(hotelIdx);
		List<HotelVO> roomList = hotelService.getRoomList(hotelVo);
		model.addAttribute("hotelOne", hotelOne);
		model.addAttribute("roomList", roomList);
		return "hotel/room-details";

	}

	@RequestMapping(value = "/hotel-reservation.do")
	public String hotelReservation(Model model, HotelVO hotelVo) {

		return "hotel/hotel-booking";
	}

//   //호텔 리뷰
//   @RequestMapping(value="/ajaxReview.do",  produces="text/plain;charset=UTF-8")
//   @ResponseBody
//   public String ajaxReview(HttpServletRequest request, HotelVO )

}