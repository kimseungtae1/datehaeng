package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO_notice;
import com.koreait.BoardVO_notice;

public class BoardWriteAction_notice implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//게시글 등록 폼에서 받아온 값을 vo로 묶어서 db에 저장시키는 중!
		BoardVO_notice bVo = new BoardVO_notice();
		bVo.setmUserid(request.getParameter("mUserid"));
		bVo.setnTitle(request.getParameter("nTitle"));
		bVo.setnContext(request.getParameter("nContext"));
		BoardDAO_notice bDao = BoardDAO_notice.getInstance();
		System.out.println(request.getParameter("nTitle"));
		System.out.println("성공1");
		bDao.insertBoard(bVo);
		System.out.println("성공2");
		new BoardListAction_notice().execute(request, response);
	}
}
