package sap.scanner.util;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.*;

public class OpenAPI_XmlParsing {
	public static void main(String[] args) throws IOException {
		
		String encodedServiceKey = "2ZcQqYLFgYL874KsymG6ArBdRsfToKYUt1v4HSQ%2FVlNsHos8zhdw9ekygVhyPW7gxQq5NXjyoIu4KKqe2vkl0w%3D%3D";
		String decodedServiceKey = "2ZcQqYLFgYL874KsymG6ArBdRsfToKYUt1v4HSQ/VlNsHos8zhdw9ekygVhyPW7gxQq5NXjyoIu4KKqe2vkl0w==";

		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.tago.go.kr/openapi/service/DmstcFlightNvgInfoService/getFlightOpratInfoList"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=" + encodedServiceKey); /* Service Key */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode("10", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder.append(
				"&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 */
		urlBuilder.append("&" + URLEncoder.encode("depAirportId", "UTF-8") + "="
				+ URLEncoder.encode("NAARKJJ", "UTF-8")); /* 출발공항ID */
		urlBuilder.append("&" + URLEncoder.encode("arrAirportId", "UTF-8") + "="
				+ URLEncoder.encode("NAARKPC", "UTF-8")); /* 도착공항ID */
		urlBuilder.append("&" + URLEncoder.encode("depPlandTime", "UTF-8") + "="
				+ URLEncoder.encode("20201201", "UTF-8")); /* 출발일 */
		urlBuilder.append(
				"&" + URLEncoder.encode("airlineId", "UTF-8") + "=" + URLEncoder.encode("AAR", "UTF-8")); /* 항공사ID */
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
	}


	public static List<Map<String, String>> connectAPInDB() {
		List<Map<String, String>> scheduleList = new ArrayList<Map<String, String>>();

		return scheduleList;
	}
}