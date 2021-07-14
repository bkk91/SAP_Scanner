package sap.scanner.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import sap.scanner.vo.UserService;
import sap.scanner.vo.UserVO;

@Controller
//@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	// http 로그인 세션관리 메소드 (ajax용 : Responesbody)
	@RequestMapping("/getUserInfo.do")
	@ResponseBody
	public String getUserInfo(HttpServletRequest request) throws JsonProcessingException {
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		hashmap.put("user", user);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		return json;
	}

	// 회원 가입 메소드
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(UserVO vo) throws IOException {
		logger.info("회원가입 메소드");
		userService.register(vo);
		return "redirect:/";
	}

	// 로그인 메소드
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginPost(UserVO vo, HttpSession session, HttpServletRequest request, Model model) throws IOException {
		logger.info("로그인POST");
		UserVO user = userService.login(vo);

		System.out.println(request.getHeader("Referer"));
		String temp = request.getHeader("Referer");
		System.out.println(1);
		temp = temp.substring(28);
		System.out.println(temp);
		if (user == null) {
			System.out.println("로그인 실패");
			return "redirect:/";
		} else {
			session.setAttribute("user", user);
			System.out.println(user);
			System.out.println(user.getUserGrade());
			model.addAttribute("userGrade", user.getUserGrade());
			int grade = user.getUserGrade();
			if (grade == 0) {
				System.out.println("관리자 로그인");
				return "forward:/"+temp;
			} else {
				System.out.println("회원 로그인");
				return "forward:/"+temp;
			}
		}
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginGet(UserVO vo, HttpServletRequest request) throws IOException {
		logger.info("로그인GET");
		HttpSession session = request.getSession();
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);

		return null;
	}

	// 로그아웃 메소드
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) throws IOException {
		logger.info("로그아웃");
		session.invalidate();
		return "redirect:/index.jsp";
	}

	// 로그인 후, 유저 대쉬보드 이동
	@RequestMapping(value = "/user-dashboard-post.do", method = RequestMethod.POST)
	public String userDashboardPost(Locale locale, Model model, HttpServletRequest request) throws IOException {
		logger.info("유저 대시보드: 메인페이지", locale);
		HttpSession session = request.getSession();
		UserVO vo = (UserVO) session.getAttribute("user");
		model.addAttribute("readName", userService.getUserInfo(vo.getUserNum()));

		return "dashboard/user-dashboard";
	}

	// 유저 대쉬보드 이동
	@RequestMapping(value = "/user-dashboard.do", method = RequestMethod.GET)
	public String userDashboard(Locale locale, Model model) throws IOException {
		logger.info("유저 대시보드: 메인페이지", locale);

		return "dashboard/user-dashboard";
	}

	// 유저 대쉬보드 - 회원정보 페이지 이동 및 페이지 정보 출력
	@RequestMapping(value = "/user-dashboard-setting.do", method = RequestMethod.GET)
	public String userDashboardSetting(UserVO vo, Model model, HttpServletRequest request) throws IOException {
		logger.info("유저 대시보드: 메인페이지");
		System.out.println(1);
		HttpSession session = request.getSession();
		System.out.println(2);
		vo = (UserVO) session.getAttribute("user");
		System.out.println(3);
		model.addAttribute("read", userService.getUserInfo(vo.getUserNum()));
		return "dashboard/user-dashboard-setting";
	}

	// 회원 정보 수정 : 프로필
	@ResponseBody
	@RequestMapping("/updateUserProfile.do")
	public String updateUserProfile(@ModelAttribute UserVO vo, HttpServletRequest request) throws IOException {
		logger.info("회원정보 수정: 프로필 메소드 ");
		boolean flag = true;

		HttpSession session = request.getSession();
		vo = (UserVO) session.getAttribute("user");

		System.out.println("===========");
		System.out.println(vo.getUserNum());
		System.out.println("===========");
		System.out.println(vo.getUserBirthdate());
		System.out.println("===========");

		userService.updateUserProfile(vo);

		if (flag)
			return "Update Profile Completed";
		else
			return "FAIL";
	}

	// 회원 정보 수정 : 이메일
	@ResponseBody
	@RequestMapping("/updateUserEmail.do")
	public String updateUserEmail(@ModelAttribute UserVO vo) throws IOException {
		logger.info("회원정보 수정: 이메일 메소드 ");
		boolean flag = true;
		userService.updateUserEmail(vo);

		if (flag)
			return "Update Email Completed";
		else
			return "FAIL";
	}

	// 회원 정보 수정 : 비밀번호
	@ResponseBody
	@RequestMapping("/updateUserPassword.do")
	public String updateUserPassword(@ModelAttribute UserVO vo) throws IOException {
		logger.info("회원정보 수정: 비밀번호 메소드 ");
		boolean flag = true;
		userService.updateUserPassword(vo);

		if (flag)
			return "Update Password Completed";
		else
			return "FAIL";
	}

	// 유저 대쉬보드 - 예약 페이지 이동
	@RequestMapping(value = "/user-dashboard-reservation.do", method = RequestMethod.GET)
	public String userDashboardReservation(Locale locale, Model model) throws IOException {
		logger.info("유저 대시보드: 메인페이지", locale);

		return "dashboard/user-dashboard-reservation";
	}

	// 유저 대쉬보드 - 리뷰 페이지 이동
	@RequestMapping(value = "/user-dashboard-review.do", method = RequestMethod.GET)
	public String userDashboardReview(Locale locale, Model model) throws IOException {
		logger.info("유저 대시보드: 메인페이지", locale);

		return "dashboard/user-dashboard-review";
	}
}
