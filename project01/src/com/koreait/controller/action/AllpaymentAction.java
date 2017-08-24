package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.mProSet;
import com.koreait.mProductVO;
import com.koreait.dao.CartDAO;
import com.koreait.dao.ReserveService;
import com.koreait.dao.mProductDAO;
import com.koreait.dto.MemberDTO;

public class AllpaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//결제페이지
		String url="/jsp/etc03_mypage_02cart2.jsp";
		//장바구니
		CartDAO cart = CartDAO.getInstance();
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
