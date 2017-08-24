package com.koreait.controller.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.PrereVO;
import com.koreait.dao.CartDAO;
import com.koreait.dao.ReservationDAO;
import com.koreait.dao.ReserveService;
import com.koreait.dto.MemberDTO;

public class ReservationAction implements Action {

	@Override
	// 최종 주문 화면
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		//회원정보
		MemberDTO loginUser = (MemberDTO)session.getAttribute("MemberDTO");
		//상품정보
		CartDAO cart =(CartDAO)session.getAttribute("CartDAO");
		
		//총합계산
		ReserveService reserveService = ReserveService.getInstance();
		System.out.println("계산시작");
		Long totalAmount = reserveService.Directcal(cart.getmProList());
		System.out.println(totalAmount);
		request.setAttribute("mproList", cart.getmProList());
		request.setAttribute("loginUser",loginUser);
		request.setAttribute("totalAmount",totalAmount);
		//최종결제페이지 주소
		String url = "/jsp/etc03_mypage_02cart2.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
