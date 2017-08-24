package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO_notice;
import com.koreait.BoardVO_notice;

public class BoardUpdateFormAction_notice implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/jsp/sub05_01NOTICE_update.jsp";
		String nNo = request.getParameter("nNo");
		BoardDAO_notice bDao = BoardDAO_notice.getInstance();
		bDao.updateReadCount(nNo);
		BoardVO_notice bVo = bDao.selectOneBoardByNum(nNo);
		request.setAttribute("board", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
