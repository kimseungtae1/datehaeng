package com.koreait.controller;

import com.koreait.controller.action.Action;
import com.koreait.controller.action.BoardDeleteAction_notice;
import com.koreait.controller.action.BoardListAction_notice;
import com.koreait.controller.action.BoardUpdateAction_notice;
import com.koreait.controller.action.BoardUpdateFormAction_notice;
import com.koreait.controller.action.BoardViewAction_notice;
import com.koreait.controller.action.BoardWriteAction_notice;
import com.koreait.controller.action.BoardWriteFormAction_notice;

public class ActionFactory_notice {
	
	private static ActionFactory_notice instance = new ActionFactory_notice();

	private ActionFactory_notice() {
		super();
	}

	public static ActionFactory_notice getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		//인터페이스, 요청 cammand를 if문으로 분석해주면..
		//해당 요청정보에 따른
		//클래스를 선택한다.
		//이때 이 클래스들은 모두  Action 인터페이스를 구현했기
		//때문에 다형적 대입이 성립된다.
		
		//또한 모든 클래스는 Action 인터페이스가 갖고 있는
		//execute 추상메서드를 재정의 해 놓은 상태기 때문에..
		//요청정보를 수행할 수 있게 된다.
		
		System.out.println("ActionFactory :" + command);
		
		/* 추가된 부분 */
		if (command.equals("board_list")) {
			//#3] board_list -> BoardListAction 생성자
			action = new BoardListAction_notice();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction_notice();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction_notice();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction_notice();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction_notice();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction_notice();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction_notice();
		}
		return action;
	}
}
