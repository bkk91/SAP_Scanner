package sap.scanner.vo;

public class PaymentVO {
	private int paymentIdx;
	private String cardName;
	private String cardNumber;
	private int expirationMonth;
	private int expirationYear;
	private int CVS;
	private String encrypt;
	private String encryptKey;
	private String rIdx;
	private String rUserNum;
	private String rName;
	private String rDate;
	private String price;
	private String rCredit;

	public String getrIdx() {
		return rIdx;
	}
	public void setrIdx(String rIdx) {
		this.rIdx = rIdx;
	}
	
	public String getrCredit() {
		return rCredit;
	}
	public void setrCredit(String rCredit) {
		this.rCredit = rCredit;
	}
	public String getrUserNum() {
		return rUserNum;
	}
	public void setrUserNum(String rUserNum) {
		this.rUserNum = rUserNum;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getEncryptKey() {
		return encryptKey;
	}
	public void setEncryptKey(String encryptKey) {
		this.encryptKey = encryptKey;
	}
	public String getEncrypt() {
		return encrypt;
	}
	public void setEncrypt(String encrypt) {
		this.encrypt = encrypt;
	}
	public int getPaymentIdx() {
		return paymentIdx;
	}
	public int setPaymentIdx(int paymentIdx) {
		return this.paymentIdx = paymentIdx;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public int getExpirationMonth() {
		return expirationMonth;
	}
	public void setExpirationMonth(int expirationMonth) {
		this.expirationMonth = expirationMonth;
	}
	public int getExpirationYear() {
		return expirationYear;
	}
	public void setExpirationYear(int expirationYear) {
		this.expirationYear = expirationYear;
	}
	public int getCVS() {
		return CVS;
	}
	public void setCVS(int cVS) {
		CVS = cVS;
	}
	
	
}
