package com.koreait.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.controller.action.Action;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//#2] command=board_list값을 가지고 왔다
		String command = request.getParameter("command");
		
		System.out.println("CartServlet에서 요청을 받음을 확인 : " + command);
		
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
