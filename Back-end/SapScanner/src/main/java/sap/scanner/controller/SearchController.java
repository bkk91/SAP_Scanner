package sap.scanner.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import sap.scanner.util.EncryptInfo;
import sap.scanner.util.SortResult;
import sap.scanner.vo.FlyingService;
import sap.scanner.vo.FlyingVO;
import sap.scanner.vo.HotelService;
import sap.scanner.vo.HotelVO;
import sap.scanner.vo.UserService;
import sap.scanner.vo.UserVO;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	private FlyingService flyingService;

	@Autowired
	private UserService userService;

	@Autowired
	private HotelService hotelService;

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	// 항공권 검색 페이지 (뷰)
	@RequestMapping(value = "/flight-search.do", method = RequestMethod.GET)
	public String flightSearchView(Locale locale, Model model) {
		logger.info("항공권 검색 페이지", locale);

		return "/flying/flight-search";
	}

	// 가격순 정렬 메소드 (편도)
	@ResponseBody
	@RequestMapping("/sortByPrice.do")
	public String functionSortByPrice(Model model, HttpServletRequest request, @ModelAttribute FlyingVO vo)
			throws IOException {
		logger.info("가격순 정렬메소드");

		HttpSession session = request.getSession();

		int count = (int) session.getAttribute("count");
		String seatGrade = (String) session.getAttribute("seatGrade");
		List<Map<String, String>> resultList = (List<Map<String, String>>) session.getAttribute("searchList");

		List<Map<String, String>> sortList = SortResult.sortByPrice(resultList, seatGrade, count);

		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		hashmap.put("searchList", sortList);

		for (int i = 0; i < sortList.size(); i++) {
			System.out.println(sortList.get(i));
		}

		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		return json;
	}

	// 출발 빠른순 정렬 메소드 (편도)
	@ResponseBody
	@RequestMapping("/sortByDepTime.do")
	public String functionSortByDepTime(Model model, HttpServletRequest request, @ModelAttribute FlyingVO vo)
			throws IOException {
		logger.info("출발시간 빠른순 정렬메소드");
		HttpSession session = request.getSession();

		int count = (int) session.getAttribute("count");
		String seatGrade = (String) session.getAttribute("seatGrade");
		List<Map<String, String>> resultList = (List<Map<String, String>>) session.getAttribute("searchList");

		List<Map<String, String>> sortList = SortResult.sortByDepTime(resultList);

		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		hashmap.put("searchList", sortList);

		for (int i = 0; i < sortList.size(); i++) {
			System.out.println(sortList.get(i));
		}

		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		return json;
	}

	// 도착시간 빠른순 정렬 메소드 (편도)
	@ResponseBody
	@RequestMapping("/sortByArrTime.do")
	public String functionSortByArrTime(Model model, HttpServletRequest request, @ModelAttribute FlyingVO vo)
			throws IOException {
		logger.info("도착시간 빠른순 정렬메소드");
		HttpSession session = request.getSession();

		int count = (int) session.getAttribute("count");
		String seatGrade = (String) session.getAttribute("seatGrade");
		List<Map<String, String>> resultList = (List<Map<String, String>>) session.getAttribute("searchList");

		List<Map<String, String>> sortList = SortResult.sortByArrTime(resultList);

		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		hashmap.put("searchList", sortList);

		for (int i = 0; i < sortList.size(); i++) {
			System.out.println(sortList.get(i));
		}

		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		return json;
	}
	
	

	// 항공권 편도 검색 메소드
	@RequestMapping(value = "/searchOneway.do", method = RequestMethod.POST)
	public String searchOneway(Model model, FlyingVO vo, HttpSession session) {
		logger.info("[편도] 항공 검색 메소드");

		List<Map<String, String>> searchList = flyingService.searchOneway(vo);
		List<Map<String, String>> resultList = flyingService.searchOneway(vo);

		Map<String, String> temp = new HashMap<>();
		Map<String, String> result = new HashMap<>();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ArrayList<Object> indexList = new ArrayList<Object>();

		// 입력받은 날짜 값
		String depTimeTest = vo.getDepTimeTest();
		depTimeTest = depTimeTest.replace("-", "");
		depTimeTest = depTimeTest.replace(":", "");
		depTimeTest = depTimeTest.replace(" ", "");

		String str1 = depTimeTest.substring(4, 12);
		String check = str1.substring(0, 4);

		int tempTime1 = Integer.parseInt(str1);
		int valDate = Integer.parseInt(check);

		for (int i = 0; i < searchList.size(); i++) {
			System.out.println(searchList.get(i));
			temp = searchList.get(i);

			String tempDate = sdf.format(temp.get("depPlandTime"));
			System.out.println(tempDate);

			tempDate = tempDate.replace("-", "");
			tempDate = tempDate.replace(":", "");
			tempDate = tempDate.replace(" ", "");

			String str2 = tempDate.substring(4, 12);
			String check2 = str2.substring(0, 4);

			int tempTime2 = Integer.parseInt(str2);
			int valDate2 = Integer.parseInt(check2);

			if (tempTime1 > tempTime2 || (valDate != valDate2)) {
				indexList.add(i);
			}
		}

		System.out.println(searchList.size());
		System.out.println(resultList.size());

		Collections.reverse(indexList);
		for (int i = 0; i < indexList.size(); i++) {
			int removeIdx = (int) indexList.get(i);
			System.out.println(removeIdx);

			resultList.remove(removeIdx);
		}

		int price = 0;
		String grade = null;

		for (int i = 0; i < resultList.size(); i++) {
			result = resultList.get(i);

			String tempDepDate = sdf.format(result.get("depPlandTime"));
			String DepDateFormat = tempDepDate.substring(0, 16);
			result.put("dep_Pland_Time", DepDateFormat);

			String tempArrDate = sdf.format(result.get("arrPlandTime"));
			String ArrDateFormat = tempArrDate.substring(0, 16);
			result.put("arr_Pland_Time", ArrDateFormat);

			int calc01 = Integer.parseInt(DepDateFormat.substring(11, 13));
			int calc02 = Integer.parseInt(ArrDateFormat.substring(11, 13));
			int flightTime = 0;

			if (calc01 > calc02) {
				flightTime = calc01 - calc02;
			} else {
				flightTime = calc02 - calc01;
			}
			String inputTime = Integer.toString(flightTime);
			result.put("seat_Status", inputTime);

			grade = result.get("seatGrade");
			if (grade.equals("1")) {
				String str = String.valueOf(result.get("economyCharge"));
				price = Integer.parseInt(str);
			} else if (grade.equals("2")) {
				String str = String.valueOf(result.get("prestigeCharge"));
				price = Integer.parseInt(str);
			} else if (grade.equals("3")) {
				String str = String.valueOf(result.get("firstCharge"));
				price = Integer.parseInt(str);
			}

			System.out.println(grade);
			System.out.println(price);
			System.out.println(resultList.get(i));
		}

		model.addAttribute("searchList", resultList);
		model.addAttribute("price", price);

		// 등급 표시
		String seatGrade = null;
		if (grade.equals("1")) {
			seatGrade = "이코노미";
		} else if (grade.equals("2")) {
			seatGrade = "비지니스";
		} else if (grade.equals("3")) {
			seatGrade = "일등석";
		}

		model.addAttribute("seatGrade", seatGrade);

		// 편도 표시
		String oneWay = vo.getOneWay();
		model.addAttribute("oneWay", oneWay);

		// 인원수
		int totCount = vo.getTotCount();

		// 가격 합계
		int sum = price * totCount;
		model.addAttribute("sum", sum);

		session.setAttribute("count", totCount);
		session.setAttribute("seatGrade", grade);
		session.setAttribute("searchList", resultList);

		return "/flying/flight-list-oneway";
	}

	// 항공권 왕복 검색 메소드
	@RequestMapping(value = "/searchRoundtrip.do", method = RequestMethod.POST)
	public String searchRoundtrip(Model model, FlyingVO vo, HttpSession session) {
		logger.info("[왕복] 항공 검색 메소드");
		// 출발일 기준 항공권 결과 리스트
		List<Map<String, String>> firstResultList = flyingService.searchOneway(vo);
		// 도착일 기준 항공권 결과 리스트
		List<Map<String, String>> secondResultList = flyingService.searchRoundtrip(vo);

		// 출발일 결과 메소드용 map 변수 선언 (첫번째 조건 결과)
		Map<String, String> firstResult = new HashMap<>();
		// 도착일 결과 메소드용 map 변수 선언 (두번째 조건 결과)
		Map<String, String> secondResult = new HashMap<>();

		// (첫번째 조건 결과) 입력받은 출발시간과 비교하여 입력받은 시간 이후의 인덱스 번호만 찾아서 출발일 List에 index번호를 추가
		ArrayList<Object> firstIndexList = new ArrayList<Object>();

		// (두번째 조건 결과) 왕복 검색 조건을 담아줄 arrindexList 변수 선언
		ArrayList<Object> secondIndexList = new ArrayList<Object>();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// 왕복: 입력받은 출발일 --> 검색할 출발일
		// (ex) 2021-06-19 00:00:00
		// -> 20210619000000
		// -> (int) 06190000 (Month, Day, Hour, Minute) 변환
		// 변수명: tempTime1
		
		String depTimeTest = vo.getDepTimeTest();
		
		System.out.println("-------------------------");		
		System.out.println(depTimeTest);
		System.out.println("-------------------------");
		depTimeTest = depTimeTest.replace("-", "");
		depTimeTest = depTimeTest.replace(":", "");
		depTimeTest = depTimeTest.replace(" ", "");
		String str1 = depTimeTest.substring(4, 12);
		int inputDepTime = Integer.parseInt(str1);
		// 유효성 검사 날짜 제거
		String check1 = str1.substring(0, 4);
		int checkTime1 = Integer.parseInt(check1);
		
		// 왕복: 입력받은 도착일 --> 검색할 출발일로 변환
		// (ex) 2021-06-19 05:00:00
		// -> 20210620500000
		// -> (int) 06200500 (Month, Day, Hour, Minute) 변환
		// 변수명: tempTime2
		System.out.println("-------------------------");
		System.out.println("-------------------------");
		String arrTimeTest = vo.getArrTimeTest();
		System.out.println(arrTimeTest);
		arrTimeTest = arrTimeTest.replace("-", "");
		arrTimeTest = arrTimeTest.replace(":", "");
		arrTimeTest = arrTimeTest.replace(" ", "");
		String str2 = arrTimeTest.substring(4, 12);
		int inputArrTime = Integer.parseInt(str2);
		// 유효성 검사 날짜 제거
		String check2 = str2.substring(0, 4);
		int checkTime2 = Integer.parseInt(check2);
		
		// 입력받은 결과값 확인할 변수 선언
		String rDepAirportCityNm = vo.getDepAirportCityNm();
		String rArrAirportCityNm = vo.getArrAirportCityNm();
		// firstResult라는 map에 (왕복 검색결과 첫번째 출력 조건 입력)
		for (int i = 0; i < firstResultList.size(); i++) {
			// list<map> 각각 입력
			firstResult = firstResultList.get(i);
			// map에 도착도시 또는 이름 변수 선언
			String tempDepAirport = (String) firstResult.get("depAirportNm");
			String tempDepCity = (String) firstResult.get("depCityNm");
			String tempArrAirport = (String) firstResult.get("arrAirportNm");
			String tempArrCity = (String) firstResult.get("arrCityNm");
			// (출발, 도착) 도시, 공항명 이름 확인
			if ((rDepAirportCityNm.equals(tempDepAirport) || rDepAirportCityNm.equals(tempDepCity))
					&& (rArrAirportCityNm.equals(tempArrAirport) || rArrAirportCityNm.equals(tempArrCity))) {
				
				// 이름이 포함되어있으면, 시간 변환
				String tempDate = sdf.format(firstResult.get("arrPlandTime"));
				tempDate = tempDate.replace("-", "");
				tempDate = tempDate.replace(":", "");
				tempDate = tempDate.replace(" ", "");
				String str3 = tempDate.substring(4, 12);
				int checkTime = Integer.parseInt(str3);
				
				// 유효성 검사 날짜 제거
				String check3 = str3.substring(0, 4);
				int checkTime3 = Integer.parseInt(check3);
				
				// 스케쥴에 저장되어있는 시간이 입력시간보다 크고, 입력받은 month + day값이 같을때 index 번호를 저장
				System.out.println("checkTime1 : " + checkTime1);
				System.out.println("checkTime3 : " + checkTime3);
				
				if (!(checkTime1 == checkTime3)) {
					firstIndexList.add(i);
				}
				if(checkTime1 == checkTime3){
					System.out.println(i);
				}
			}
		}

		// secondResult라는 map에 (왕복 검색결과 두번째 출력 조건 입력)
		for (int i = 0; i < secondResultList.size(); i++) {
			// list<map> 각각 입력
			secondResult = secondResultList.get(i);
			// map에 도착도시 또는 이름 변수 선언
			String tempDepAirport = (String) secondResult.get("depAirportNm");
			String tempDepCity = (String) secondResult.get("depCityNm");
			String tempArrAirport = (String) secondResult.get("arrAirportNm");
			String tempArrCity = (String) secondResult.get("arrCityNm");
			// (출발, 도착) 도시, 공항명 이름 확인. 이 때, 출발 <-> 도착도시명 바꾸어 조회
			if (!((rDepAirportCityNm.equals(tempArrAirport) || rDepAirportCityNm.equals(tempArrCity))
					&& (rArrAirportCityNm.equals(tempDepAirport) || rArrAirportCityNm.equals(tempDepCity)))) {

				// 이름이 포함되어있으면, 시간 변환
				String tempDate = sdf.format(secondResult.get("depPlandTime"));
				tempDate = tempDate.replace("-", "");
				tempDate = tempDate.replace(":", "");
				tempDate = tempDate.replace(" ", "");
				String str3 = tempDate.substring(4, 12);
				int checkTime = Integer.parseInt(str3);
				// 유효성 검사 날짜 제거
				String check4 = str3.substring(1, 4);
				int checkTime4 = Integer.parseInt(check4);
				
				// 스케쥴에 저장되어있는 시간이 입력시간보다 크고, 입력받은 month + day값이 같을때 index 번호를 저장
				if (!(checkTime > inputArrTime && checkTime2 == checkTime4)) {
					secondIndexList.add(i);
				}
			}
		}

		// 동적인 arrayList의 값을 가장 큰 내림차순 정렬 후 index를 resultList에서 remove해야
		// remove index null error가 발생하지 않기 때문에 내림차순 정렬 후 제거
		Collections.reverse(firstIndexList);
		Collections.reverse(secondIndexList);

		for (int i = 0; i < firstIndexList.size(); i++) {
			int removeIdx = (int) firstIndexList.get(i);
			firstResultList.remove(removeIdx);
		}

		for (int i = 0; i < secondIndexList.size(); i++) {
			int removeIdx = (int) secondIndexList.get(i);
			secondResultList.remove(removeIdx);
		}

		// Validation check용 -1
		Map<String, String> val = new HashMap<>();
		List<Integer> test = new ArrayList<>();
		for (int i = 0; i < secondResultList.size(); i++) {
			val = secondResultList.get(i);
			String vardepAirportNm = (String) val.get("depAirportNm");
			String vardepCityNm = (String) val.get("depCityNm");
			if (vardepAirportNm.equals(vo.getArrAirportCityNm()) || vardepCityNm.equals(vo.getArrAirportCityNm())) {
				test.add(i);
			}
		}
		Collections.reverse(test);
		for (int i = 0; i < test.size(); i++) {
			int removeIdx = (int) test.get(i);
			secondResultList.remove(removeIdx);
		}

		// Validation check용 -2
		Map<String, String> val2 = new HashMap<>();
		List<Integer> test2 = new ArrayList<>();
		for (int i = 0; i < secondResultList.size(); i++) {
			val2 = secondResultList.get(i);
			String vardepAirportNm = (String) val2.get("depAirportNm");
			String vardepCityNm = (String) val2.get("depCityNm");
			if (vardepAirportNm.equals(vo.getArrAirportCityNm()) || vardepCityNm.equals(vo.getArrAirportCityNm())) {
				test2.add(i);
			}
		}
		Collections.reverse(test2);
		for (int i = 0; i < test2.size(); i++) {
			int removeIdx = (int) test2.get(i);
			secondResultList.remove(removeIdx);
		}

		// 첫번째 --출력용 매핑 데이터 수정
		int firstPrice = 0;
		String firstGrade = null;
		// 첫번째 조건 수정용 map
		Map<String, String> firstCondition = new HashMap<>();

		for (int i = 0; i < firstResultList.size(); i++) {
			firstCondition = firstResultList.get(i);

			String tempDepDate = sdf.format(firstCondition.get("depPlandTime"));
			String DepDateFormat = tempDepDate.substring(0, 16);
			firstCondition.put("dep_Pland_Time", DepDateFormat);

			String tempArrDate = sdf.format(firstCondition.get("arrPlandTime"));
			String ArrDateFormat = tempArrDate.substring(0, 16);
			firstCondition.put("arr_Pland_Time", ArrDateFormat);

			int calc01 = Integer.parseInt(DepDateFormat.substring(11, 13));
			int calc02 = Integer.parseInt(ArrDateFormat.substring(11, 13));
			int flightTime = 0;

			if (calc01 > calc02) {
				flightTime = calc01 - calc02;
			} else {
				flightTime = calc02 - calc01;
			}
			String inputTime = Integer.toString(flightTime);
			firstCondition.put("seat_Status", inputTime);

			// 입력받은 등급별로 1인/가격 선언
			firstGrade = firstCondition.get("seatGrade");
			if (firstGrade.equals("1")) {
				firstPrice = Integer.parseInt(String.valueOf(firstCondition.get("economyCharge")));

			} else if (firstGrade.equals("2")) {
				firstPrice = Integer.parseInt(String.valueOf(firstCondition.get("prestigeCharge")));

			} else if (firstGrade.equals("3")) {
				firstPrice = Integer.parseInt(String.valueOf(firstCondition.get("firstCharge")));
			}
		}
		// 등급 표시
		String firstSeatGrade = null;
		if (firstGrade.equals("1")) {
			firstSeatGrade = "이코노미";
		} else if (firstGrade.equals("2")) {
			firstSeatGrade = "비지니스";
		} else if (firstGrade.equals("3")) {
			firstSeatGrade = "일등석";
		}

		// 두번째 --출력용 매핑 데이터 수정
		int secondPrice = 0;
		String secondGrade = null;
		// 두번째 조건 수정용 map
		Map<String, String> secondCondition = new HashMap<>();

		for (int i = 0; i < secondResultList.size(); i++) {
			secondCondition = secondResultList.get(i);

			String tempDepDate = sdf.format(secondCondition.get("depPlandTime"));
			String DepDateFormat = tempDepDate.substring(0, 16);
			secondCondition.put("dep_Pland_Time", DepDateFormat);

			String tempArrDate = sdf.format(secondCondition.get("arrPlandTime"));
			String ArrDateFormat = tempArrDate.substring(0, 16);
			secondCondition.put("arr_Pland_Time", ArrDateFormat);

			int calc01 = Integer.parseInt(DepDateFormat.substring(11, 13));
			int calc02 = Integer.parseInt(ArrDateFormat.substring(11, 13));
			int flightTime = 0;

			if (calc01 > calc02) {
				flightTime = calc01 - calc02;
			} else {
				flightTime = calc02 - calc01;
			}
			String inputTime = Integer.toString(flightTime);
			secondCondition.put("seat_Status", inputTime);

			// 입력받은 등급별로 1인/가격 선언
			secondGrade = secondCondition.get("seatGrade");
			if (secondGrade.equals("1")) {
				secondPrice = Integer.parseInt(String.valueOf(firstCondition.get("economyCharge")));

			} else if (secondGrade.equals("2")) {
				secondPrice = Integer.parseInt(String.valueOf(firstCondition.get("prestigeCharge")));

			} else if (secondGrade.equals("3")) {
				secondPrice = Integer.parseInt(String.valueOf(firstCondition.get("firstCharge")));
			}
		}

		// [왕복] 항공권 검색 결과 메시지 출력
		String roundTrip = vo.getRoundTrip();

		// [인원수] 입력한 인원수
		int totCount = vo.getTotCount();

		// 첫번째 데이터 [가격] 합계 가격 * 인원수
		int firstSum = firstPrice * totCount;
		// 두번째 데이터 [가격] 합계 가격 * 인원수
		int secondSum = secondPrice * totCount;

		// 출발일 기준 항공권 결과 리스트
		List<Map<String, String>> validFirstResultList = new ArrayList<Map<String, String>>();
		if(firstResultList.size() >= 10) {
			for(int i = 0 ; i < 8; i++) {
				validFirstResultList.add(firstResultList.get(i));
			}
		}else {
			for(int i = 0 ; i < firstResultList.size(); i++) {
				validFirstResultList.add(firstResultList.get(i));
			}
		}
		
		// 도착일 기준 항공권 결과 리스트
		List<Map<String, String>> validSecondResultList = new ArrayList<Map<String, String>>();
		if(secondResultList.size() >= 10) {
			for(int i = 0 ; i < 8; i++) {
				validSecondResultList.add(secondResultList.get(i));
			}
		}else {
			for(int i = 0 ; i < secondResultList.size(); i++) {
				validSecondResultList.add(secondResultList.get(i));
			}
		}
		

		model.addAttribute("roundTrip", roundTrip);

		model.addAttribute("firstSeatGrade", firstSeatGrade);
		model.addAttribute("firstList", validFirstResultList);
		model.addAttribute("firstPrice", firstPrice);
		model.addAttribute("firstSum", firstSum);
		model.addAttribute("secondList", validSecondResultList);
		model.addAttribute("secondPrice", secondPrice);
		model.addAttribute("secondSum", secondSum);

		// 세션 등록
		session.setAttribute("Rcount", totCount);
		session.setAttribute("RfirstSeatGrade", firstSeatGrade);
		session.setAttribute("RfirstList", firstResultList);
		session.setAttribute("RfirstPirce", firstPrice);
		session.setAttribute("RfirstSum", firstSum);
		session.setAttribute("RsecondList", secondResultList);
		session.setAttribute("RsecondPrice", secondPrice);
		session.setAttribute("RsecondSum", secondSum);

		return "/flying/flight-list-roundtrip";
	}

	// 항공권 결과 리스트 출력 페이지 이동 (편도)
	@RequestMapping(value = "/flight-list-oneway.do", method = RequestMethod.GET)
	public String flightListOnewayView(Locale locale, Model model) {
		logger.info("항공권 결과출력 페이지", locale);

		return "/flying/flight-list-oneway";
	}

	// 항공권 결과 리스트 출력 페이지 이동 (왕복)
	@RequestMapping(value = "/flight-list-roundtrip.do", method = RequestMethod.GET)
	public String flightListRoundtripView(Locale locale, Model model) {
		logger.info("항공권 결과출력 페이지", locale);

		return "/flying/flight-list-roundtrip";
	}

	// 항공권 리스트에서 항공권 선택 시 선택 페이지 이동 (편도)
	@RequestMapping(value = "/flight-single-oneway.do", method = RequestMethod.GET)
	public String flightSingleOnewayView(Model model, FlyingVO vo, HttpServletRequest request, HttpSession session) {
		logger.info("[편도]: 항공권 선택 페이지");

		session = request.getSession();
		int count = (int) session.getAttribute("count");

		Map<String, String> result = new HashMap<String, String>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// 변수 선언
		String grade = null;
		int price = 0;
		// 항공권 결과 리스트
		List<Map<String, String>> ResultList = flyingService.printOneway(vo);
		for (int i = 0; i < ResultList.size(); i++) {
			result = ResultList.get(i);
			// 이름이 포함되어있으면, 시간 변환
			String tempDepDate = sdf.format(result.get("depPlandTime"));
			String DepDateFormat = tempDepDate.substring(0, 16);
			result.put("dep_Pland_Time", DepDateFormat);

			String tempArrDate = sdf.format(result.get("arrPlandTime"));
			String ArrDateFormat = tempArrDate.substring(0, 16);
			result.put("arr_Pland_Time", ArrDateFormat);

			int calc01 = Integer.parseInt(DepDateFormat.substring(11, 13));
			int calc02 = Integer.parseInt(ArrDateFormat.substring(11, 13));
			int flightTime = 0;

			if (calc01 > calc02) {
				flightTime = calc01 - calc02;
			} else {
				flightTime = calc02 - calc01;
			}

			String inputTime = Integer.toString(flightTime);
			result.put("seat_Status", inputTime);

			grade = result.get("seatGrade");
			if (grade.equals("1")) {
				price = Integer.parseInt(String.valueOf(result.get("economyCharge")));
				;
			} else if (grade.equals("2")) {
				price = Integer.parseInt(String.valueOf(result.get("prestigeCharge")));
				;
			} else if (grade.equals("3")) {
				price = Integer.parseInt(String.valueOf(result.get("firstCharge")));
				;
			}
		}

		int sum = price * count;

		// 등급 표시
		String seatGrade = null;
		if (grade.equals("1")) {
			seatGrade = "이코노미";
		} else if (grade.equals("2")) {
			seatGrade = "비지니스";
		} else if (grade.equals("3")) {
			seatGrade = "일등석";
		}

		// 총합
		int totalSum = sum;
		// 할인율 적용
		int discountSum = (int) (totalSum * (1 - 0.05));
		model.addAttribute("totalSum", totalSum);
		model.addAttribute("discountSum", discountSum);
		model.addAttribute("firstList", ResultList);
		model.addAttribute("firstSum", sum);
		model.addAttribute("firstPrice", price);
		model.addAttribute("firstSeatGrade", seatGrade);
		model.addAttribute("firstCount", count);

		Map<Object, Object> printSet = new HashMap<Object, Object>();
		printSet.put(0, totalSum);
		printSet.put(1, discountSum);
		printSet.put(2, ResultList);
		
		for(int i = 0; i < ResultList.size(); i++) {
			System.out.println(ResultList.get(i));
		}
		
		session.setAttribute("oneWayList", ResultList);
		session.setAttribute("count", count);
		session.setAttribute("seatGrade", grade);

		return "/flying/flight-single-oneway";
	}

	// 항공권 리스트에서 항공권 선택 시 선택 페이지 이동 (왕복)
	@RequestMapping(value = "/flight-single-roundtrip.do", method = RequestMethod.GET)
	public String flightSingleRoundtripView(Model model, FlyingVO vo, HttpServletRequest request) {
		logger.info("[왕복]: 항공권 선택 페이지");

		HttpSession session = request.getSession();
		// 출발일 기준 리스트
		List<Map<String, String>> firstResultList = new ArrayList<Map<String, String>>();
		// 도착일 기준 리스트
		List<Map<String, String>> secondResultList = new ArrayList<Map<String, String>>();

		firstResultList = (List<Map<String, String>>) session.getAttribute("RfirstList");
		secondResultList = (List<Map<String, String>>) session.getAttribute("RsecondList");

		int totCount = (int) session.getAttribute("Rcount");

		int idx = vo.getsIndex();
		System.out.println(idx);

		Map<String, String> firstResult = firstResultList.get(idx);
		String seatGrade = firstResult.get("seatGrade");
		String firstSeatGrade = null;
		int firstPrice = 0;
		if (seatGrade.equals("1")) {
			firstResult.put("seat_Grade", "이코노미");
			String temp = String.valueOf(firstResult.get("economyCharge"));
			firstPrice = Integer.parseInt(temp);
		} else if (seatGrade.equals("2")) {
			firstResult.put("seat_Grade", "비지니스");
			String temp = String.valueOf(firstResult.get("prestigeCharge"));
			firstPrice = Integer.parseInt(temp);
		} else if (seatGrade.equals("3")) {
			firstResult.put("seat_Grade", "일등석");
			String temp = String.valueOf(firstResult.get("firstCharge"));
			firstPrice = Integer.parseInt(temp);
		}
		int firstSum = totCount * firstPrice;

		Map<String, String> secondResult = secondResultList.get(idx);
		String secondSeatGrade = null;
		int secondPrice = 0;
		if (seatGrade.equals("1")) {
			secondResult.put("seat_Grade", "이코노미");
			String temp = String.valueOf(secondResult.get("economyCharge"));
			secondPrice = Integer.parseInt(temp);
		} else if (seatGrade.equals("2")) {
			secondResult.put("seat_Grade", "비지니스");
			String temp = String.valueOf(secondResult.get("prestigeCharge"));
			secondPrice = Integer.parseInt(temp);
		} else if (seatGrade.equals("3")) {
			secondResult.put("seat_Grade", "일등석");
			String temp = String.valueOf(secondResult.get("firstCharge"));
			secondPrice = Integer.parseInt(temp);
		}
		int secondSum = totCount * secondPrice;

		// 총합
		int totalSum = firstSum + secondSum;
		// 할인율 적용
		int discountSum = (int) (totalSum * (1 - 0.05));
		model.addAttribute("totalSum", totalSum);
		model.addAttribute("discountSum", discountSum);

		model.addAttribute("RfirstList", firstResult);
		model.addAttribute("RsecondList", secondResult);
		model.addAttribute("firstSum", firstSum);
		model.addAttribute("secondSum", secondSum);
		model.addAttribute("firstPrice", firstPrice);
		model.addAttribute("secondPrice", secondPrice);
		model.addAttribute("totCount", totCount);

		session.setAttribute("roundTripListOne", firstResult);
		session.setAttribute("roundTripListTwo", secondResult);
		session.setAttribute("count", totCount);
		session.setAttribute("seatGrade", seatGrade);

		return "/flying/flight-single-roundtrip";
	}

	// 항공 예약 페이지
	@RequestMapping(value = "/flight-booking.do")
	public String flightBookingView(Model model, HttpServletRequest request, UserVO userVO, FlyingVO flyingVO) {
		logger.info("항공권 예약 페이지로 이동.");
		HttpSession session = request.getSession();
		model.addAttribute("userDetail", session.getAttribute("user"));

		// 왕복 + 편도의 결과를 담아줄 리스트 매핑
		List<Map<String, String>> resultList = new ArrayList<Map<String, String>>();
		// 탑승객 수
		int count = (int) session.getAttribute("count");
		// 좌석등급
		String seatGrade = (String) session.getAttribute("seatGrade");
		String currentSeatGrade = null;
		if (seatGrade.equals("1")) {
			currentSeatGrade = "이코노미";
		} else if (seatGrade.equals("2")) {
			currentSeatGrade = "비지니스";
		} else if (seatGrade.equals("3")) {
			currentSeatGrade = "일등석";
		}

		// 가격
		// int price1 = 첫번째, int price2 = 두번째 (편도일경우 price1만 존재)
		int price1 = 0;
		int price2 = 0;
		int sum = 0;
		// 편도일 경우
		Map<String, String> oneWayList = new HashMap<String, String>();
		if (session.getAttribute("oneWayList") != null) {
			List<Map<String, String>> tempList = (List<Map<String, String>>) session.getAttribute("oneWayList");
			oneWayList = tempList.get(0);
			resultList.add(oneWayList);
			if (currentSeatGrade.equals("이코노미")) {
				String charge = String.valueOf(resultList.get(0).get("economyCharge"));
				price1 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("비지니스")) {
				String charge = String.valueOf(resultList.get(0).get("prestigeCharge"));
				price1 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("일등석")) {
				String charge = String.valueOf(resultList.get(0).get("firstCharge"));
				price1 = Integer.parseInt(charge);
			}
			sum = price1 * count;
		}

		// 왕복일 경우
		Map<String, String> roundTripListOne = new HashMap<String, String>();
		if (session.getAttribute("roundTripListOne") != null) {
			roundTripListOne = (Map<String, String>) session.getAttribute("roundTripListOne");
			resultList.add(roundTripListOne);
			if (currentSeatGrade.equals("이코노미")) {
				String charge = String.valueOf(resultList.get(0).get("economyCharge"));
				price1 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("비지니스")) {
				String charge = String.valueOf(resultList.get(0).get("prestigeCharge"));
				price1 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("일등석")) {
				String charge = String.valueOf(resultList.get(0).get("firstCharge"));
				price1 = Integer.parseInt(charge);
			}
			sum += price1 * count;
		}
		Map<String, String> roundTripListTwo = new HashMap<String, String>();
		if (session.getAttribute("roundTripListTwo") != null) {
			roundTripListTwo = (Map<String, String>) session.getAttribute("roundTripListTwo");
			resultList.add(roundTripListTwo);
			if (currentSeatGrade.equals("이코노미")) {
				String charge = String.valueOf(resultList.get(1).get("economyCharge"));
				price2 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("비지니스")) {
				String charge = String.valueOf(resultList.get(1).get("prestigeCharge"));
				price2 = Integer.parseInt(charge);
			} else if (currentSeatGrade.equals("일등석")) {
				String charge = String.valueOf(resultList.get(1).get("firstCharge"));
				price2 = Integer.parseInt(charge);
			}
			sum += price2 * count;
		}

		System.out.println("oneWayList :" + oneWayList);
		System.out.println("roundTripListOne :" + roundTripListOne);
		System.out.println("roundTripListTwo :" + roundTripListTwo);
		for (int i = 0; i < resultList.size(); i++) {
			System.out.println(resultList.get(i));
		}

		// 할인율 적용 성수기, 비성수기
		sum = (int) (sum * (1 - 0.05));

		// 회원 등급별 할인율 적용
		// int userGrade = userVO.getUserGrade();
		int userGrade = 1;
		int discountSum = 0;
		int discount = 0;
		if (userGrade == 1) {
			discountSum = (int) (sum * (1 - 0.05));
			discount = (int) (sum * 0.05);
		} else if (userGrade == 2) {
			discountSum = (int) (sum * (1 - 0.07));
			discount = (int) (sum * 0.07);
		} else if (userGrade == 3) {
			discountSum = (int) (sum * (1 - 0.1));
			discount = (int) (sum * 0.1);
		}
		System.out.println("count: " + count);
		System.out.println("seatGrade: " + seatGrade);
		System.out.println("currentSeatGrade: " + currentSeatGrade);
		System.out.println("price1: " + price1);
		System.out.println("price2: " + price2);
		System.out.println("sum: " + sum);
		System.out.println("discountSum: " + discountSum);
		System.out.println(resultList.get(0));

		Map<String, String> printList = new HashMap<String, String>();

		if (resultList.size() == 1) {
			printList.put("depCityNm", resultList.get(0).get("depCityNm"));
			printList.put("arrCityNm", resultList.get(0).get("arrCityNm"));
			printList.put("way", "편도 항공권");
			String str1 = resultList.get(0).get("depPlandTime");
			String temp1 = str1.substring(11, 13);
			String str2 = resultList.get(0).get("arrPlandTime");
			String temp2 = str2.substring(11, 13);
			temp2 = temp2.substring(0, 2);
			int temp3 = Integer.parseInt(temp2) - Integer.parseInt(temp1);
			String duration = "약 " + Integer.toString(temp3) + "시간 ";
			System.out.println(duration);
			printList.put("depPlandTime", resultList.get(0).get("depPlandTime"));
			printList.put("duration", duration);
			printList.put("arrPlandTime", resultList.get(0).get("arrPlandTime"));
			printList.put("airlineNm", resultList.get(0).get("airlineNm"));
			printList.put("currentSeatGrade", currentSeatGrade);
			printList.put("price1", Integer.toString(price1));
			printList.put("count", Integer.toString(count));
			printList.put("sum", Integer.toString(sum));
			printList.put("discount", Integer.toString(discount));
			printList.put("discountSum", Integer.toString(discountSum));
		} else if (resultList.size() == 2) {
			// 출발하는편
			printList.put("depCityNm", resultList.get(0).get("depCityNm"));
			printList.put("arrCityNm", resultList.get(0).get("arrCityNm"));
			printList.put("way", "왕복 항공권");
			String str1 = resultList.get(0).get("depPlandTime");
			String temp1 = str1.substring(11, 13);
			String str2 = resultList.get(0).get("arrPlandTime");
			String temp2 = str2.substring(11, 13);
			temp2 = temp2.substring(0, 2);
			int temp3 = Integer.parseInt(temp2) - Integer.parseInt(temp1);
			String duration = "약 " + Integer.toString(temp3) + "시간 ";
			printList.put("depPlandTime", resultList.get(0).get("depPlandTime"));
			printList.put("duration", duration);
			printList.put("arrPlandTime", resultList.get(0).get("arrPlandTime"));
			printList.put("airlineNm", resultList.get(0).get("airlineNm"));
			printList.put("price1", Integer.toString(price1));
			// 공통정보
			printList.put("count", Integer.toString(count));
			printList.put("currentSeatGrade", currentSeatGrade);
			printList.put("sum", Integer.toString(sum));
			printList.put("discount", Integer.toString(discount));
			printList.put("discountSum", Integer.toString(discountSum));
			// 돌아오는편
			printList.put("depCityNm2", resultList.get(1).get("depCityNm"));
			printList.put("arrCityNm2", resultList.get(1).get("arrCityNm"));
			String str12 = resultList.get(1).get("depPlandTime");
			String temp12 = str12.substring(11, 13);
			String str22 = resultList.get(1).get("arrPlandTime");
			String temp22 = str22.substring(11, 13);
			temp22 = temp22.substring(0, 2);
			int temp32 = Integer.parseInt(temp22) - Integer.parseInt(temp12);
			String duration2 = "약 " + Integer.toString(temp32) + "시간 ";
			printList.put("depPlandTime2", resultList.get(1).get("depPlandTime"));
			printList.put("duration", duration);
			printList.put("duration2", duration2);
			printList.put("arrPlandTime2", resultList.get(1).get("arrPlandTime"));
			printList.put("airlineNm2", resultList.get(1).get("airlineNm"));
			printList.put("price2", Integer.toString(price2));
		}

		System.out.println(printList);
		model.addAttribute("printList", printList);

		session.setAttribute("printList", printList);

		// 암호화 encryptKey생성.
		int privateKey = EncryptInfo.logicIdx();
		model.addAttribute("encryptKey", privateKey);
		session.setAttribute("encryptKey", privateKey);

		// 편도일 경우 resultList의 0번째 idx에 정보가 담겨있고,
		// 왕복일 경우에 0번째 idx에 출발하는편 정보, 1번째 idx에 도착하는편 정보가 담겨있다.
		// 편도일경우 사이즈 == 1 왕복일 경우 사이즈 == 2

		return "/flying/flight-booking";
	}

	@RequestMapping(value = "/flight-payment-received.do", method = RequestMethod.GET)
	public String flightPaymentReceivedView(Locale locale, Model model) {
		logger.info("항공권 예약 페이지", locale);

		return "/flying/flight-payment-received";
	}

	@RequestMapping(value = "/flight-payment-complete.do", method = RequestMethod.GET)
	public String flightPaymentCompleteView(Locale locale, Model model) {
		logger.info("항공권 결제 페이지", locale);

		return "/flying/flight-payment-complete";
	}

	// 호텔 검색 조건을 매핑해주고 list에서 맞는 값 뿌려주기 
	// 클라이언트에서 요청 -> 컨트롤러에서 받으니까 어떤 검색 요청을 받았는지 값을 받아야함.
	// requestParam에 날짜할떄 디폴트 값을 오늘 날짜 기준 잡아주면 되려나? checkin,out
	@RequestMapping("/searchHotel.do")
	public String hotelSearch(@RequestParam("hotelSearch") String hotelSearch,
			@RequestParam("checkinDt") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkinDt,
			@RequestParam("checkoutDt") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkoutDt,
			@RequestParam("HotelAdult") String adult, @RequestParam("HotelChild") String child,
			@RequestParam("roomNumber") String roomNumber, Map<String, Object> params, Model model) {
		// System.out.println(hotelSearch);

		System.out.println("메소드 시작");
		int totalPeopleCnt = Integer.parseInt(adult) + Integer.parseInt(child);

		params.put("hotelSearch", hotelSearch);
		params.put("checkinDt", checkinDt);
		params.put("checkoutDt", checkoutDt);
		params.put("totalPeopleCnt", totalPeopleCnt);
		params.put("roomNumber", roomNumber);

		List<HotelVO> hotelList01 = hotelService.searchHotel(params);

		model.addAttribute("hotelList01", hotelList01);

		System.out.println("hotelList01---->" + hotelList01);

		System.out.println("리턴 밸류");
		return "/hotel/hotel-list";

		/*
		 * List<HotelVO> hotelList = hotelService.searchHotel(hotelSearch);
		 * 
		 * ModelAndView mv = new ModelAndView();
		 * 
		 * Map<String, Object> map = new HashMap<String, Object>();
		 * 
		 * map.put("hotelList", hotelList); map.put("hotelSearch", hotelSearch);
		 * System.out.println(hotelSearch); mv.addObject("map", map);
		 * mv.setViewName("hotel/hotel-list");
		 * 
		 * 
		 * 
		 * return mv;
		 */
	}

	@RequestMapping(value = "/ajaxSearch.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String ajaxHotelSearch(@ModelAttribute HotelVO vo) throws JsonProcessingException {

		System.out.println("111111111111111111111111" + vo.getHotelSearch());
		System.out.println("222222222222222222222222" + vo.getCheckinDt());
		System.out.println("333333333333333333333333" + vo.getCheckoutDt());
		System.out.println("222222222222222222222222" + vo.getRoomNumber());
		System.out.println("444444444444444444444444" + vo.getTotalPeopleCnt());

		List<HotelVO> ajaxHotelList = hotelService.ajaxHotelSearch(vo);

		HashMap<String, Object> hashmap = new HashMap<String, Object>();

		hashmap.put("ajaxHotelList", ajaxHotelList);

		ObjectMapper mapper = new ObjectMapper();

		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);

		// model.addAttribute("ajaxHotelList", ajaxHotelList);
		return json;
	}

}
