package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO_notice;
import com.koreait.BoardVO_notice;

public class BoardUpdateAction_notice implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardVO_notice bVo = new BoardVO_notice();
		bVo.setnNo(Integer.parseInt(request.getParameter("nNo")));
		bVo.setnTitle(request.getParameter("nTitle"));
		bVo.setnContext(request.getParameter("nContext"));
		bVo.setmUserid(request.getParameter("mUserid"));
		BoardDAO_notice bDao = BoardDAO_notice.getInstance();
		bDao.updateBoard(bVo);
		new BoardListAction().execute(request, response);
	}
}
