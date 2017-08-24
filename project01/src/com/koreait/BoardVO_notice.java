package com.koreait;

import java.sql.Timestamp;

public class BoardVO_notice {
	private int nNo;
	private String nTitle;
	private String nContext;
	private Timestamp nDate;
	private int nReadcount;
	private int nReplynum;
	private String mUserid;
	/**
	 * @return the nNo
	 */
	public int getnNo() {
		return nNo;
	}
	/**
	 * @param nNo the nNo to set
	 */
	public void setnNo(int nNo) {
		this.nNo = nNo;
	}
	/**
	 * @return the nTitle
	 */
	public String getnTitle() {
		return nTitle;
	}
	/**
	 * @param nTitle the nTitle to set
	 */
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	/**
	 * @return the nContext
	 */
	public String getnContext() {
		return nContext;
	}
	/**
	 * @param nContext the nContext to set
	 */
	public void setnContext(String nContext) {
		this.nContext = nContext;
	}
	/**
	 * @return the nDate
	 */
	public Timestamp getnDate() {
		return nDate;
	}
	/**
	 * @param nDate the nDate to set
	 */
	public void setnDate(Timestamp nDate) {
		this.nDate = nDate;
	}
	/**
	 * @return the nReadcount
	 */
	public int getnReadcount() {
		return nReadcount;
	}
	/**
	 * @param nReadcount the nReadcount to set
	 */
	public void setnReadcount(int nReadcount) {
		this.nReadcount = nReadcount;
	}
	/**
	 * @return the nReplynum
	 */
	public int getnReplynum() {
		return nReplynum;
	}
	/**
	 * @param nReplynum the nReplynum to set
	 */
	public void setnReplynum(int nReplynum) {
		this.nReplynum = nReplynum;
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
	

	
	

	
	
	

	
	
	
}
