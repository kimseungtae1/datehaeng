package com.koreait;

public class mProSet {
	private mProductVO mproduct;
	private Integer mMoney;
	private String mDate1;
	private String mDate2;
	private String adult;
	
	public mProSet(mProductVO mproduct,Integer mMoney,String mDate1,String mDate2,String adult){
		this.mproduct = mproduct;
		this.mMoney = mMoney;
		this.mDate1 = mDate1;
		this.mDate2 = mDate2;
		this.adult = adult;
	}

	public mProductVO getMproduct() {
		return mproduct;
	}

	public void setMproduct(mProductVO mproduct) {
		this.mproduct = mproduct;
	}

	public Integer getmMoney() {
		return mMoney;
	}

	public void setmMoney(Integer mMoney) {
		this.mMoney = mMoney;
	}

	public String getmDate1() {
		return mDate1;
	}

	public void setmDate1(String mDate1) {
		this.mDate1 = mDate1;
	}

	public String getmDate2() {
		return mDate2;
	}

	public void setmDate2(String mDate2) {
		this.mDate2 = mDate2;
	}

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	@Override
	public String toString() {
		return "mProSet [mproduct=" + mproduct + ", mMoney=" + mMoney + ", mDate1=" + mDate1 + ", mDate2=" + mDate2
				+ ", adult=" + adult + "]";
	}
}
