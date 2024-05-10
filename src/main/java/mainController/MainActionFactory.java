package mainController;

import action.MainAction;
import action.board;
import action.boardDetail;

import action.commentBoard;
import action.commentBoardRegist;
import action.deleteBoard;
import action.deleteMail;
import action.editForm;

import action.idSearch;
import action.idSearchForm;
import action.join;
import action.joinForm;
import action.login;
import action.logout;
import action.mail;
import action.mailDetail;
import action.mailFileDown;
import action.pwdSearch;
import action.pwdSearchForm;
import action.registBoard;
import action.registBoardForm;
import action.registMail;
import action.registMailForm;
import action.requestMail;
import action.updateBoard;
import action.updateBoardDetail;
import action.updateEdit;

public class MainActionFactory {

	private static MainActionFactory instance = new MainActionFactory();

	private MainActionFactory() {
		super();
	}

	public static MainActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("Action 입력받음");

		if (command.equals("main")) {
			action = new MainAction();
		} 
		else if (command.equals("login")) {
			action = new login();
		}
		else if (command.equals("mail")) {
			action = new mail();
		} 
		else if (command.equals("mailDetail")) {
			action = new mailDetail();
		}  
		else if (command.equals("registMailForm")) {
			action = new registMailForm();
		}  
		else if (command.equals("registMail")) {
			action = new registMail();
		}  
		else if (command.equals("requestMail")) {
			action = new requestMail();
		}  
		else if (command.equals("deleteMail")) {
			action = new deleteMail();
		}  
		else if (command.equals("board")) {
			action = new board();
		}  
		else if (command.equals("registBoardForm")) {
			action = new registBoardForm();
		}  
		else if (command.equals("registBoard")) {
			action = new registBoard();
		} 
		else if (command.equals("boardDetail")) {
			action = new boardDetail();
		} 
		else if (command.equals("deleteBoard")) {
			action = new deleteBoard();
		} 
		else if (command.equals("updateBoard")) {
			action = new updateBoard();
		}
		else if (command.equals("updateBoardDetail")) {
			action = new updateBoardDetail();
		}
		else if (command.equals("commentBoard")) {
			action = new commentBoard();
		}
		else if (command.equals("commentBoardRegist")) {
			action = new commentBoardRegist();
		}
		else if (command.equals("mailFileDown")) {
			action = new mailFileDown();
		}
		else if (command.equals("idSearchForm")) {
			action = new idSearchForm();
		}
		else if (command.equals("idSearch")) {
			action = new idSearch();
		}
		else if (command.equals("pwdSearchForm")) {
			action = new pwdSearchForm();
		}
		else if (command.equals("pwdSearch")) {
			action = new pwdSearch();
		}
		else if (command.equals("logout")) {
			action = new logout();
		}
		else if (command.equals("joinForm")) {
			action = new joinForm();
		}
		else if (command.equals("join")) {
			action = new join();
		}
		else if (command.equals("editForm")) {
			action = new editForm();
		}
		else if (command.equals("updateEdit")) {
			action = new updateEdit();
		}
		
		System.out.println(action);
		return action;
	}
}
