package sap.scanner.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class HotelVO {
	private int hotelIdx;
	private String hotelName;
	private String hotelGrade;
	private String hotelCountry;
	private String hotelCity;
	private String hotelRate;
	private String hotelTel;
	private String hotelInfo;

	// 파일관련
	private String hotelThumNail;
	private String fileName;
	private MultipartFile uploadFile;

	// 지역+나라+호텔 검색
	private String hotelSearch;

	// 아이 수
	private int hotelChild;
	// 어른 수
	private int hotelAdult;

	// 검색시 방 갯수
	private int roomNumber;

	private int roomIdx;
	private String roomType;
	private int roomPrice;
	private int minPrice; // 호텔 최저가
	private String roomName;
	private String roomImage;
	private int peopleStandard;
	private int roomCountType;

	private int reservIdx;
	private String userName;
	private String userPhone;
	private String reservRoomType;
	private int reaervRoomCount;
	private String roomStatus;
	private int paymentPrice;
	private String checkinDt;
	private String checkoutDt;
	private int reservPeople;

	private int startPrice;
	private int endPrice;
	private int orderType;
	private int grade;

	// ȣ�� ���� ���̺�
	private int paymentIdx;
	private String cardNumber;
	private String cardName;

	public int getHotelIdx() {
		return hotelIdx;
	}

	public void setHotelIdx(int hotelIdx) {
		this.hotelIdx = hotelIdx;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelGrade() {
		return hotelGrade;
	}

	public void setHotelGrade(String hotelGrade) {
		this.hotelGrade = hotelGrade;
	}

	public String getHotelCountry() {
		return hotelCountry;
	}

	public void setHotelCountry(String hotelCountry) {
		this.hotelCountry = hotelCountry;
	}

	public String getHotelCity() {
		return hotelCity;
	}

	public void setHotelCity(String hotelCity) {
		this.hotelCity = hotelCity;
	}

	public String getHotelRate() {
		return hotelRate;
	}

	public void setHotelRate(String hotelRate) {
		this.hotelRate = hotelRate;
	}

	public String getHotelTel() {
		return hotelTel;
	}

	public void setHotelTel(String hotelTel) {
		this.hotelTel = hotelTel;
	}

	public String getHotelInfo() {
		return hotelInfo;
	}

	public void setHotelInfo(String hotelInfo) {
		this.hotelInfo = hotelInfo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getHotelSearch() {
		return hotelSearch;
	}

	public void setHotelSearch(String hotelSearch) {
		this.hotelSearch = hotelSearch;
	}

	public int getHotelChild() {
		return hotelChild;
	}

	public void setHotelChild(int hotelChild) {
		this.hotelChild = hotelChild;
	}

	public int getHotelAdult() {
		return hotelAdult;
	}

	public void setHotelAdult(int hotelAdult) {
		this.hotelAdult = hotelAdult;
	}

	public int getRoomIdx() {
		return roomIdx;
	}

	public void setRoomIdx(int roomIdx) {
		this.roomIdx = roomIdx;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getRoomImage() {
		return roomImage;
	}

	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}

	public int getReservIdx() {
		return reservIdx;
	}

	public void setReservIdx(int reservIdx) {
		this.reservIdx = reservIdx;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getReservRoomType() {
		return reservRoomType;
	}

	public void setReservRoomType(String reservRoomType) {
		this.reservRoomType = reservRoomType;
	}

	public int getReaervRoomCount() {
		return reaervRoomCount;
	}

	public void setReaervRoomCount(int reaervRoomCount) {
		this.reaervRoomCount = reaervRoomCount;
	}

	public String getRoomStatus() {
		return roomStatus;
	}

	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}

	public int getPaymentPrice() {
		return paymentPrice;
	}

	public void setPaymentPrice(int paymentPrice) {
		this.paymentPrice = paymentPrice;
	}

	public String getCheckinDt() {
		return checkinDt;
	}

	public void setCheckinDt(String checkinDt) {
		this.checkinDt = checkinDt;
	}

	public String getCheckoutDt() {
		return checkoutDt;
	}

	public void setCheckoutDt(String checkoutDt) {
		this.checkoutDt = checkoutDt;
	}

	public int getReservPeople() {
		return reservPeople;
	}

	public void setReservPeople(int reservPeople) {
		this.reservPeople = reservPeople;
	}

	public int getPaymentIdx() {
		return paymentIdx;
	}

	public void setPaymentIdx(int paymentIdx) {
		this.paymentIdx = paymentIdx;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getHotelThumNail() {
		return hotelThumNail;
	}

	public void setHotelThumNail(String hotelThumNail) {
		this.hotelThumNail = hotelThumNail;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {

	}

	public int getTotalPeopleCnt() {
		return hotelChild + hotelAdult;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(int startPrice) {
		this.startPrice = startPrice;
	}

	public int getEndPrice() {
		return endPrice;
	}

	public void setEndPrice(int endPrice) {
		this.endPrice = endPrice;
	}

	public int getOrderType() {
		return orderType;
	}

	public void setOrderType(int orderType) {
		this.orderType = orderType;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getPeopleStandard() {
		return peopleStandard;
	}

	public void setPeopleStandard(int peopleStandard) {
		this.peopleStandard = peopleStandard;
	}

	public int getRoomCountType() {
		return roomCountType;
	}

	public void setRoomCountType(int roomCountType) {
		this.roomCountType = roomCountType;
	}

}
