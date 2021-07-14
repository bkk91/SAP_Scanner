package sap.scanner.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CombinationResult {	

	public static List<Map<String, Object>> combination(List<Map<String, String>> validFirstResultList,
			List<Map<String, String>> validSecondResultList, String seatGrade) {

		List<Map<String, String>> firstResult = new ArrayList<Map<String, String>>();
		List<Map<String, String>> secondResult = new ArrayList<Map<String, String>>();

		List<Map<Integer, Integer>> tempPrice = new ArrayList<Map<Integer, Integer>>();
		Map<Integer, Integer> priceMap = new HashMap<Integer, Integer>();
		
		int firstLength = validFirstResultList.size();
		int secondLength = validSecondResultList.size();
		
		for(int i = 0; i < firstLength; i++) {
			for(int j = 0; j < secondLength; j++) {
				
								
				
			}
		}
		
		for (int i = 0; i < validFirstResultList.size(); i++) {
			Map<String, String> temp = new HashMap<String, String>();
			temp = validFirstResultList.get(i);
			int price = 0;
			if (seatGrade.equals("1")) {
				price = Integer.parseInt(String.valueOf(temp.get("economyCharge")));
			} else if (seatGrade.equals("2")) {
				price = Integer.parseInt(String.valueOf(temp.get("prestigeCharge")));
			} else if (seatGrade.equals("3")) {
				price = Integer.parseInt(String.valueOf(temp.get("firstCharge")));
			}
			priceMap.put(i, price);
			tempPrice.add(priceMap);
		}

		List<Map<Integer, Integer>> tempPrice2 = new ArrayList<Map<Integer, Integer>>();
		Map<Integer, Integer> priceMap2 = new HashMap<Integer, Integer>();
		for (int i = 0; i < validSecondResultList.size(); i++) {
			Map<String, String> temp = new HashMap<String, String>();
			temp = validSecondResultList.get(i);
			int price = 0;
			if (seatGrade.equals("1")) {
				price = Integer.parseInt(String.valueOf(temp.get("economyCharge")));
			} else if (seatGrade.equals("2")) {
				price = Integer.parseInt(String.valueOf(temp.get("prestigeCharge")));
			} else if (seatGrade.equals("3")) {
				price = Integer.parseInt(String.valueOf(temp.get("firstCharge")));
			}
			priceMap2.put(i, price);
			tempPrice2.add(priceMap2);
		}

		// 키 = 가격순정렬 , value는 해당 list의 index번호
		// value로 정렬
		/*
		 * List<Map.Entry<Integer, Integer>> entryList = new LinkedList<>(
		 * ((HashMap<Integer, Integer>) tempPrice).entrySet());
		 * entryList.sort(Map.Entry.comparingByValue());
		 * 
		 * List<Map.Entry<Integer, Integer>> entryList2 = new LinkedList<>(
		 * ((HashMap<Integer, Integer>) tempPrice2).entrySet());
		 * entryList2.sort(Map.Entry.comparingByValue());
		 * 
		 * // result Lits에 return int[][] resultIndex = new
		 * int[tempPrice.size()][tempPrice2.size()]; for (int i = 0; i <
		 * tempPrice.size(); i++) { int idx = ((Entry<Integer, Integer>)
		 * tempPrice).getKey(); for (int j = 0; j < tempPrice2.size(); j++) { int idx2 =
		 * ((Entry<Integer, Integer>) tempPrice).getKey(); } }
		 */

		// 리턴은 firstResult 와 secondResult 의 각각 인덱스 번호만 리턴한다. ex) [[1,5], [2,3], [4,4]]

		return null;
	}
}
