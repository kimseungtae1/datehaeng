package com.koreait.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.MemberDAO;

/**
 * Servlet implementation class IdCheckServlet
 */
@WebServlet("/idCheck.do")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //#15] 자바스크립트에서 왔다!!
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mUserid = request.getParameter("mUserid");
		
		//id값 가져왔으니까 db에 가서 그 id 있는 지 확인좀 하자! -> DAO 담당!
		MemberDAO dao = MemberDAO.getInstance();  //알아서 dbcp까지연동을 했다!
		
		//#16-1] userid를 가지고 해당 db에 접속하러 메서드 부르자!
		int result = dao.confirmID(mUserid);
		
		//#17-2] dao의 confirmID에서 돌아왔다.
		request.setAttribute("mUserid", mUserid);  //${userid}
		request.setAttribute("result", result);
		
		//중복체크하는 윈도우 창에 input하고 버튼 2개 만드는 뷰가 필요하다
		//그 뷰를 만들때.. userid를 주자! 그리고 result에 따라
		//메세지가 "사용가능" "이미사용중" 등의 문구를 써놓도록 하자!
		
		//#18] idCheck.jsp로 userid값과 result값을 가지고 이동
		request.getRequestDispatcher("jsp/idCheck.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
