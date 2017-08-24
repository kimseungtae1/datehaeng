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
import com.koreait.reservationVO;
import com.koreait.dao.CartDAO;
import com.koreait.dao.ReservationDAO;
import com.koreait.dao.ReserveService;
import com.koreait.dao.ReserveService2;
import com.koreait.dao.mProductDAO;
import com.koreait.dto.MemberDTO;



public class CartFinishAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		//결제완료 페이지
		String url="/jsp/etc03_mypage_02cart3.jsp";
		
		CartDAO cart = CartDAO.getInstance();
		
		//회원정보
		MemberDTO loginUser = (MemberDTO)session.getAttribute("MemberDTO");
		
		int mctype = Integer.parseInt(request.getParameter("mctype"));
		
			//총합계산
			ReserveService reserveService = ReserveService.getInstance();
			Long totalAmount = reserveService.Directcal(cart.getmProList());
			request.setAttribute("mproList", cart.getmProList());
			request.setAttribute("loginUser",loginUser);
			request.setAttribute("totalAmount",totalAmount);
			
			
			//db저장
			reservationVO rsv = new reservationVO();
			rsv.setmUserid(request.getParameter("mUserid"));
			rsv.setMcNo(Integer.parseInt(request.getParameter("mNo")));
			rsv.setrName(request.getParameter("rName"));
			rsv.setrPhone(request.getParameter("rPhone"));
			rsv.setrEmail(request.getParameter("rEmail"));
			/*rsv.setrUse(Integer.parseInt(request.getParameter("rUse")));
			rsv.setrSave(Integer.parseInt(request.getParameter("rSave")));*/
			rsv.setAdult(request.getParameter("adult"));
			rsv.setrDate1(request.getParameter("mDate1"));
			rsv.setrDate2(request.getParameter("mDate2"));
			rsv.setMcTitle(request.getParameter("mTitle"));
			rsv.setMcPrice(Integer.parseInt(request.getParameter("mPrice")));
			rsv.setMcPicture(request.getParameter("mPicture"));
			rsv.setMcbuy(Integer.parseInt(request.getParameter("mcbuy")));
			
			ReservationDAO mppDao = ReservationDAO.getInstance();
			mppDao.finish(rsv);
			/*new mProductListAction().execute(request, response);*/
			
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}