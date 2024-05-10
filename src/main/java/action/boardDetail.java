package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.BoardDAO;
import dto.BoardDTO;
import fileupload.FileDAO;
import fileupload.FileDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class boardDetail implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int idx = Integer.parseInt(request.getParameter("board_idx"));
			
			String url = "/HTML/sample/html/mypage/boardDetail.jsp";
			HttpSession session = request.getSession();
			
			String memberId = (String) session.getAttribute("userId");
			String memberName = (String) session.getAttribute("userName");
			
			request.setAttribute("memberName", memberName);
			BoardDAO dao = new BoardDAO();
		
			ArrayList<BoardDTO> boardDetailList = dao.boardDetailList(idx);
			System.out.println(boardDetailList);
			request.setAttribute("boardList", boardDetailList);
			
			String category = dao.boardCategory(idx);
			String categoryDetail = dao.boardCategoryDetail(idx);
			
			request.setAttribute("category", category);
			request.setAttribute("categoryDetail", categoryDetail);
			
			
			
			
			/*
			 * request.setAttribute("category", category);
			 * 
			 */
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		
	}

}
