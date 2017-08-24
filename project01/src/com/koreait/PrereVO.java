package com.koreait;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.koreait.dto.MemberDTO;

public class PrereVO {
	private int preNo;
	private MemberDTO memberdto;
	private Timestamp preDate;
	private String mUserid;
	private List<reservationVO> reservationList = new ArrayList<reservationVO>();
	
	//getter, setter
	
	public int getPreNo() {
		return preNo;
	}
	public void setPreNo(int preNo) {
		this.preNo = preNo;
	}
	public Timestamp getPreDate() {
		return preDate;
	}
	public void setPreDate(Timestamp preDate) {
		this.preDate = preDate;
	}
	public String getmUserid() {
		return mUserid;
	}
	public void setmUserid(String mUserid) {
		this.mUserid = mUserid;
	}
}