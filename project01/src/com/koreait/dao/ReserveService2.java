package com.koreait.dao;

import java.util.List;

import com.koreait.cProSet;
import com.koreait.mProSet;


public class ReserveService2 {
	private ReserveService2() {
	}

	private static ReserveService2 instance = new ReserveService2();

	public static ReserveService2 getInstance() {
		return instance;
	}

	public Long Directcal2(List<cProSet> cprolist) {
		long total = 0;
		for(cProSet i : cprolist){
	         total += i.getCproduct().getcPrice();
	      }
	      return total;
	}
}
