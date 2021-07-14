package sap.scanner.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import sap.scanner.vo.FlyingService;
import sap.scanner.vo.FlyingVO;
import sap.scanner.vo.impl.FlyingDAO;

public class OpenAPI_JsonParsing {
	// 파싱한 항공정보를 List<Map<String, String>>에 담아줄 resultList 변수명
	static List<Map<String, String>> scheduleList = new ArrayList<Map<String, String>>();

	public static void main(String[] args) throws IOException {
		// 인증키
		String key = "2ZcQqYLFgYL874KsymG6ArBdRsfToKYUt1v4HSQ%2FVlNsHos8zhdw9ekygVhyPW7gxQq5NXjyoIu4KKqe2vkl0w%3D%3D";

		// 파싱한 데이터를 저장할 변수
		String result = "";

		try {
			URL url = new URL("https://api.odcloud.kr/api/15043890/v1/uddi:30906c2a-1b4f-4c7d-b124-9be09706a93c"
					+ "?page=" + "1" + "&perPage=10&" + "serviceKey=" + key);

			BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

			result = bf.readLine();

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(result);

			List<Map<String, String>> jsonList = (List<Map<String, String>>) jsonObject.get("data");
			List<String> depdateList = new ArrayList<String>();
			List<String> arrdateList = new ArrayList<String>();

			// Primary key 용 idx
			int idx = 0;
			for (int i = 0; i < jsonList.size(); i++) {
				System.out.println("---------------");
				System.out.println(jsonList.get(i));
				System.out.println("---------------");
				System.out.println("출발공항 : " + jsonList.get(i).get("공항"));
				System.out.println("출발일자 : " + jsonList.get(i).get("시작일자"));
				System.out.println("출발시간 : " + jsonList.get(i).get("출발시간"));
				System.out.println("도착공항 : " + jsonList.get(i).get("상대공항"));
				System.out.println("도착일자 : " + jsonList.get(i).get("종료일자"));
				System.out.println("도착시간 : " + jsonList.get(i).get("도착시간"));
				System.out.println("항공사 : " + jsonList.get(i).get("항공사"));
				System.out.println(jsonList.get(i).get("시작일자") + " " + jsonList.get(i).get("출발시간"));

				String startDate = jsonList.get(i).get("시작일자");
				String startTime = jsonList.get(i).get("출발시간");
				String endDate = jsonList.get(i).get("종료일자");
				String endTime = jsonList.get(i).get("도착시간");

				depdateList = depdateFunc(startDate, endDate, startTime);
				arrdateList = depdateFunc(startDate, endDate, endTime);

				for (int j = 0; j < depdateList.size(); j++) {
					Map<String, String> single = new HashMap<String, String>();
					single.put("VIHICLE_ID", Integer.toString(idx));
					single.put("AIRLINE_NM", jsonList.get(i).get("항공사"));
					single.put("DEP_AIRPORT_ID", findAirportId(jsonList.get(i).get("공항")));
					single.put("DEP_AIRPORT_NM", findAirportNm(jsonList.get(i).get("공항")));
					single.put("DEP_CITY_NM", jsonList.get(i).get("공항"));
					single.put("DEP_PLAND_TIME", depdateList.get(j));
					single.put("ARR_AIRPORT_ID", findAirportId(jsonList.get(i).get("상대공항")));
					single.put("ARR_AIRPORT_NM", findAirportNm(jsonList.get(i).get("상대공항")));
					single.put("ARR_CITY_NM", jsonList.get(i).get("상대공항"));
					single.put("ARR_PLAND_TIME", arrdateList.get(j));
					single.put("ECONOMY_CHARGE", "50000");
					single.put("PRESTIGE_CHARGE", "100000");
					single.put("FIRST_CHARGE", "150000");
					scheduleList.add(i, single);
					idx++;
				}
			}

			System.out.println(scheduleList);

			int length = scheduleList.size();

			for (int k = 0; k < length; k++) {
				Map<String, String> schedule = new HashMap<String, String>();
				schedule = scheduleList.get(k);
			}

			System.out.println("테스트");
			System.out.println(scheduleList);
			for (int i = 0; i < scheduleList.size(); i++) {
				System.out.println(scheduleList.get(i));
			}
			// API DB에 추가
			scheduleAPI(scheduleList);
			// API 추가
			//seatMatch();
			System.out.println("성공");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<String> depdateFunc(String startDate, String endDate, String startTime) {
		String startDateTime = startDate; // 1월 1일 00:00:00 ~ 3월 29 00:00:00
		String endDateTime = endDate;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<String> dateList = new ArrayList<String>();
		try {
			Date startDateFormat = sdf.parse(startDateTime);
			Date endDateFormat = sdf.parse(endDateTime);
			long diffSec = (endDateFormat.getTime() - startDateFormat.getTime()) / 1000;
			int diffDays = Math.round(diffSec / (24 * 60 * 60));
			for (int i = 0; i < diffDays; i++) {
				Calendar cal = Calendar.getInstance();
				cal.setTime(startDateFormat);
				cal.add(Calendar.YEAR, 5);
				cal.add(Calendar.DATE, i);
				dateList.add(sdf.format(cal.getTime()) + " " + startTime);
			}
			// System.out.println(dateList);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dateList;
	}

	public static List<String> arrdateFunc(String startDate, String endDate, String endTime) {
		String startDateTime = startDate; // 1월 1일 00:00:00 ~ 3월 29 00:00:00
		String endDateTime = endDate;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<String> dateList = new ArrayList<String>();
		try {
			Date startDateFormat = sdf.parse(startDateTime);
			Date endDateFormat = sdf.parse(endDateTime);
			long diffSec = (endDateFormat.getTime() - startDateFormat.getTime()) / 1000;
			int diffDays = Math.round(diffSec / (24 * 60 * 60));
			for (int i = 0; i < diffDays; i++) {
				Calendar cal = Calendar.getInstance();
				cal.setTime(startDateFormat);
				cal.add(Calendar.YEAR, 5);
				cal.add(Calendar.DATE, i);
				dateList.add(sdf.format(cal.getTime()) + " " + endTime);
			}
			// System.out.println(dateList);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dateList;
	}

	public static int length(String startDate, String endDate) {
		String startDateTime = startDate; // 1월 1일 00:00:00 ~ 3월 29 00:00:00
		String endDateTime = endDate;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<String> dateList = new ArrayList<String>();
		int diffDays = 0;
		try {
			Date startDateFormat = sdf.parse(startDateTime);
			Date endDateFormat = sdf.parse(endDateTime);
			long diffSec = (endDateFormat.getTime() - startDateFormat.getTime()) / 1000;
			diffDays = Math.round(diffSec / (24 * 60 * 60));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return diffDays;
	}

	public static String findAirportNm(String AirportNm) {
		if (AirportNm.equals("USN")) {
			return "ULSAN";
		} else if (AirportNm.equals("CJU")) {
			return "CHEONGJU";
		} else if (AirportNm.equals("RSU")) {
			return "YEOSU";
		} else if (AirportNm.equals("ICN")) {
			return "INCHEON";
		} else if (AirportNm.equals("TAE")) {
			return "TAEAN";
		} else if (AirportNm.equals("GMP")) {
			return "GIMPO";
		} else if (AirportNm.equals("HIN")) {
			return "CHINJU";
		} else if (AirportNm.equals("KUV")) {
			return "KUNSAN";
		} else if (AirportNm.equals("PUS")) {
			return "PUSAN";
		} else if (AirportNm.equals("CJU")) {
			return "JEJU";
		} else if (AirportNm.equals("KWJ")) {
			return "KWANGJU";
		} else {
			return null;
		}
	}

	public static String findAirportId(String AirportNm) {
		if (AirportNm.equals("USN")) {
			return "006";
		} else if (AirportNm.equals("CJU")) {
			return "007";
		} else if (AirportNm.equals("RSU")) {
			return "008";
		} else if (AirportNm.equals("ICN")) {
			return "001";
		} else if (AirportNm.equals("TAE")) {
			return "009";
		} else if (AirportNm.equals("GMP")) {
			return "010";
		} else if (AirportNm.equals("HIN")) {
			return "011";
		} else if (AirportNm.equals("KUV")) {
			return "005";
		} else if (AirportNm.equals("PUS")) {
			return "002";
		} else if (AirportNm.equals("CJU")) {
			return "003";
		} else if (AirportNm.equals("KWJ")) {
			return "004";
		} else {
			return "000";
		}
	}

	public static void test() {
		System.out.println("----------------");
		System.out.println(scheduleList);
		System.out.println("----------------");
	}

	// 데이터 JDBC입력

	public static void scheduleAPI(List<Map<String, String>> scheduleList) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.61:1521:xe";
		String uid = "SAP";
		String upw = "1234";

		try {
			Class.forName(driver);

			connection = DriverManager.getConnection(url, uid, upw);
			statement = connection.createStatement();
			for (int i = 0; i < scheduleList.size(); i++) {
				Map<String, String> schedule = scheduleList.get(i);
				System.out.println("항공권");

				String input = "INSERT INTO FLIGHT_SCHEDULE\r\n"
						+ "(VIHICLE_ID, AIRLINE_NM, DEP_AIRPORT_ID, DEP_AIRPORT_NM, DEP_CITY_NM, DEP_PLAND_TIME, \r\n"
						+ "ARR_AIRPORT_ID, ARR_AIRPORT_NM,ARR_CITY_NM, ARR_PLAND_TIME, \r\n"
						+ "ECONOMY_CHARGE, PRESTIGE_CHARGE, FIRST_CHARGE)"
						+ "VALUES((select nvl(max(VIHICLE_ID), 0) + 1 FROM FLIGHT_SCHEDULE)," + "'"
						+ schedule.get("AIRLINE_NM") + "'," + "'" + schedule.get("DEP_AIRPORT_ID") + "'," + "'"
						+ schedule.get("DEP_AIRPORT_NM") + "'," + "'" + schedule.get("DEP_CITY_NM") + "'," + "TO_DATE("
						+ "'" + schedule.get("DEP_PLAND_TIME") + "'" + ", 'YYYY-MM-DD HH24:MI')," + "'"
						+ schedule.get("ARR_AIRPORT_ID") + "'," + "'" + schedule.get("ARR_AIRPORT_NM") + "'," + "'"
						+ schedule.get("ARR_CITY_NM") + "'," + "TO_DATE(" + "'" + schedule.get("ARR_PLAND_TIME") + "'"
						+ ", 'YYYY-MM-DD HH24:MI')," + "'" + schedule.get("ECONOMY_CHARGE") + "'," + "'"
						+ schedule.get("PRESTIGE_CHARGE") + "'," + "'" + schedule.get("FIRST_CHARGE") + "'" + ")";

				statement.executeQuery(input);
				System.out.println("좌석");
				for (int j = 1; j <= 3; j++) {
					String seat = "INSERT INTO FLIGHT_SEAT(seat_id, vihicle_id, seat_grade, seat_status, tot_count, tot_count_reserv, tot_count_poss, econ_count, econ_count_reserv, econ_count_poss, buss_count, buss_count_reserv, buss_count_poss, first_count, first_count_reserv, first_count_poss)"
							+ "VALUES(" + "'" + schedule.get("VIHICLE_ID") + "'," + "'" + schedule.get("VIHICLE_ID") + "'," + "'" + j + "',"
							+ "'READY', '100', '0', '100', '70','0','70','20','0','20','10','0','10')";

					statement.executeQuery(seat);
				}
			}
			System.out.println("API 데이터 입력 성공!");

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (resultSet != null)
				try {
					resultSet.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}

			if (statement != null)
				try {
					statement.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}

			if (connection != null)
				try {
					connection.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
		}
	}

	// 데이터 JDBC입력

	public static void seatMatch() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.61:1521:xe";
		String uid = "SAP";
		String upw = "1234";

		try {
			Class.forName(driver);

			connection = DriverManager.getConnection(url, uid, upw);
			statement = connection.createStatement();
			for (int i = 0; i < scheduleList.size(); i++) {

				for (int k = 21; k <= 100; k++) {
					for (int j = 1; j <= 3; j++) {
						String seat = "INSERT INTO FLIGHT_SEAT(seat_id, vihicle_id, seat_grade, seat_status, tot_count, tot_count_reserv, tot_count_poss, econ_count, econ_count_reserv, econ_count_poss, buss_count, buss_count_reserv, buss_count_poss, first_count, first_count_reserv, first_count_poss)"
								+ "VALUES(" + "'" + k + "'," + "'" + k + "'," + "'" + j + "',"
								+ "'READY', '100', '0', '100', '70','0','70','20','0','20','10','0','10')";

						statement.executeQuery(seat);
					}
				}
			}

			System.out.println("API 데이터 입력 성공!");

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (resultSet != null)
				try {
					resultSet.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}

			if (statement != null)
				try {
					statement.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}

			if (connection != null)
				try {
					connection.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
		}
	}
}