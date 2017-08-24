package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.cProSet;
import com.koreait.cProductVO;
import com.koreait.mProSet;
import com.koreait.mProductVO;
import com.koreait.dao.CartDAO;
import com.koreait.dao.ReservationDAO;
import com.koreait.dao.ReserveService;
import com.koreait.dao.ReserveService2;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.mProductDAO;
import com.koreait.dto.MemberDTO;

public class DreserveAction implements Action {

	@Override
	// 바로구매 누르면
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		//최종결제페이지 주소
		String url = "/jsp/etc03_mypage_02cart2.jsp";
		
			//받아와야 하는 것들
			int mNo = Integer.parseInt(request.getParameter("mNo")); //아이템 넘버
			int mMoney = Integer.parseInt(request.getParameter("mMoney")); //적립금
			String mDate1 = request.getParameter("mDate1"); //예약날짜
			String mDate2 = request.getParameter("mDate2"); //예약시간
			String adult = request.getParameter("adult"); //인원수
			
			
			//선택한 아이템 저장
			mProductDAO mpDao = mProductDAO.getInstance();
			mProductVO selecteditem = mpDao.getmProList(mNo);
			
			//새로 입력 받은 내용도 저장(예약시간 등)
			mProSet mProSet = new mProSet(selecteditem, mMoney, mDate1, mDate2, adult);
			CartDAO cart = CartDAO.getInstance();
			cart.push(mProSet); //mProSet에 기존의 상품내용과 새로 입력받은 내용까지 저장 완료.
			
			//회원정보
			MemberDTO loginUser = (MemberDTO)session.getAttribute("MemberDTO");
			
			//총합계산
			ReserveService reserveService = ReserveService.getInstance();
			System.out.println("계산시작");
			Long totalAmount = reserveService.Directcal(cart.getmProList());
			System.out.println(totalAmount);
			request.setAttribute("mproList", cart.getmProList());
			request.setAttribute("loginUser",loginUser);
			request.setAttribute("totalAmount",totalAmount);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
