package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.CReviewVO;
import com.koreait.FReviewVO;
import com.koreait.cProductVO;
import com.koreait.fProductVO;
import com.koreait.mNoSet;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.ReviewDAO;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.fProductDAO;
import com.koreait.dao.mProductDAO;

public class fProductViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				//상품 등록
				int fNo = Integer.parseInt(request.getParameter("fNo"));
				fProductDAO mpDao = fProductDAO.getInstance();
				
				fProductVO mpVo = mpDao.selectOnemProByNum(fNo);
				request.setAttribute("mprod", mpVo);
			
				//리뷰 등록
				FReviewVO frVo = new FReviewVO();
				frVo.setmUserid(request.getParameter("mUserid"));
				frVo.setFrContext(request.getParameter("frContext"));
				frVo.setfNo(fNo);
				ReviewDAO frDao = ReviewDAO.getInstance();
				frDao.insertFreeReview(frVo);
				
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
				List<FReviewVO> FreeReviewList = null;
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
				int listcount = frDao.FreeReviewCount(column,find); 
				FreeReviewList = frDao.selectAllFreeReviews(pageNum, limit,column,find);
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
				request.setAttribute("FreeReviewList", FreeReviewList);
		
		if(fNo ==1){
			String url = "/jsp/sub03_01free_detail01.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==2){
			String url = "/jsp/sub03_01free_detail02.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==3){
			String url = "/jsp/sub03_01free_detail03.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==4){
			String url = "/jsp/sub03_01free_detail04.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==5){
			String url = "/jsp/sub03_01free_detail05.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==6){
			String url = "/jsp/sub03_01free_detail06.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==7){
			String url = "/jsp/sub03_01free_detail07.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==8){
			String url = "/jsp/sub03_01free_detail08.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==9){
			String url = "/jsp/sub03_01free_detail09.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} else if(fNo ==10){
			String url = "/jsp/sub03_01free_detail10.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}
}
