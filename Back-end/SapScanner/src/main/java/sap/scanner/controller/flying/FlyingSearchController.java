package sap.scanner.controller.flying;

import java.io.File;
import java.io.IOException;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import sap.scanner.flying.FlyingService;
import sap.scanner.flying.FlyingVO;

@Controller
public class FlyingSearchController {

	private FlyingService flyingService;
	
	// 편도 검색
	@RequestMapping(value = "/flight-search.do", method = RequestMethod.POST)
	public String getSingleSchedule(FlyingVO vo, Model model) {

		List<FlyingVO> singleScheduleList = flyingService.getSingleSchedule(vo);

		model.addAttribute("singleScheduleList", singleScheduleList);

		return "/flying/flight-booking";
	}
	
	// 왕복 검색
	@RequestMapping(value = "/flight-search.do", method = RequestMethod.POST)
	private String getDoubleSchedule(FlyingVO vo, Model model) {
		
		List<FlyingVO> doubleScheduleList = flyingService.getDoubleSchedule(vo);

		model.addAttribute("doubleScheduleList", doubleScheduleList);

		return "/flying/flight-booking";

	}

	// 스케쥴 등록
	@RequestMapping(value = "/admin-dashboard-flying-insertSchedule.do", method = RequestMethod.POST)
	public String insertBoard(FlyingVO vo) throws IOException {
		// 파일 업로드 처리
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("C:/" + fileName));
		}
		flyingService.insertSchedule(vo);
		return "admin-dashboard-flying.do";
	}

	// 스케쥴 수정
	@RequestMapping(value = "/uadmin-dashboard-flying-updateSchedule.do", method = RequestMethod.POST)
	public String updateBoard(@ModelAttribute("flying") FlyingVO vo) {
		flyingService.updateSchedule(vo);
		return "admin-dashboard-flying.do";
	}

	// 스케쥴 삭제
	@RequestMapping(value = "/admin-dashboard-flying-deleteSchedule.do", method = RequestMethod.POST)
	public String deleteBoard(FlyingVO vo) {
		flyingService.deleteSchedule(vo);
		return "admin-dashboard-flying.do";
	}
}
