package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.mProductDAO;
import com.oreilly.servlet.MultipartRequest;

public class mProductWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*int mctype = Integer.parseInt(request.getParameter("mctype"));*/
		//게시글 등록 폼에서 받아온 값을 vo로 묶어서 db에 저장시키는 중!
		mProductVO mpVO = new mProductVO();
		request.setCharacterEncoding("UTF-8");
		String path = request.getServletContext().getRealPath("/jsp/upload/")/* + "/jsp/upload/"*/;
		MultipartRequest multi = new MultipartRequest(request,path,10*1024*1024,"utf-8");
		mpVO.setmTitle(multi.getParameter("mTitle"));
		mpVO.setmType(multi.getParameter("mType"));
		mpVO.setmPrice(Integer.parseInt(multi.getParameter("mPrice")));
		mpVO.setmPicture(multi.getFilesystemName("mPicture"));
		mpVO.setmPicture2(multi.getFilesystemName("mPicture2"));
		mpVO.setmMapX(multi.getParameter("mMapX"));
		mpVO.setmMapY(multi.getParameter("mMapY"));
		mpVO.setmMapTitle1(multi.getParameter("mMapTitle1"));
		mpVO.setmMapTitle2(multi.getParameter("mMapTitle2"));
		mpVO.setMctype(Integer.parseInt(multi.getParameter("mctype")));
		mpVO.setmEx(multi.getParameter("mEx"));
		mProductDAO mpDao = mProductDAO.getInstance();
		System.out.println("여기까지성공");
		mpDao.insertBoard(mpVO);
		System.out.println("여기까지성공2");
		new mProductListAction().execute(request, response);
	}
}
