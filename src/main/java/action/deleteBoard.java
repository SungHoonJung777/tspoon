package action;

import java.io.IOException;

import dao.BoardDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class deleteBoard implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("board_idx"));
		String url = "/kmocMain.do?command=board";

		BoardDAO dao = new BoardDAO();
		int dResult = dao.boardDelete(idx);
		
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		if(dResult == 1){
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			request.getRequestDispatcher(url).forward(request, response);
			System.out.println("게시판 삭제  실패 ");
		}
		
		
	}
	
}
