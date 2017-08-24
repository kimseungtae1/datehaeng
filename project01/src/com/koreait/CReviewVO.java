package com.koreait;

import java.sql.Date;

public class CReviewVO {
	
	private int crNo;
	private String crContext;
	private Date crDate;
	private String mUserid;
	private int crReadcount;
	private int cNo;
	
	//getter, setter
	/**
	 * @return the crNo
	 */
	public int getCrNo() {
		return crNo;
	}
	/**
	 * @param crNo the crNo to set
	 */
	public void setCrNo(int crNo) {
		this.crNo = crNo;
	}
	/**
	 * @return the crContext
	 */
	public String getCrContext() {
		return crContext;
	}
	/**
	 * @param crContext the crContext to set
	 */
	public void setCrContext(String crContext) {
		this.crContext = crContext;
	}
	/**
	 * @return the crDate
	 */
	public Date getCrDate() {
		return crDate;
	}
	/**
	 * @param crDate the crDate to set
	 */
	public void setCrDate(Date crDate) {
		this.crDate = crDate;
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
	 * @return the crReadcount
	 */
	public int getCrReadcount() {
		return crReadcount;
	}
	/**
	 * @param crReadcount the crReadcount to set
	 */
	public void setCrReadcount(int crReadcount) {
		this.crReadcount = crReadcount;
	}
	/**
	 * @return the cNo
	 */
	public int getcNo() {
		return cNo;
	}
	/**
	 * @param cNo the cNo to set
	 */
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}	
}
