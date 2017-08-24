package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.mProductVO;
import com.koreait.dao.CartDAO;
import com.koreait.dao.mProductDAO;

import oracle.net.aso.r;




public class CartDeleteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//상품
		String url="/jsp/index.jsp";
		
		HttpSession session = request.getSession();
		
		CartDAO cart = CartDAO.getInstance();
		int index = Integer.parseInt(request.getParameter("index"));
		int mNo = cart.remove(index);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		/*System.out.println("세션받아오기전");
		HttpSession session = request.getSession();
		System.out.println("세션받아옴");
		session.invalidate();
		System.out.println("세션파괴, url로 이동하기 전");
		request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);*/
		
	}

}