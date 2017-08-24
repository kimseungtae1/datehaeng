package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

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



public class CartListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		//장바구니 페이지
		String url="/jsp/etc03_mypage_02cart.jsp";
		
		CartDAO cart = CartDAO.getInstance();
		//회원정보
		MemberDTO loginUser = (MemberDTO)session.getAttribute("MemberDTO");
		
		
		//총합계산
		ReserveService reserveService = ReserveService.getInstance();
		Long totalAmount = reserveService.Directcal(cart.getmProList());
		request.setAttribute("mproList", cart.getmProList());
		request.setAttribute("loginUser",loginUser);
		request.setAttribute("totalAmount",totalAmount);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}