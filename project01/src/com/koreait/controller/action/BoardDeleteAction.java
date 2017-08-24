package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.BoardVO;

public class BoardDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String qNo=request.getParameter("qNo");
		BoardDAO bDao=BoardDAO.getInstance();
		bDao.deleteBoard(qNo);
		new BoardListAction().execute(request, response);
	}
}
