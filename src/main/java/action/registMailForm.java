package action;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class registMailForm implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/HTML/sample/html/mypage/registForm.jsp";
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("userId");

		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
		
	}
	
}
