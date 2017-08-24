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
import com.koreait.dao.ReserveService;
import com.koreait.dao.ReserveService2;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.mProductDAO;
import com.koreait.dto.MemberDTO;

public class CartCafeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

				//장바구니 페이지
				String url="/jsp/etc03_mypage_02cart_cafe.jsp";
				
				//받아와야 하는 것들. 카페
				int cNo = Integer.parseInt(request.getParameter("cNo")); //아이템 넘버
				int cMoney = Integer.parseInt(request.getParameter("cMoney")); //적립금
				String cDate1 = request.getParameter("cDate1"); //예약날짜
				String cDate2 = request.getParameter("cDate2"); //예약시간
				String adult = request.getParameter("adult"); //인원수
				
				//선택한 아이템 저장. 카페
				cProductDAO cpDao = cProductDAO.getInstance();
				cProductVO selecteditem2 = cpDao.getcProList(cNo);
				
				//새로 입력 받은 내용도 저장(예약시간 등). 카페
				cProSet cProSet = new cProSet(selecteditem2, cMoney, cDate1, cDate2, adult);
				CartDAO cart2 = CartDAO.getInstance();
				cart2.push(cProSet);
				
				//회원정보
				MemberDTO loginUser = (MemberDTO)session.getAttribute("MemberDTO");
						
				//총합계산.카페
				ReserveService2 reserveService2 = ReserveService2.getInstance();
				Long totalAmount2 = reserveService2.Directcal2(cart2.getcProList());
				System.out.println(totalAmount2);
				request.setAttribute("cproList", cart2.getcProList());
				request.setAttribute("loginUser",loginUser);
				request.setAttribute("totalAmount2",totalAmount2);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		}
	}
