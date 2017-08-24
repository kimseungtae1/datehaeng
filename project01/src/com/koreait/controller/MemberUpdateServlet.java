package com.koreait.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.MemberDAO;
import com.koreait.dto.MemberDTO;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //#40] main.jsp에서 왔다!
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mUserid = request.getParameter("mUserid");
		MemberDAO dao = MemberDAO.getInstance();
		//#41] dao에 가서 회원정보 하나 가지고 왔다.
		MemberDTO vo = dao.getMember(mUserid);
		
		//저장시켰고..
		request.setAttribute("mVo", vo);
		
		//그 정보를 들고 memberUpdate.jsp 페이지로 가자! 
		//el로 수정할 내용을 먼저 보여주자!
		//#42] memberUpdate.jsp로 이동!
		request.getRequestDispatcher("jsp/etc03_mypage_03info.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//#45] memberUpdate.jsp 에서 doPost로 이동함!
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mUserid = request.getParameter("mUserid");
		String mPw = request.getParameter("mPw");
		String mName = request.getParameter("mName");
		String mBirth = request.getParameter("mBirth");
		String mPhone = request.getParameter("mPhone");
		String mAddress = request.getParameter("mAddress");
		String mGender = request.getParameter("mGender");
		String mEmail = request.getParameter("mEmail");
		
		

		MemberDTO vo = new MemberDTO();
		vo.setmUserid(mUserid);
		vo.setmPw(mPw);
		vo.setmName(mName);
		vo.setmBirth(mBirth);
		vo.setmPhone(mPhone);
		vo.setmAddress(mAddress);
		vo.setmGender(mGender);
		vo.setmEmail(mEmail);

		
		MemberDAO dao = MemberDAO.getInstance();
		//#46]
		dao.updateMember(vo);	//현재는 리턴값을 쓰지 않겠다!
		
		//#47] login.jsp로 가서 수정한 내용으로 다시 로그인 시키자!
		response.sendRedirect("login.do");
		//requestDispatcher는 request의 내용을 갖고 그대로 전달하기 때문에 여기서는 그냥 sendRedirect를 사용한다!
	}

}
