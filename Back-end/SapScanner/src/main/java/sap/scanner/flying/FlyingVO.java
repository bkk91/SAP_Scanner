package sap.scanner.flying;

import java.util.Date;

public class FlyingVO {
	// 항공편 번호
	private int vihicleId;
	// 항공편 명
	private String airlineNm;
	// 출발 공항 ID
	private String depAirportId;
	// 출발 공항 명
	private String depAirportNm;
	// 출발 도시 명
	private String depCityNm;
	// 출발 시간
	private Date depPlandTime;
	// 도착 공항 ID
	private String arrAirportId;
	// 도착 공항 명
	private String arrAirportNm;
	// 도착 도시 명
	private String arrCityNm;
	// 도착 시간
	private Date arrPlandTime;
	// 일반석 운임
	private double economyCharge;
	// 비지니스석 운임
	private double prestigeCharge;
	// 1등석 운임
	private double firstCharge;
	// 좌석 번호 (PK)
	private int seatId;
	// 좌석 등급
	private String seatGrade;
	// 좌석 예약 상태
	private String seatStatus;
	// 이코노미 총 좌석 숫자
	private int econCount;
	// 이코노미 예약된 좌석숫자
	private int econCountReserv;
	// 이코노미 예약가능한 좌석숫자
	private int econCountPoss;
	// 비지니스 총 좌석 숫자
	private int bussCount;
	// 비지니스 예약된 좌석숫자
	private int bussCountReserv;
	// 비지니스 예약가능한 좌석숫자
	private int bussCountPoss;
	// 1등석 총 좌석 숫자
	private int firstCount;
	// 1등석 예약된 좌석숫자
	private int firstCountReserv;
	// 1등석 예약가능한 좌석숫자
	private int firstCountPoss;
	// 예약 번호 (PK)
	private int reservationId;
	// 회원 번호 (FK)
	private int userNum;
	// 예약 회원 숫자
	private int reservationCount;
	// 예약 금액
	private long reservationPrice;
	// 예약 상태
	private String reservationStatus;
	
	// Getter, Setter 생성
	
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
	public Date getDepPlandTime() {
		return depPlandTime;
	}
	public void setDepPlandTime(Date depPlandTime) {
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
	public Date getArrPlandTime() {
		return arrPlandTime;
	}
	public void setArrPlandTime(Date arrPlandTime) {
		this.arrPlandTime = arrPlandTime;
	}
	public double getEconomyCharge() {
		return economyCharge;
	}
	public void setEconomyCharge(double economyCharge) {
		this.economyCharge = economyCharge;
	}
	public double getPrestigeCharge() {
		return prestigeCharge;
	}
	public void setPrestigeCharge(double prestigeCharge) {
		this.prestigeCharge = prestigeCharge;
	}
	public double getFirstCharge() {
		return firstCharge;
	}
	public void setFirstCharge(double firstCharge) {
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
}
