package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.cProductVO;
import com.koreait.gProductVO;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.gProductDAO;
import com.koreait.dao.mProductDAO;
import com.oreilly.servlet.MultipartRequest;

public class gProductWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 등록 폼에서 받아온 값을 vo로 묶어서 db에 저장시키는 중!
		gProductVO mpVO = new gProductVO();
		request.setCharacterEncoding("UTF-8");
		String path = request.getServletContext().getRealPath("/jsp/upload/")/* + "/jsp/upload/"*/;
		MultipartRequest multi = new MultipartRequest(request,path,10*1024*1024,"utf-8");
		mpVO.setgTitle(multi.getParameter("gTitle"));
		mpVO.setgEx(multi.getParameter("gEx"));
		mpVO.setgPicture(multi.getFilesystemName("gPicture"));
		mpVO.setgMapX(multi.getParameter("gMapX"));
		mpVO.setgMapY(multi.getParameter("gMapY"));
		mpVO.setgMapTitle1(multi.getParameter("gMapTitle1"));
		mpVO.setgMapTitle2(multi.getParameter("gMapTitle2"));
		gProductDAO mpDao = gProductDAO.getInstance();
		System.out.println("여기까지성공");
		mpDao.insertBoard(mpVO);
		System.out.println("여기까지성공2");
		new gProductListAction().execute(request, response);
	}
}
