package com.koreait.controller;

import com.koreait.controller.action.Action;
import com.koreait.controller.action.AllpaymentAction;
import com.koreait.controller.action.BoardDeleteAction;
import com.koreait.controller.action.BoardListAction;
import com.koreait.controller.action.BoardUpdateAction;
import com.koreait.controller.action.BoardUpdateFormAction;
import com.koreait.controller.action.BoardViewAction;
import com.koreait.controller.action.BoardWriteAction;
import com.koreait.controller.action.BoardWriteFormAction;
import com.koreait.controller.action.Cart2Action;
import com.koreait.controller.action.CartAction;
import com.koreait.controller.action.CartCafeAction;
import com.koreait.controller.action.CartDelete2Action;
import com.koreait.controller.action.CartDeleteAction;
import com.koreait.controller.action.CartFinishAction;
import com.koreait.controller.action.CartListAction;
import com.koreait.controller.action.DreserveAction;
import com.koreait.controller.action.Reservation2Action;
import com.koreait.controller.action.Reservation3Action;
import com.koreait.controller.action.ReservationAction;
import com.koreait.controller.action.ReserveCancelAction;
import com.koreait.controller.action.ReserveDetailAction;
import com.koreait.controller.action.ReserveListAction;
import com.koreait.controller.action.fProductListAction;
import com.koreait.controller.action.fProductViewAction;
import com.koreait.controller.action.fProductWriteAction;
import com.koreait.controller.action.fProductWriteFormAction;
import com.koreait.controller.action.gProductListAction;
import com.koreait.controller.action.gProductViewAction;
import com.koreait.controller.action.gProductWriteAction;
import com.koreait.controller.action.gProductWriteFormAction;
import com.koreait.controller.action.mProductListAction;
import com.koreait.controller.action.mProductViewAction;
import com.koreait.controller.action.mProductWriteAction;
import com.koreait.controller.action.mProductWriteFormAction;
import com.koreait.controller.action.mProductWriteFormAction2;

public class ActionFactory {
	
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
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
			action = new BoardListAction();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		} 
		//먹을거리-식당
		else if (command.equals("mproduct_list")) {
			action = new mProductListAction();
		} else if (command.equals("mproduct_write_form")) {
			action = new mProductWriteFormAction();
		} else if (command.equals("mproduct_write_form2")) {
			action = new mProductWriteFormAction2();
		} else if (command.equals("mproduct_write")) {
			action = new mProductWriteAction();
		} else if (command.equals("mproduct_view")) {
			action = new mProductViewAction();
		} 

		//즐길거리-무료
		else if (command.equals("fproduct_list")){
			action = new fProductListAction();
		} else if (command.equals("fproduct_write_form")) {
			action = new fProductWriteFormAction();
		} else if (command.equals("fproduct_write")) {
			action = new fProductWriteAction();
		} else if (command.equals("fproduct_view")) {
			action = new fProductViewAction();
		} 
		//즐길거리-유료
		else if (command.equals("gproduct_list")){
			action = new gProductListAction();
		} else if (command.equals("gproduct_write_form")) {
			action = new gProductWriteFormAction();
		} else if (command.equals("gproduct_write")) {
			action = new gProductWriteAction();
		} else if (command.equals("gproduct_view")) {
			action = new gProductViewAction();
		} 
		//바로주문
		else if (command.equals("dreservation")){
			action = new DreserveAction();
		}
		
		//confirm 창에 확인 누를 시 장바구니 이동
		else if (command.equals("cart")){
			action = new CartAction();
		//confirm 창에 취소 누를  시 상품리스트이동
		}else if (command.equals("cart2")){
			action = new Cart2Action();
		}
		//상품주문
		else if (command.equals("allpayment")){
			action = new AllpaymentAction();
		}
		//전체삭제
		else if (command.equals("cartdelete")){
			action = new CartDeleteAction();
		}
		//선택삭제
		else if (command.equals("cartdelete2")){
			action = new CartDelete2Action();
		}
		//마이페이지 -> 장바구니
		else if (command.equals("cart_list")){
			action = new CartListAction();
		}
		//마이페이지 -> 예약확인
		else if (command.equals("reserve_list")){
			action = new ReserveListAction();
		}
	
		//예약상세정보 보기
		else if (command.equals("reserve_detail")){
			action = new ReserveDetailAction();
		}
		//결제하기 -> 결제완료
		else if (command.equals("finish")){
			action = new CartFinishAction();
		}
		//in예약상세페이지, 주문취소하기
		else if (command.equals("cancel")){
			action = new ReserveCancelAction();
		}
		return action;
	}
}
