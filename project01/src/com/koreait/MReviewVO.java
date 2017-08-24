package com.koreait;

import java.sql.Date;

public class MReviewVO {
	
	private int mrNo;
	private String mrContext;
	private Date mrDate;
	private String mUserid;
	private int mrReadcount;
	private int mNo;
	
	//getter, setter
	/**
	 * @return the mrNo
	 */
	public int getMrNo() {
		return mrNo;
	}
	/**
	 * @param mrNo the mrNo to set
	 */
	public void setMrNo(int mrNo) {
		this.mrNo = mrNo;
	}
	/**
	 * @return the mrContext
	 */
	public String getMrContext() {
		return mrContext;
	}
	/**
	 * @param mrContext the mrContext to set
	 */
	public void setMrContext(String mrContext) {
		this.mrContext = mrContext;
	}
	/**
	 * @return the mrDate
	 */
	public Date getMrDate() {
		return mrDate;
	}
	/**
	 * @param mrDate the mrDate to set
	 */
	public void setMrDate(Date mrDate) {
		this.mrDate = mrDate;
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
	 * @return the mrReadcount
	 */
	public int getMrReadcount() {
		return mrReadcount;
	}
	/**
	 * @param mrReadcount the mrReadcount to set
	 */
	public void setMrReadcount(int mrReadcount) {
		this.mrReadcount = mrReadcount;
	}
	/**
	 * @return the mNo
	 */
	public int getmNo() {
		return mNo;
	}
	/**
	 * @param mNo the mNo to set
	 */
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	
	
}
