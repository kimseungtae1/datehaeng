package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.dao.CartDAO;

public class CartDelete2Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//장바구니 페이지
		String url="/jsp/etc03_mypage_02cart.jsp";
		
		HttpSession session = request.getSession();
		CartDAO cart = CartDAO.getInstance();
		int index = Integer.parseInt(request.getParameter("index"));
		int mNo = cart.remove(index);
		
		new CartListAction().execute(request, response);
		
	}

}
