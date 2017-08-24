package com.koreait.controller.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO_notice;


import com.koreait.BoardVO_notice;

public class BoardListAction_notice implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/jsp/sub05_01NOTICE.jsp";
		
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
		BoardDAO_notice bDao = BoardDAO_notice.getInstance();
		List<BoardVO_notice> noticeList = null;
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
		int listcount = bDao.boardCount(column,find); 
		noticeList = bDao.selectAllBoards(pageNum, limit,column,find);
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
		request.setAttribute("noticeList", noticeList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
