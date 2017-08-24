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

import com.koreait.cProductVO;
import com.koreait.gProductVO;
import com.koreait.mProductVO;
import com.koreait.dao.cProductDAO;
import com.koreait.dao.gProductDAO;
import com.koreait.dao.mProductDAO;



public class gProductListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/jsp/sub03_02charge.jsp";
		
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
				find = new String (find.getBytes("8859_1"),"euc-kr");
			}catch(UnsupportedEncodingException e){
				e.printStackTrace();
			}
		}
		
		//
		gProductDAO mpDao = gProductDAO.getInstance();
		List<gProductVO> gProList = null;
		List<gProductVO> gProBestList = null;
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
		int listcount = mpDao.gProCount(column,find); 
		// 상품 전체 정렬
		gProList = mpDao.selectAllmPros(pageNum, limit,column,find);
		// 상품 베스트 정렬 (현재는 가격순으로 정렬)
/*		gProBestList = mpDao.selectBestcPros();*/
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
		request.setAttribute("gProList", gProList);
		request.setAttribute("gProBestList", gProBestList);
		
		// 정렬 
		/*if(sort != null && sort.equals("1")) {
			Collections.sort(gProList, new Comparator<gProductVO>() {
				@Override
				public int compare(gProductVO o1, gProductVO o2) {
					return o2.getgPrice() - o1.getgPrice();
				}    	
		});
			
		}*/
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}