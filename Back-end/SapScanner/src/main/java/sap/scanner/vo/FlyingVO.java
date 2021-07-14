package sap.scanner.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class FlyingVO {
	private int vihicleId;
	private String airlineNm;
	private String depAirportId;
	private String depAirportNm;
	private String depCityNm;
	private String depPlandTime;
	private String arrAirportId;
	private String arrAirportNm;
	private String arrCityNm;
	private String arrPlandTime;
	private int economyCharge;
	private int prestigeCharge;
	private int firstCharge;
	private int seatId;
	private String seatGrade;
	private String seatStatus;
	private int totCount;
	private int totCountReserv;
	private int totCountPoss;
	private int econCount;
	private int econCountReserv;
	private int econCountPoss;
	private int bussCount;
	private int bussCountReserv;
	private int bussCountPoss;
	private int firstCount;
	private int firstCountReserv;
	private int firstCountPoss;
	private int reservationId;
	private int userNum;
	private int reservationCount;
	private long reservationPrice;
	private String reservationStatus;

	public int getVihicleId() {
		return vihicleId;
	}

	public void setVihicleId(int vihicleId) {
		this.vihicleId = vihicleId;
	}

	public String getAirlineNm() {
		return airlineNm;
	}

	public void setAirlineNm(String airlineNm) {
		this.airlineNm = airlineNm;
	}

	public String getDepAirportId() {
		return depAirportId;
	}

	public void setDepAirportId(String depAirportId) {
		this.depAirportId = depAirportId;
	}

	public String getDepAirportNm() {
		return depAirportNm;
	}

	public void setDepAirportNm(String depAirportNm) {
		this.depAirportNm = depAirportNm;
	}

	public String getDepCityNm() {
		return depCityNm;
	}

	public void setDepCityNm(String depCityNm) {
		this.depCityNm = depCityNm;
	}

	public String getDepPlandTime() {
		return depPlandTime;
	}

	public void setDepPlandTime(String depPlandTime) {
		this.depPlandTime = depPlandTime;
	}

	public String getArrAirportId() {
		return arrAirportId;
	}

	public void setArrAirportId(String arrAirportId) {
		this.arrAirportId = arrAirportId;
	}

	public String getArrAirportNm() {
		return arrAirportNm;
	}

	public void setArrAirportNm(String arrAirportNm) {
		this.arrAirportNm = arrAirportNm;
	}

	public String getArrCityNm() {
		return arrCityNm;
	}

	public void setArrCityNm(String arrCityNm) {
		this.arrCityNm = arrCityNm;
	}

	public String getArrPlandTime() {
		return arrPlandTime;
	}

	public void setArrPlandTime(String arrPlandTime) {
		this.arrPlandTime = arrPlandTime;
	}

	public int getEconomyCharge() {
		return economyCharge;
	}

	public void setEconomyCharge(int economyCharge) {
		this.economyCharge = economyCharge;
	}

	public int getPrestigeCharge() {
		return prestigeCharge;
	}

	public void setPrestigeCharge(int prestigeCharge) {
		this.prestigeCharge = prestigeCharge;
	}

	public int getFirstCharge() {
		return firstCharge;
	}

	public void setFirstCharge(int firstCharge) {
		this.firstCharge = firstCharge;
	}

	public int getSeatId() {
		return seatId;
	}

	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}

	public String getSeatGrade() {
		return seatGrade;
	}

	public void setSeatGrade(String seatGrade) {
		this.seatGrade = seatGrade;
	}

	public String getSeatStatus() {
		return seatStatus;
	}

	public void setSeatStatus(String seatStatus) {
		this.seatStatus = seatStatus;
	}

	public int getTotCount() {
		return totCount;
	}

	public void setTotCount(int totCount) {
		this.totCount = totCount;
	}

	public int getTotCountReserv() {
		return totCountReserv;
	}

	public void setTotCountReserv(int totCountReserv) {
		this.totCountReserv = totCountReserv;
	}

	public int getTotCountPoss() {
		return totCountPoss;
	}

	public void setTotCountPoss(int totCountPoss) {
		this.totCountPoss = totCountPoss;
	}

	public int getEconCount() {
		return econCount;
	}

	public void setEconCount(int econCount) {
		this.econCount = econCount;
	}

	public int getEconCountReserv() {
		return econCountReserv;
	}

	public void setEconCountReserv(int econCountReserv) {
		this.econCountReserv = econCountReserv;
	}

	public int getEconCountPoss() {
		return econCountPoss;
	}

	public void setEconCountPoss(int econCountPoss) {
		this.econCountPoss = econCountPoss;
	}

	public int getBussCount() {
		return bussCount;
	}

	public void setBussCount(int bussCount) {
		this.bussCount = bussCount;
	}

	public int getBussCountReserv() {
		return bussCountReserv;
	}

	public void setBussCountReserv(int bussCountReserv) {
		this.bussCountReserv = bussCountReserv;
	}

	public int getBussCountPoss() {
		return bussCountPoss;
	}

	public void setBussCountPoss(int bussCountPoss) {
		this.bussCountPoss = bussCountPoss;
	}

	public int getFirstCount() {
		return firstCount;
	}

	public void setFirstCount(int firstCount) {
		this.firstCount = firstCount;
	}

	public int getFirstCountReserv() {
		return firstCountReserv;
	}

	public void setFirstCountReserv(int firstCountReserv) {
		this.firstCountReserv = firstCountReserv;
	}

	public int getFirstCountPoss() {
		return firstCountPoss;
	}

	public void setFirstCountPoss(int firstCountPoss) {
		this.firstCountPoss = firstCountPoss;
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public int getReservationCount() {
		return reservationCount;
	}

	public void setReservationCount(int reservationCount) {
		this.reservationCount = reservationCount;
	}

	public long getReservationPrice() {
		return reservationPrice;
	}

	public void setReservationPrice(long reservationPrice) {
		this.reservationPrice = reservationPrice;
	}

	public String getReservationStatus() {
		return reservationStatus;
	}

	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	// 수정 for Search Column
	// MAP 용 컬럼 추가 
	
	// input 출발 공항 + 도시
	private String depAirportCityNm;
	// input 도착 공항 + 도시
	private String arrAirportCityNm;
	// input 편도 출발 시간
	private Date depTime;

	// input 편도
	private String oneWay;
	// input 왕복
	private String roundTrip;

	public String getOneWay() {
		return oneWay;
	}

	public void setOneWay(String oneWay) {
		this.oneWay = oneWay;
	}

	public String getRoundTrip() {
		return roundTrip;
	}

	public void setRoundTrip(String roundTrip) {
		this.roundTrip = roundTrip;
	}

	// input 편도출발시간 테스트
	private String depTimeTest;

	public String getDepTimeTest() {
		return depTimeTest;
	}
	
	// input 편도도착시간 테스트
	private String arrTimeTest;

	public String getArrTimeTest() {
		return arrTimeTest;
	}

	public void setArrTimeTest(String arrTimeTest) {
		this.arrTimeTest = arrTimeTest;
	}

	public void setDepTimeTest(String depTimeTest) {
		this.depTimeTest = depTimeTest;
	}

	public String getDepAirportCityNm() {
		return depAirportCityNm;
	}

	public void setDepAirportCityNm(String depAirportCityNm) {
		this.depAirportCityNm = depAirportCityNm;
	}

	public String getArrAirportCityNm() {
		return arrAirportCityNm;
	}

	public void setArrAirportCityNm(String arrAirportCityNm) {
		this.arrAirportCityNm = arrAirportCityNm;
	}

	public Date getDepTime() {
		return depTime;
	}

	public void setDepTime(Date depTime) {
		this.depTime = depTime;
	}
	
	// TEST용
	public int sIndex;

	public int getsIndex() {
		return sIndex;
	}

	public void setsIndex(int sIndex) {
		this.sIndex = sIndex;
	}
	

}
