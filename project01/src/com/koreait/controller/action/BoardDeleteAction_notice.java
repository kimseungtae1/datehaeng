package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO_notice;

public class BoardDeleteAction_notice implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nNo=request.getParameter("nNo");
		BoardDAO_notice bDao=BoardDAO_notice.getInstance();
		bDao.deleteBoard(nNo);
		new BoardListAction().execute(request, response);
	}
}
