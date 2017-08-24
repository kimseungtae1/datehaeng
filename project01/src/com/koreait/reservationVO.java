package com.koreait;

import java.sql.Timestamp;

public class reservationVO {
	private int rNo;
	private String mUserid;
	private int mcNo;
	private Timestamp rDate;
	private String rName;
	private String rPhone;
	private String rEmail;
	private String adult;
	private String rDate1;
	private String rDate2;
	private String mcTitle;
	private int mcPrice;
	private String mcPicture;
	private int mcbuy;
	
	//getter, setter
	/**
	 * @return the rNo
	 */
	public int getrNo() {
		return rNo;
	}
	/**
	 * @param rNo the rNo to set
	 */
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	/**
	 * @return the mUserid
	 */
	public String getmUserid() {
		return mUserid;
	}
	/**
	 * @param mUserid the mUserid to set
	 */
	public void setmUserid(String mUserid) {
		this.mUserid = mUserid;
	}
	/**
	 * @return the mcNo
	 */
	public int getMcNo() {
		return mcNo;
	}
	/**
	 * @param mcNo the mcNo to set
	 */
	public void setMcNo(int mcNo) {
		this.mcNo = mcNo;
	}
	/**
	 * @return the rDate
	 */
	public Timestamp getrDate() {
		return rDate;
	}
	/**
	 * @param rDate the rDate to set
	 */
	public void setrDate(Timestamp rDate) {
		this.rDate = rDate;
	}
	/**
	 * @return the rName
	 */
	public String getrName() {
		return rName;
	}
	/**
	 * @param rName the rName to set
	 */
	public void setrName(String rName) {
		this.rName = rName;
	}
	/**
	 * @return the rPhone
	 */
	public String getrPhone() {
		return rPhone;
	}
	/**
	 * @param rPhone the rPhone to set
	 */
	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}
	/**
	 * @return the rEmail
	 */
	public String getrEmail() {
		return rEmail;
	}
	/**
	 * @param rEmail the rEmail to set
	 */
	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}
	/**
	 * @return the adult
	 */
	public String getAdult() {
		return adult;
	}
	/**
	 * @param adult the adult to set
	 */
	public void setAdult(String adult) {
		this.adult = adult;
	}
	/**
	 * @return the rDate1
	 */
	public String getrDate1() {
		return rDate1;
	}
	/**
	 * @param rDate1 the rDate1 to set
	 */
	public void setrDate1(String rDate1) {
		this.rDate1 = rDate1;
	}
	/**
	 * @return the rDate2
	 */
	public String getrDate2() {
		return rDate2;
	}
	/**
	 * @param rDate2 the rDate2 to set
	 */
	public void setrDate2(String rDate2) {
		this.rDate2 = rDate2;
	}
	/**
	 * @return the mcTitle
	 */
	public String getMcTitle() {
		return mcTitle;
	}
	/**
	 * @param mcTitle the mcTitle to set
	 */
	public void setMcTitle(String mcTitle) {
		this.mcTitle = mcTitle;
	}
	/**
	 * @return the mcPrice
	 */
	public int getMcPrice() {
		return mcPrice;
	}
	/**
	 * @param mcPrice the mcPrice to set
	 */
	public void setMcPrice(int mcPrice) {
		this.mcPrice = mcPrice;
	}
	/**
	 * @return the mcPicture
	 */
	public String getMcPicture() {
		return mcPicture;
	}
	/**
	 * @param mcPicture the mcPicture to set
	 */
	public void setMcPicture(String mcPicture) {
		this.mcPicture = mcPicture;
	}
	/**
	 * @return the mcbuy
	 */
	public int getMcbuy() {
		return mcbuy;
	}
	/**
	 * @param mcbuy the mcbuy to set
	 */
	public void setMcbuy(int mcbuy) {
		this.mcbuy = mcbuy;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "reservationVO [rNo=" + rNo + ", mUserid=" + mUserid + ", mcNo=" + mcNo + ", rDate=" + rDate + ", rName="
				+ rName + ", rPhone=" + rPhone + ", rEmail=" + rEmail + ", adult=" + adult + ", rDate1=" + rDate1
				+ ", rDate2=" + rDate2 + ", mcTitle=" + mcTitle + ", mcPrice=" + mcPrice + ", mcPicture=" + mcPicture
				+ ", mcbuy=" + mcbuy + "]";
	}
	
	 
}
