package com.koreait;

import java.sql.Date;

public class GReviewVO {
	
	private int grNo;
	private String grContext;
	private Date grDate;
	private String mUserid;
	private int grReadcount;
	private int gNo;
	
	//getter, setter
	/**
	 * @return the grNo
	 */
	public int getGrNo() {
		return grNo;
	}
	/**
	 * @param grNo the grNo to set
	 */
	public void setGrNo(int grNo) {
		this.grNo = grNo;
	}
	/**
	 * @return the grContext
	 */
	public String getGrContext() {
		return grContext;
	}
	/**
	 * @param grContext the grContext to set
	 */
	public void setGrContext(String grContext) {
		this.grContext = grContext;
	}
	/**
	 * @return the grDate
	 */
	public Date getGrDate() {
		return grDate;
	}
	/**
	 * @param grDate the grDate to set
	 */
	public void setGrDate(Date grDate) {
		this.grDate = grDate;
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
	 * @return the grReadcount
	 */
	public int getGrReadcount() {
		return grReadcount;
	}
	/**
	 * @param grReadcount the grReadcount to set
	 */
	public void setGrReadcount(int grReadcount) {
		this.grReadcount = grReadcount;
	}
	/**
	 * @return the gNo
	 */
	public int getgNo() {
		return gNo;
	}
	/**
	 * @param gNo the gNo to set
	 */
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
			
}
