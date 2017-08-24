package com.koreait;

import java.sql.Date;

public class FReviewVO {
	
	private int frNo;
	private String frContext;
	private Date frDate;
	private String mUserid;
	private int frReadcount;
	private int fNo;
	
	//getter, setter
	/**
	 * @return the frNo
	 */
	public int getFrNo() {
		return frNo;
	}
	/**
	 * @param frNo the frNo to set
	 */
	public void setFrNo(int frNo) {
		this.frNo = frNo;
	}
	/**
	 * @return the frContext
	 */
	public String getFrContext() {
		return frContext;
	}
	/**
	 * @param frContext the frContext to set
	 */
	public void setFrContext(String frContext) {
		this.frContext = frContext;
	}
	/**
	 * @return the frDate
	 */
	public Date getFrDate() {
		return frDate;
	}
	/**
	 * @param frDate the frDate to set
	 */
	public void setFrDate(Date frDate) {
		this.frDate = frDate;
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
	 * @return the frReadcount
	 */
	public int getFrReadcount() {
		return frReadcount;
	}
	/**
	 * @param frReadcount the frReadcount to set
	 */
	public void setFrReadcount(int frReadcount) {
		this.frReadcount = frReadcount;
	}
	/**
	 * @return the fNo
	 */
	public int getfNo() {
		return fNo;
	}
	/**
	 * @param fNo the fNo to set
	 */
	public void setfNo(int fNo) {
		this.fNo = fNo;
	}
	
}
