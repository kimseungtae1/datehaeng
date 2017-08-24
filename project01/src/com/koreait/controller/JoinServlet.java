package com.koreait.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.dao.MemberDAO;
import com.koreait.dto.MemberDTO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //#12] jsp페이지로 가야되!  거기에 회원가입 작성 양식(폼)이 있으니까!
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#13] 폼 작성하러 join.jsp 로 가자!
		request.getRequestDispatcher("jsp/etc02_join01.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//#23] join.jsp에서 회원 정보 물고 들어왔다!
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
	
		
		//db에  쓰기 (insert) - dao(insertMember)  =>  파라미터 6개를 dao클래스로 사용하기 위해 묶음이 필요한데 그때 필요한것이 dto이다!
		
		//db에  쓰기 (insert) - 데이터를 vo로 묶어놨다.
		MemberDTO vo = new MemberDTO();
		vo.setmUserid(mUserid);
		vo.setmPw(mPw);
		vo.setmName(mName);
		vo.setmBirth(mBirth);
		vo.setmPhone(mPhone);
		vo.setmAddress(mAddress);
		vo.setmGender(mGender);
		vo.setmEmail(mEmail);
		
		//db에 쓰기(insert) - dao(insertMember) DTO 시키자!
		MemberDAO dao = MemberDAO.getInstance();	//이미 new MemberDTO를 한번 했었기 때문에 싱글턴을 한다!
		
		
		//#24] dao에 insert하러 가자! 
		int result = dao.insertMember(vo);  //이삿짐(파라미터6개 묶음)을 보내고(transfort) 있는 중이다!
		// -> #25] dao에서 돌아왔다!!
		
		HttpSession session = request.getSession();
		if(result == 1){
			//insert 성공했으면!!  -> 이 정보는 session에 알려놓을 필요가 있다.
			session.setAttribute("mUserid", vo.getmUserid()); //login.jsp에서 el로 표시해놓자!
			
			request.setAttribute("message", "회원가입에 성공했습니다");
			request.getRequestDispatcher("jsp/etc02_join03.jsp").forward(request, response);
			return;
			
		}else if(result == 0){  //결과가 1이 아니면 (insert 실패했으면!!)
			request.setAttribute("message", "회원가입에 실패했습니다");
			
		}
		//#26] login페이지로 가자!
		request.getRequestDispatcher("jsp/etc01_login.jsp").forward(request, response);
		
	}

}







