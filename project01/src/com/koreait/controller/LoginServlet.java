package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.dao.MemberDAO;
import com.koreait.dto.MemberDTO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //#2] (인덱스에서 넘어 왔다!)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jsp/etc01_login.jsp";	//지금 최상위 폴더이니까 바로 member가 나와도 된다.
		
		//#] 세션에서 로그인 검증하기
		HttpSession session = request.getSession();  //로그인을 한번하고 나면 로그인을 성공했다 안했다는 정보하나만 기억시키고 그 이후부터는 성공인지 아닌지만 확인하면된다.
		if(session.getAttribute("loginUser") != null){
			url = "jsp/index.jsp";
		}
		
		
		//#3] 페이지 이동기술  login.jsp로 가자!! redirect를 쓰면 번거로워지니까 dispatcher를 이용한다.  
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//#6]  login.jsp 에서 왔다.	유저 체크 해보자! (db에 가야한다.)
	//#28] login.jsp에서 가입 이후에 왔다!
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jsp/etc01_login.jsp";
		String mUserid = request.getParameter("mUserid");
		String mPw = request.getParameter("mPw");
		
		//DB 접속하는 전담 클래스가 있다. 걔한테 DB연결을 시키고(dbcp)
		//id를 줘서 db에 있는지 검사하자!  있으면 1, 없으면 -1, 틀렸으면 0(그때그때 정하기 나름)
		//있다 없다 2가지면 boolean으로 할수 있지만, 있다, 없다, 틀렸다까지 있으므로 int로 해준다.
		
		//#7-1] db연결 전담하는 클래스 : DAO 클래스 객체 생성 => DAO로 가기!
		//dao #7번 하고 오자!
		MemberDAO dao = MemberDAO.getInstance(); 
		
		
		//#9-2] dao에 #9 실행하자!	#10-2] return값 갖고 왔다!
		//#29] id,pw를 갖고 db에 다녀온다.  #9번은 id가 없었다. 이번에는 db에 저장해놨다.
		//따라서 리턴값 1이된다.  result에 1을 저장해 놓는다.
		int result = dao.userCheck(mUserid, mPw);  //체크좀 해줘~
		//result  <-- 1:id,pwd 둘다 있음    0:id는 있지만 pwd가 틀린것
		//									-1: id 자체가 없는것
		
		
		//return 받는 result 값을 체크하자 ! 
		//-> 이 값에 따라 가야할 페이지가 결정된다.
		
		//#30] 1이 있다!!! 즉, 가입된 유저가 확인 됐다!
		if(result == 1){	//id, pwd가 다 맞는 상황
			//회원 전용 페이지로 이동하면 된다.
			//그냥 가면 안된다!  "이 회원 로그인 상태다!!" 라는 
			//표시를 남겨두고 가야한다. -> 표시는 session에 남겨두자!!
			//==> 그 이후에는 id, pwd값대신 표시를 가지고 다닌다.
			//로그인 상태기 때문에 session에 그 회원의
			//정보를 기록해 놓자!
			
			//#31] 그 id에 저장된 기록을 모두 꺼내 놓자! (세션에 담은 후, 각 컨텐츠에서...(메일,블로그,
			//카페, ... 등 개인기록이 필요한 컨텐츠)에서 가져다 쓸 수 있도록, 저장해 놓는 것이다.)
			//#9-3-1]
			//#32] db에 가서 id에 해당하는 정보를 꺼내오자!
			MemberDTO dto = dao.getMember(mUserid);
			//#34] dao에서 돌아왔다.
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", dto);  //""에
						//id에 해당하는 모든 객체의 정보를 담아놓을 거다.
			request.setAttribute("message", "회원 가입에 성공했습니다.");

			url = "jsp/index.jsp";
		}else if(result == 0){
			request.setAttribute("message", "비밀번호가 맞지않습니다.");
		}else if(result == -1){
			request.setAttribute("message", "존재하지 않는 아이디입니다.");
		}
		
		//#11] 페이지 이동(현재는 아무 회원도 없는 걸로 간주하기 때문에)
		//			다시 login.jsp로 간다.
		//#35] 회원전용페이지(main.jsp)로 간다!
		request.getRequestDispatcher(url).forward(request, response);
	}

}
