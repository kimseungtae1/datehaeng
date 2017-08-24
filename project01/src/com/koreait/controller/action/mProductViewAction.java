package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.BoardVO;
import com.koreait.MReviewVO;
import com.koreait.mNoSet;
import com.koreait.mProductVO;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.ReviewDAO;
import com.koreait.dao.mProductDAO;

public class mProductViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//상품 등록
			int mNo = Integer.parseInt(request.getParameter("mNo"));
			mProductDAO mpDao = mProductDAO.getInstance();
			
			mProductVO mpVo = mpDao.selectOnemProByNum(mNo);
			request.setAttribute("mprod", mpVo);
		
			//리뷰 등록
			MReviewVO mrVo = new MReviewVO();
			mrVo.setmUserid(request.getParameter("mUserid"));
			mrVo.setMrContext(request.getParameter("mrContext"));
			mrVo.setmNo(mNo);
			ReviewDAO mrDao = ReviewDAO.getInstance();
			mrDao.insertMealReview(mrVo);
			
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
			List<MReviewVO> MealReviewList = null;
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
			int listcount = mrDao.MealReviewCount(column,find); 
			MealReviewList = mrDao.selectAllMealReviews(pageNum, limit,column,find);
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
			request.setAttribute("MealReviewList", MealReviewList);
			
			
			if(mNo ==1){
				String url = "/jsp/sub02_01meal_detail01.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			} 
			else if(mNo ==2){
				String url = "/jsp/sub02_01meal_detail02.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			} 
			else if(mNo ==3){
				String url = "/jsp/sub02_01meal_detail03.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==4){
				String url = "/jsp/sub02_02cafe_detail01.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==5){
				String url = "/jsp/sub02_02cafe_detail02.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==6){
				String url = "/jsp/sub02_02cafe_detail03.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==7){
				String url = "/jsp/sub02_02cafe_detail04.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==8){
				String url = "/jsp/sub02_02cafe_detail05.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==9){
				String url = "/jsp/sub02_01meal_detail04.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==10){
				String url = "/jsp/sub02_01meal_detail05.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==11){
				String url = "/jsp/sub02_01meal_detail06.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==12){
				String url = "/jsp/sub02_01meal_detail07.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==13){
				String url = "/jsp/sub02_01meal_detail08.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==14){
				String url = "/jsp/sub02_02cafe_detail06.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==15){
				String url = "/jsp/sub02_02cafe_detail07.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==16){
				String url = "/jsp/sub02_02cafe_detail08.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==17){
				String url = "/jsp/sub02_02cafe_detail09.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
			else if(mNo ==18){
				String url = "/jsp/sub02_01meal_detail09.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}
	}
}
