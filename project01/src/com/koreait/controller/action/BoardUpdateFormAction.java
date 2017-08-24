package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.BoardVO;

public class BoardUpdateFormAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/jsp/sub05_03qna_update.jsp";
		String qNo = request.getParameter("qNo");
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateReadCount(qNo);
		BoardVO bVo = bDao.selectOneBoardByNum(qNo);
		request.setAttribute("qna", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
