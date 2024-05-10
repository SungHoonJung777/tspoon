package action;

import java.io.IOException;
import java.util.ArrayList;

import dao.MemberSearchDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;


public class idSearch implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("iname");
		String tel = request.getParameter("tel");
		HttpSession session = request.getSession();
		
		
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		MemberSearchDAO dao = new MemberSearchDAO();
		int sResult = dao.idSearch(name,tel);
		
		if(sResult == 1) {
			String memberId = dao.idSearchFind(name,tel);
			request.setAttribute("memberId", memberId);
		} else {
			System.out.println("일치하는 회원정보 없음");
			request.setAttribute("memberId", "nullId");
		}
		
		String url = "/HTML/sample/html/member/idFindForm.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
