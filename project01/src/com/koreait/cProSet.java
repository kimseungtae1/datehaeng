package com.koreait;

public class cProSet {
	private cProductVO cproduct;
	private Integer cMoney;
	private String cDate1;
	private String cDate2;
	private String adult;
	
	public cProSet(cProductVO cproduct,Integer cMoney,String cDate1,String cDate2,String adult){
		this.cproduct = cproduct;
		this.cMoney = cMoney;
		this.cDate1 = cDate1;
		this.cDate2 = cDate2;
		this.adult = adult;
	}

	public cProductVO getCproduct() {
		return cproduct;
	}

	public void setCproduct(cProductVO cproduct) {
		this.cproduct = cproduct;
	}

	public Integer getcMoney() {
		return cMoney;
	}

	public void setcMoney(Integer cMoney) {
		this.cMoney = cMoney;
	}

	public String getcDate1() {
		return cDate1;
	}

	public void setcDate1(String cDate1) {
		this.cDate1 = cDate1;
	}

	public String getcDate2() {
		return cDate2;
	}

	public void setcDate2(String cDate2) {
		this.cDate2 = cDate2;
	}

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	@Override
	public String toString() {
		return "cProSet [cproduct=" + cproduct + ", cMoney=" + cMoney + ", cDate1=" + cDate1 + ", cDate2=" + cDate2
				+ ", adult=" + adult + "]";
	}
}
