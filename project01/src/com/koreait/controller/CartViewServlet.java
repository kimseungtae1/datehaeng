package com.koreait.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.controller.action.Action;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/CartViewServlet")
public class CartViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //#38] main.jsp에서 "로그아웃" 때문에 왔다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		
		System.out.println("CartViewServlet에서 요청을 받음을 확인 : " + command);
		
		ActionFactory af = ActionFactory.getInstance();
		
		//액션을 만들어주는 (팩토리) 메서드에 다녀오게 되면
		//어떤 클래스로 이동해야하는 지에 대한 클래스 객체가
		//들어 있게 된다.
		//다 액션에 대입할 수 있는 구현 클래스이기 때문에(다형성)
		//액션에 담아 놓은 후...
		Action action=af.getAction(command);
		
		if(action != null){
			//해당 액션을 실행하자!!!
			action.execute(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
