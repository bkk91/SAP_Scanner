package sap.scanner.util;

import java.util.*;

public class EncryptInfo {

	// 암호화 encryptKey 생성 로직
	
	public static int logicIdx() {
		double d = System.currentTimeMillis();
		String s = Double.toString(d);
		int seed = Integer.parseInt(s.substring(11, 12));

		double max = 1000;
		int count = 1;
		while (seed <= max) {
			double num = Math.random();
			int intValue = (int) Math.ceil(num * Math.pow(10, count));
			if (intValue != 10) {
				seed += intValue;
			}
			count++;
		}
		if(seed > 10000) {
			logicIdx();
		}
		return seed;
	}

	// 암호화 로직 (javascript) TEST
	/*
	 * function encodingElse(cardNumber, year, month, cvs, key){ const cardArr =
	 * cardNumber.toString().split("-"); const keyArr = key.toString().split("");
	 * let resultSet = ["0", "0", "0", "0"]; var result = ""; for(var i in cardArr){
	 * const eachNumber = cardArr[i].toString().split(""); for(var j in eachNumber){
	 * resultSet[i] += eachNumber[j] + keyArr[j]; } result = resultSet[0]; result +=
	 * year + resultSet[1]; result += month + resultSet[2]; result += cvs +
	 * resultSet[3]; } console.log(result); console.log(resultSet); return result; }
	 * 
	 * console.log(encodingElse("1234-5678-4321-1234", "99", "99", "888","0000"));
	 */

	// 복호화 로직
	public static Map<String, String> decoding(String encoded, String cardName, String privateKey) {
		Map<String, String> decodedSet = new HashMap<String, String>();

		String[] eachKey = new String[privateKey.length()];
		for (int i = 0; i < privateKey.length(); i++) {
			eachKey = privateKey.split("");
		}
		List<String> numbers = new ArrayList<>();
		numbers.add(encoded.substring(1, 9));
		numbers.add(encoded.substring(12, 20));
		numbers.add(encoded.substring(23, 31));
		numbers.add(encoded.substring(35, 43));

		String cardNumber = "";
		for (int i = 0; i < numbers.size(); i++) {
			ArrayList<String> arr = new ArrayList<>();
			for (int j = 0; j < numbers.get(i).length(); j++) {
				arr.add(numbers.get(i).substring(j, j + 1));
			}
			for (int k = eachKey.length - 1; k >= 0; k--) {
				if (eachKey[k].equals(arr.get(k * 2 + 1))) {
					arr.remove(k * 2 + 1);
				}
			}
			String temp = "";
			for (int l = 0; l < arr.size(); l++) {
				temp += arr.get(l);
			}
			cardNumber += (temp + "-");
		}
		cardNumber = cardNumber.substring(0, 19);
		String year = encoded.substring(9, 11);
		String month = encoded.substring(20, 22);
		String cvs = encoded.substring(31, 34);

		decodedSet.put("cardName", cardName);
		decodedSet.put("cardNumber", cardNumber);
		decodedSet.put("Year", year);
		decodedSet.put("Month", month);
		decodedSet.put("cvs", cvs);

		return decodedSet;
	}

	public static String getIdx() {
		Random r = new Random();
		int n = logicIdx();
		String temp = Integer.toString(n).substring(0,2);		
		int numchars = Integer.parseInt(temp);
		StringBuffer sb = new StringBuffer();
		while (sb.length() < numchars) {
			sb.append(Integer.toHexString(r.nextInt()));
		}
		return sb.toString().substring(0, numchars);

	}

	public static void main(String[] args) {
		// System.out.println(logicIdx());

		String encoded = "0132338428801323384255013233842777013233842";
		String privateKey = "3382";
		String[] eachKey = new String[privateKey.length()];
		for (int i = 0; i < privateKey.length(); i++) {
			eachKey = privateKey.split("");
		}
		List<String> numbers = new ArrayList<>();
		numbers.add(encoded.substring(1, 9));
		numbers.add(encoded.substring(12, 20));
		numbers.add(encoded.substring(23, 31));
		numbers.add(encoded.substring(35, 43));
		String result1 = encoded.substring(1, 9);
		String result2 = encoded.substring(12, 20);
		String result3 = encoded.substring(23, 31);
		String result4 = encoded.substring(35, 43);

		String cardNumber = "";
		for (int i = 0; i < numbers.size(); i++) {
			ArrayList<String> arr = new ArrayList<>();
			for (int j = 0; j < numbers.get(i).length(); j++) {
				arr.add(numbers.get(i).substring(j, j + 1));
			}
			for (int k = eachKey.length - 1; k >= 0; k--) {
				if (eachKey[k].equals(arr.get(k * 2 + 1))) {
					arr.remove(k * 2 + 1);
				}
			}
			String temp = "";
			for (int l = 0; l < arr.size(); l++) {
				temp += arr.get(l);
			}
			cardNumber += (temp + "-");
		}
		cardNumber = cardNumber.substring(0, 19);
		String year = encoded.substring(9, 11);
		String month = encoded.substring(20, 22);
		String cvs = encoded.substring(31, 34);
		System.out.println(cardNumber);
		System.out.println(year);
		System.out.println(month);
		System.out.println(cvs);
		System.out.println(getIdx());
	}

}
