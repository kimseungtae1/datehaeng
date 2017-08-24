package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.BoardVO;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//게시글 등록 폼에서 받아온 값을 vo로 묶어서 db에 저장시키는 중!
		BoardVO bVo = new BoardVO();
		bVo.setmUserid(request.getParameter("mUserid"));
		bVo.setqTitle(request.getParameter("qTitle"));
		bVo.setqContext(request.getParameter("qContext"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		new BoardListAction().execute(request, response);
	}
}
