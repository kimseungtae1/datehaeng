package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.fProductVO;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.fProductDAO;
import com.koreait.dao.mProductDAO;
import com.oreilly.servlet.MultipartRequest;

public class fProductWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 등록 폼에서 받아온 값을 vo로 묶어서 db에 저장시키는 중!
		fProductVO mpVO = new fProductVO();
		request.setCharacterEncoding("UTF-8");
		String path = request.getServletContext().getRealPath("/jsp/upload/")/* + "/jsp/upload/"*/;
		MultipartRequest multi = new MultipartRequest(request,path,10*1024*1024,"utf-8");
		mpVO.setfTitle(multi.getParameter("fTitle"));
		mpVO.setfType(multi.getParameter("fType"));
		mpVO.setfPicture(multi.getFilesystemName("fPicture"));
		mpVO.setfPicture2(multi.getFilesystemName("fPicture2"));
		mpVO.setfMapX(multi.getParameter("fMapX"));
		mpVO.setfMapY(multi.getParameter("fMapY"));
		mpVO.setfMapTitle1(multi.getParameter("fMapTitle1"));
		mpVO.setfMapTitle2(multi.getParameter("fMapTitle2"));
		fProductDAO mpDao = fProductDAO.getInstance();
		System.out.println("여기까지성공");
		mpDao.insertBoard(mpVO);
		System.out.println("여기까지성공2");
		new fProductListAction().execute(request, response);
	}
}
