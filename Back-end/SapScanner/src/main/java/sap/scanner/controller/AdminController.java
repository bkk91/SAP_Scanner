package sap.scanner.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sap.scanner.util.UploadFileUtils;
import sap.scanner.vo.Criteria;
import sap.scanner.vo.FlyingService;
import sap.scanner.vo.FlyingVO;
import sap.scanner.vo.HotelService;
import sap.scanner.vo.HotelVO;
import sap.scanner.vo.PageMaker;
import sap.scanner.vo.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private FlyingService flyingService;

	@Autowired
	private HotelService hotelService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	// 로그인 후 바로 관리자 페이지 이동

	@RequestMapping(value = "/admin-dashboard-post.do", method = RequestMethod.POST)
	public String adminDashboardPost(Locale locale, Model model) {
		logger.info("관리자 대시보드: 메인", locale);

		return "dashboard/admin-dashboard";
	}

	@RequestMapping(value = "/admin-dashboard.do", method = RequestMethod.GET)
	public String adminDashboard(Locale locale, Model model, HttpServletRequest request) {
		logger.info("관리자 대시보드: 메인", locale);

		HttpSession session = request.getSession();
		session.getAttribute("user");

		if (session != null) {
			return "dashboard/admin-dashboard";
		} else {
			return null;
		}
	}

	@RequestMapping(value = "/admin-dashboard-user.do", method = RequestMethod.GET)
	public String adminDashboardUser(Locale locale, Model model, Criteria cri) {
		logger.info("관리자 대시보드 : 회원관리", locale);
		model.addAttribute("user", userService.getUser(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(flyingService.listCount());

		model.addAttribute("pageMaker", pageMaker);

		return "dashboard/admin-dashboard-user";
	}

	@RequestMapping(value = "/admin-dashboard-setting.do", method = RequestMethod.GET)
	public String adminDashboardSetting(Locale locale, Model model) {
		logger.info("관리자 대시보드 : 세팅", locale);

		return "dashboard/admin-dashboard-setting";
	}

	@RequestMapping(value = "/admin-dashboard-reservation.do", method = RequestMethod.GET)
	public String adminDashboardReservation(Locale locale, Model model) {
		logger.info("관리자 대시보드 : 예약", locale);

		return "dashboard/admin-dashboard-reservation";
	}

	@RequestMapping(value = "/admin-dashboard-review.do", method = RequestMethod.GET)
	public String adminDashboardReview(Locale locale, Model model) {
		logger.info("관리자 대시보드 : 리뷰", locale);

		return "dashboard/admin-dashboard-review";
	}

	@RequestMapping(value = "/admin-dashboard-flying-list.do", method = RequestMethod.GET)
	public String getScheduleView(Model model, Criteria cri) throws IOException {
		logger.info("관리자 대시보드 : 항공 스케쥴 리스트 ");

		model.addAttribute("list", flyingService.getSchedule(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(flyingService.listCount());

		model.addAttribute("pageMaker", pageMaker);

		return "dashboard/admin-dashboard-flying-list";
	}

	@RequestMapping(value = "/admin-dashboard-flying-selectList.do", method = RequestMethod.GET)
	public String singleSchedule(FlyingVO vo, Model model) throws IOException {
		logger.info("관리자 대시보드 : 선택한 항공 스케쥴 보기 ");
		model.addAttribute("read", flyingService.singleSchedule(vo.getVihicleId()));
		return "dashboard/admin-dashboard-flying-selectList";
	}

	// 어드민 대쉬보드 : 스케쥴 등록하는 페이지 이동
	@RequestMapping(value = "/admin-dashboard-flying-insertSchedule.do", method = RequestMethod.GET)
	public String insertScheduleView(FlyingVO vo) throws IOException {
		logger.info("어드민 대쉬보드 : 항공 스케쥴 등록 페이지 ");
		return "dashboard/admin-dashboard-flying-insertSchedule";
	}

	@RequestMapping(value = "/insertSchedule.do", method = RequestMethod.POST)
	public String insertSchedule(FlyingVO vo) throws IOException {
		logger.info("항공 스케쥴 추가 메소드 ");
		flyingService.insertSchedule(vo);
		return "redirect:admin-dashboard-flying-list.do";
	}

	@ResponseBody
	@RequestMapping("/updateSchedule.do")
	public String updateSchedule(@ModelAttribute FlyingVO vo) throws IOException {
		logger.info("항공권 수정 메소드 ");
		flyingService.updateSchedule(vo);

		return "admin-dashboard-flying-selectList.do";
	}

	@ResponseBody
	@RequestMapping("/deleteSchedule.do")
	public String deleteSchedule(@ModelAttribute FlyingVO vo) throws IOException {
		logger.info("항공권 삭제 메소드");
		System.out.println(vo.getVihicleId());
		boolean flag = true;
		flyingService.deleteSchedule(vo.getVihicleId());
		System.out.println("완료");
		if (flag)
			return "DELETE COMPLETED";
		else
			return "FAIL";
	}

	// 호텔!!!

	// 관리자 호텔 쪽
	@RequestMapping("/admin-hotel-list.do")
	public String adminHotelList(Model model) {

		model.addAttribute("adminHotelList", hotelService.adminHotelListAll());

		return "dashboard/admin-dashboard-hotel-list";
	}

	// 호텔 등록 화면으로 이동
	@RequestMapping("/admin-hotel-insertForm.do")
	public String hotelInsertForm() {

		// 호텔 등록 jsp 리턴
		return "dashboard/admin-dashboard-hotel-insert";
	}

	// 호텔 등록 처리
	// db 인서트 후 호텔리스트 jsp 리턴
	@RequestMapping(value = "/admin-hotel-insert.do", method = RequestMethod.POST)
	public String hotelInsert(HttpServletRequest request, @ModelAttribute HotelVO hotelVo, @RequestParam MultipartFile uploadFile) throws IOException, Exception {
		
		System.out.println("name================"+uploadFile.getOriginalFilename());
		
		String root_path = request.getSession().getServletContext().getRealPath("/");  
		String attach_path = "resources/upload/imgUpload/";
	    String filename = uploadFile.getOriginalFilename();
		
		//String imgUploadPath = uploadPath + File.separator + "imgUpload"; // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		
		if (!uploadFile.isEmpty()) {
			File f = new File(root_path + attach_path + filename);
			uploadFile.transferTo(f);
		}

		hotelVo.setFileName(attach_path + uploadFile.getOriginalFilename());
		// hotelVo.setHotelThumNail(File.separator + "imgUpload" + ymdPath +
		// File.separator + "s" + File.separator + "s_" + fileName);

		hotelService.hotelInsert(hotelVo);
		System.out.println("hotelVo" + hotelVo);

		return "redirect:admin-hotel-list.do";
	}

	// 게시물 선택 삭제
	@RequestMapping(value = "/ajaxDelete")
	public String ajaxDelete(HttpServletRequest request) {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		for (int i = 0; i < ajaxMsg.length; i++) {
			System.out.println(ajaxMsg[i]);
		}
		System.out.println();
		hotelService.ajaxDelete(ajaxMsg);

		return "redirect:admin-hotel-list.do";
	}

	// 객실 삭제
	@RequestMapping(value = "/ajaxRoomDelete")
	public String ajaxRoomDelete(HttpServletRequest request, int hotelIdx) {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
			hotelService.ajaxRoomDelete(ajaxMsg[i]);

		}

		return "redirect:admin-room-list.do";
	}

	// 관리자 호텔 디테일
	@RequestMapping(value = "/admin-hotel-detail.do", method = RequestMethod.GET)
	public String adminHotelDetail(Model model, int hotelIdx) {
		HotelVO hotelData = hotelService.adminHotelDetail(hotelIdx);
		model.addAttribute("hotelData", hotelData);
		return "dashboard/admin-dashboard-hotel-detail";
	}

	// 관리자 호텔 수정폼 이동
	@RequestMapping(value = "/admin-hotel-updateForm.do", method = RequestMethod.GET)
	public String adminHotelUpdateForm(int hotelIdx, Model model) {
		System.out.println(hotelIdx);
		HotelVO hotelData = hotelService.adminHotelDetail(hotelIdx);
		System.out.println(hotelData.getHotelInfo());
		model.addAttribute("hotelData", hotelData);
		return "dashboard/admin-dashboard-hotel-update";
	}

	// 호텔 수정 POST
	@RequestMapping(value = "/hotelUpdate.do", method = RequestMethod.POST)
	public String PostHotelUpdate(HotelVO vo) {
		hotelService.hotelUpdate(vo);
		System.out.println("vo => " + vo.getHotelIdx());
		return "redirect:admin-hotel-detail.do?hotelIdx=" + vo.getHotelIdx();
	}

	// 관리자 호텔 의 객실 전체 리스트
	@RequestMapping("/admin-room-list.do")
	public String adminRoomList(Model model, int hotelIdx) {

		List<HotelVO> adminHotelRoomList = hotelService.adminRoomList(hotelIdx);

		model.addAttribute("adminHotelRoomList", adminHotelRoomList);

		return "dashboard/admin-dashboard-room-list";
	}

	// 관리자 객실 등록 폼으로 이동
	@RequestMapping("/admin-room-insertForm.do")
	public String roomInsertForm() {

		// 호텔 등록 jsp 리턴
		return "dashboard/admin-dashboard-room-insert";
	}

	// 객실 등록 처리
	// db 인서트 후 호텔리스트 jsp 리턴
	@RequestMapping(value = "/admin-room-insert.do", method = RequestMethod.POST)
	public String roomInsert(@ModelAttribute HotelVO hotelVo) throws IOException, Exception {

		MultipartFile uploadFile = hotelVo.getUploadFile();

		String imgUploadPath = uploadPath + File.separator + "imgUpload"; // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath); // 위의 폴더를 기준으로 연월일 폴더를 생성
		String fileName = null; // 기본 경로와 별개로 작성되는 경로 + 파일이름

		if (uploadFile != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, uploadFile.getOriginalFilename(),
					uploadFile.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";

		}

		hotelVo.setFileName(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		// hotelVo.setHotelThumNail(File.separator + "imgUpload" + ymdPath +
		// File.separator + "s" + File.separator + "s_" + fileName);

		hotelService.roomInsert(hotelVo);
		System.out.println("Controller=------->" + hotelVo);

		return "redirect:admin-room-list.do";
	}

}
