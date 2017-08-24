package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.mProductVO;
import com.koreait.dao.mProductDAO;




public class mProductListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int mctype = Integer.parseInt(request.getParameter("mctype"));
		
			if(mctype==1){
			String url = "/jsp/sub02_01meal.jsp";
			
			String column = request.getParameter("column");
			String find = request.getParameter("find");
			// 정렬 컬럼 받아오기
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
			mProductDAO mpDao = mProductDAO.getInstance();
			List<mProductVO> mProList = null;
			List<mProductVO> mProBestList = null;
			List<mProductVO> mProTypeList = null;
			String type = request.getParameter("type");
			System.out.println("listaction까지 도착 확인 : " + type);
			int pageNum = 1;
			int limit = 20;
			if(request.getParameter("pageNum") != null) {
				pageNum = Integer.parseInt(request.getParameter("pageNum"));
				request.getSession().removeAttribute("pageNum");
			}
			if(request.getSession().getAttribute("pageNum") != null) {
				pageNum = (Integer)request.getSession().getAttribute("pageNum");
			}
			request.getSession().setAttribute("pageNum", pageNum);
			int listcount = mpDao.mProCount(column,find); 
			// 상품 전체 정렬
			mProList = mpDao.selectAllmPros(pageNum, limit,column,find);
			// 상품 베스트 정렬 (현재는 가격순으로 정렬)
			mProBestList = mpDao.selectBestmPros();
			// 식당별 구분 정렬
			mProTypeList = mpDao.selectTypemPros(pageNum, limit,column,find, type);
			
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
			request.setAttribute("mProList", mProList);
			request.setAttribute("mProBestList", mProBestList);
			request.setAttribute("mProTypeList", mProTypeList);
			
			// 정렬 
			if(sort != null && sort.equals("1")) {
				Collections.sort(mProList, new Comparator<mProductVO>() {
					@Override
					public int compare(mProductVO o1, mProductVO o2) {
						return o2.getmPrice() - o1.getmPrice();
					}    	
			});
				
			}
		
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}	
			
			if(mctype==2){
				String url = "/jsp/sub02_02cafe.jsp";
				
				String column = request.getParameter("column");
				String find = request.getParameter("find");
				// 정렬 컬럼 받아오기
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
				mProductDAO mpDao = mProductDAO.getInstance();
				List<mProductVO> mProList = null;
				List<mProductVO> mProBestList = null;
				List<mProductVO> mProTypeList = null;
				String type = request.getParameter("type");
				System.out.println("listaction까지 도착 확인 : " + type);
				int pageNum = 1;
				int limit = 20;
				if(request.getParameter("pageNum") != null) {
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
					request.getSession().removeAttribute("pageNum");
				}
				if(request.getSession().getAttribute("pageNum") != null) {
					pageNum = (Integer)request.getSession().getAttribute("pageNum");
				}
				request.getSession().setAttribute("pageNum", pageNum);
				int listcount = mpDao.mProCount(column,find); 
				// 상품 전체 정렬
				mProList = mpDao.selectAllmPros2(pageNum, limit,column,find);
				// 상품 베스트 정렬 (현재는 가격순으로 정렬)
				mProBestList = mpDao.selectBestmPros2();
				// 식당별 구분 정렬
				mProTypeList = mpDao.selectTypemPros(pageNum, limit,column,find, type);
				
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
				request.setAttribute("mProList", mProList);
				request.setAttribute("mProBestList", mProBestList);
				request.setAttribute("mProTypeList", mProTypeList);
				
				// 정렬 
				if(sort != null && sort.equals("1")) {
					Collections.sort(mProList, new Comparator<mProductVO>() {
						@Override
						public int compare(mProductVO o1, mProductVO o2) {
							return o2.getmPrice() - o1.getmPrice();
						}    	
				});
					
				}
			
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
			}	
	}
}