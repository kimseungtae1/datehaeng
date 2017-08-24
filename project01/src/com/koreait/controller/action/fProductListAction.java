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

import com.koreait.fProductVO;
import com.koreait.mProductVO;
import com.koreait.dao.fProductDAO;
import com.koreait.dao.mProductDAO;




public class fProductListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/jsp/sub03_01free.jsp";
		
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
				find = new String (find.getBytes("8859_1"),"euc-kr");
			}catch(UnsupportedEncodingException e){
				e.printStackTrace();
			}
		}
		
		//
		fProductDAO mpDao = fProductDAO.getInstance();
		List<fProductVO> fProList = null;
		List<fProductVO> fProBestList = null;
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
		int listcount = mpDao.fProCount(column,find); 
		// 상품 전체 정렬
		fProList = mpDao.selectAllmPros(pageNum, limit,column,find);
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
		request.setAttribute("fProList", fProList);
		
		// 정렬 
		/*if(sort != null && sort.equals("1")) {
			Collections.sort(fProList, new Comparator<fProductVO>() {
				@Override
				public int compare(fProductVO o1, fProductVO o2) {
					return o2.getfPrice() - o1.getfPrice();
				}    	
		});
			
		}*/
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}