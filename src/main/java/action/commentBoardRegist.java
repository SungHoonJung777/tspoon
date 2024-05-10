package action;

import java.io.IOException;
import java.util.ArrayList;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class commentBoardRegist implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("board_idx"));
		String comment = request.getParameter("comment");
		
		System.out.println(idx+"AAAAAAAAAA"+ comment);
		String url = "/kmocMain.do?command=board";
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);

		BoardDAO dao = new BoardDAO();
		int uResult = dao.boardUpdateComment(idx,comment);
	
		System.out.println("답변 등록 성공 ");
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
			
	}
	
}
