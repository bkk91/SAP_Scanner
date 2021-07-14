package sap.scanner.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import sap.scanner.util.EncryptInfo;
import sap.scanner.vo.PaymentService;
import sap.scanner.vo.PaymentVO;
import sap.scanner.vo.UserVO;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private PaymentService paymentService;

	@RequestMapping(value = "/payment-received.do", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("예약완료페이지", locale);
		return "payment/flight-payment-received";
	}

	
	// 결제완료 페이지로 이동하는  메소드
	@RequestMapping(value = "/payment-completed.do", method = RequestMethod.GET)
	public String paymentCompleted(Locale locale, Model model, PaymentVO paymentVO, UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("결제완료페이지", locale);
		System.out.println("성공");
		// 세션 받아오기
		HttpSession session = request.getSession();
		session.setAttribute("idx", session.getAttribute("idx"));
		session.setAttribute("userDetail", session.getAttribute("user"));
		session.setAttribute("printList", session.getAttribute("printList"));
		session.setAttribute("encrypt", request.getParameter("encrypt"));
		
		System.out.println("예약번호 : " + session.getAttribute("idx"));
		System.out.println("회원정보 : " + session.getAttribute("user"));
		System.out.println("항공권정보 : " + session.getAttribute("printList"));
		System.out.println("결제 정보 : " + request.getParameter("encrypt"));
		
		return "payment/flight-payment-completed";
	}

	// 결제완료 메소드
	@RequestMapping(value = "/paymentInfo.do", method = RequestMethod.POST)
	public String insertPayment(PaymentVO vo) throws IOException {
		System.out.println("DB 저장완료");
		paymentService.insertPaymentInfo(vo);
		return "redirect:payment-completed.do";
	}

	@ResponseBody
	@RequestMapping(value = "/pay.do")
	public String creditPayment(@ModelAttribute PaymentVO paymentVO, UserVO userVO, HttpServletRequest request,
			HttpServletResponse response) throws JsonProcessingException {

		// 세션 받아오기
		HttpSession session = request.getSession();

		// 결제정보 암호화
		System.out.println(paymentVO.getEncrypt());
		System.out.println(paymentVO.getCardName());
		System.out.println(paymentVO.getEncryptKey());

		System.out.println("=========암호화=======");
		System.out.println(request.getParameter("encrypt"));

		System.out.println("========복호화========");
		System.out.println(EncryptInfo.decoding(paymentVO.getEncrypt(),
		paymentVO.getCardName(), paymentVO.getEncryptKey()));
		Map<String, String> paymentInfo = new HashMap<String, String>();

		paymentInfo = EncryptInfo.decoding(paymentVO.getEncrypt(), paymentVO.getCardName(), paymentVO.getEncryptKey());

		System.out.println("========성공========");
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);

		// 세션정보 받아오기
		session.setAttribute("idx", EncryptInfo.getIdx());
		session.setAttribute("userDetail", session.getAttribute("user"));
		session.setAttribute("encrypt", request.getParameter("encrypt"));
		System.out.println("회원정보 : " + session.getAttribute("user"));
		System.out.println("항공권정보 : " + session.getAttribute("printList"));
		System.out.println("결제 정보 : " + request.getParameter("encrypt"));

		return json;
	}

}
