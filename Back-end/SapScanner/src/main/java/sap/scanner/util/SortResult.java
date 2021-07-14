package sap.scanner.util;

import java.util.*;

public class SortResult {

	// 가격순 정렬
	public static List<Map<String, String>> sortByPrice(List<Map<String, String>> resultList, String seatGrade,
			int count) {
		int length = resultList.size();
		Map<String, String> check = new HashMap<String, String>();
		List<Map<String, String>> sortList = new ArrayList<Map<String, String>>();
		
		Map<Integer, Integer> priceList = new HashMap<Integer, Integer>();
		int price = 0;
		for (int i = 0; i < length; i++) {
			check = resultList.get(i);
			String checkGrade = check.get("seatGrade");
			if (checkGrade.equals("1")) {
				price = Integer.parseInt(String.valueOf(check.get("economyCharge")));
			} else if (checkGrade.equals("2")) {
				price = Integer.parseInt(String.valueOf(check.get("prestigeCharge")));
			} else if (checkGrade.equals("3")) {
				price = Integer.parseInt(String.valueOf(check.get("firstCharge")));
			}
			priceList.put(i, price);
		}

		// 키 = 가격순정렬 , value는 해당 list의 index번호
		// value로 정렬
		List<Map.Entry<Integer, Integer>> entryList = new LinkedList<>(priceList.entrySet());
		entryList.sort(Map.Entry.comparingByValue());
		for (Map.Entry<Integer, Integer> entry : entryList) {
			int idx = entry.getKey();
			sortList.add(resultList.get(idx));
		}

		// 가격순 정렬된 값을 sortList로 리턴
		return sortList;
	}

	// 출발 시간순 정렬
	public static List<Map<String, String>> sortByDepTime(List<Map<String, String>> resultList) {
		int length = resultList.size();
		Map<String, String> check = new HashMap<String, String>();
		List<Map<String, String>> sortList = new ArrayList<Map<String, String>>();

		Map<Integer, Integer> dateList = new HashMap<Integer, Integer>();

		for (int i = 0; i < length; i++) {
			check = resultList.get(i);
			String checkDate = check.get("depPlandTime");
			String month = checkDate.substring(5, 7);
			String day = checkDate.substring(8, 10);
			String hour = checkDate.substring(11, 13);
			String minute = checkDate.substring(14, 16);
			checkDate = month + day + hour + minute;
			int date = Integer.parseInt(checkDate);
			dateList.put(i, date);
		}

		// 키 = 가격순정렬 , value는 해당 list의 index번호
		// value로 정렬

		List<Map.Entry<Integer, Integer>> entryList = new LinkedList<>(dateList.entrySet());
		entryList.sort(Map.Entry.comparingByValue());

		// 정렬된 value int -> String 값으로 변환
		// 202106191230 -> 2021-06-19 12:30
		// (0,4) = year, (4,6) = month, (6,8) = day, (8,10) = hour, (10,12) = minute

		/*
		 * String finalDate = null;
		 * 
		 * for (int i = 0; i < sortList.size(); i++) { String temp =
		 * Integer.toString(dateList.get(i)); String year = temp.substring(0, 4); String
		 * month = temp.substring(4, 6); String day = temp.substring(6, 8); String hour
		 * = temp.substring(8, 10); String minute = temp.substring(10, 12); finalDate =
		 * year + "-" + month + "-" + day + " " + hour + ":" + minute; }
		 */

		for (Map.Entry<Integer, Integer> entry : entryList) {
			int idx = entry.getKey();
			sortList.add(resultList.get(idx));
		}

		return sortList;
	}

	// 도착 시간순 정렬
	public static List<Map<String, String>> sortByArrTime(List<Map<String, String>> resultList) {
		int length = resultList.size();
		Map<String, String> check = new HashMap<String, String>();
		List<Map<String, String>> sortList = new ArrayList<Map<String, String>>();

		Map<Integer, Integer> dateList = new HashMap<Integer, Integer>();

		for (int i = 0; i < length; i++) {
			check = resultList.get(i);
			String checkDate = check.get("arrPlandTime");
			String month = checkDate.substring(5, 7);
			String day = checkDate.substring(8, 10);
			String hour = checkDate.substring(11, 13);
			String minute = checkDate.substring(14, 16);
			checkDate = month + day + hour + minute;
			int date = Integer.parseInt(checkDate);
			dateList.put(i, date);
		}

		// 키 = 가격순정렬 , value는 해당 list의 index번호
		// value로 정렬

		List<Map.Entry<Integer, Integer>> entryList = new LinkedList<>(dateList.entrySet());
		entryList.sort(Map.Entry.comparingByValue());

		for (Map.Entry<Integer, Integer> entry : entryList) {
			int idx = entry.getKey();
			sortList.add(resultList.get(idx));
		}

		return sortList;
	}
}
