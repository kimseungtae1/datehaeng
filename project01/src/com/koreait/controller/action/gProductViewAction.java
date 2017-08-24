package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.FReviewVO;
import com.koreait.GReviewVO;
import com.koreait.cProductVO;
import com.koreait.fProductVO;
import com.koreait.gProductVO;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.ReviewDAO;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.fProductDAO;
import com.koreait.dao.gProductDAO;
import com.koreait.dao.mProductDAO;

public class gProductViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//상품 등록
		int gNo = Integer.parseInt(request.getParameter("gNo"));
		gProductDAO mpDao = gProductDAO.getInstance();
		
		gProductVO mpVo = mpDao.selectOnemProByNum(gNo);
		request.setAttribute("mprod", mpVo);
	
		//리뷰 등록
		GReviewVO grVo = new GReviewVO();
		grVo.setmUserid(request.getParameter("mUserid"));
		grVo.setGrContext(request.getParameter("grContext"));
		grVo.setgNo(gNo);
		ReviewDAO grDao = ReviewDAO.getInstance();
		grDao.insertChargeReview(grVo);
		
		String column = request.getParameter("column");
		String find = request.getParameter("find");
		String sort = request.getParameter("sort");
		if(column == null || column.equals(""))
			column = null;
		if(find == null || find.equals(""))
			find = null;
		//검색기능
		if(find != null && request.getMethod().equals("GET")){
			try{
				find = new String (find.getBytes("8859_1"),"utf-8");
			}catch(UnsupportedEncodingException e){
				e.printStackTrace();
			}
		}
		
		//
		List<GReviewVO> ChargeReviewList = null;
		int pageNum = 1;
		int limit = 10;
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			request.getSession().removeAttribute("pageNum");
		}
		if(request.getSession().getAttribute("pageNum") != null) {
			pageNum = (Integer)request.getSession().getAttribute("pageNum");
		}
		request.getSession().setAttribute("pageNum", pageNum);
		int listcount = grDao.ChargeReviewCount(column,find); 
		ChargeReviewList = grDao.selectAllChargeReviews(pageNum, limit,column,find);
		/*int num = Integer.parseInt(list.get(0).toString());
		System.out.println("num��=>"+num);
		int replycnt = dao.replyCnt(num);*/
		int maxpage = (int)((double)listcount/limit + 0.95);
		int startpage = ((int)(pageNum/10.0 + 0.9) -1)*10 + 1;
		int endpage = startpage + 9;
		if(endpage > maxpage) endpage = maxpage;
		int boardNum = listcount - ((pageNum-1)*10);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("maxpage", maxpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("listcount", listcount);
		request.setAttribute("boardNum", boardNum);
		request.setAttribute("find", find);
		request.setAttribute("ChargeReviewList", ChargeReviewList);
		
		if(gNo ==1){
			String url = "/jsp/sub03_02charge_detail01.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==2){
			String url = "/jsp/sub03_02charge_detail02.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==3){
			String url = "/jsp/sub03_02charge_detail03.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==4){
			String url = "/jsp/sub03_02charge_detail04.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==5){
			String url = "/jsp/sub03_02charge_detail05.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==6){
			String url = "/jsp/sub03_02charge_detail06.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==7){
			String url = "/jsp/sub03_02charge_detail07.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==8){
			String url = "/jsp/sub03_02charge_detail08.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(gNo ==9){
			String url = "/jsp/sub03_02charge_detail09.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} 
		
	}
}
