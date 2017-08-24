package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dao.ReservationDAO;
import com.koreait.BoardVO;

public class ReserveCancelAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rNo=request.getParameter("rNo");
		ReservationDAO bDao=ReservationDAO.getInstance();
		bDao.deleteReserve(rNo);
		new ReserveListAction().execute(request, response);
	}
}
