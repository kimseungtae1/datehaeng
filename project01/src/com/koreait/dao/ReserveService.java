package com.koreait.dao;

import java.util.List;

import com.koreait.mProSet;


public class ReserveService {
	private ReserveService() {
	}

	private static ReserveService instance = new ReserveService();

	public static ReserveService getInstance() {
		return instance;
	}

	public Long Directcal(List<mProSet> mprolist) {
		long total = 0;
		for(mProSet i : mprolist){
	         total += i.getMproduct().getmPrice();
	      }
	      return total;
	}
}
