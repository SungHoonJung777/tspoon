package action;

import java.io.IOException;
import java.util.ArrayList;

import Criteria.Criteria;
import Criteria.PageMakerDTO;
import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class board implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/HTML/sample/html/mypage/board.jsp";
		
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		BoardDAO dao = new BoardDAO();
	
		
		// 리스트 총 갯수
		int total_count = dao.boardCount();
		Criteria cri = new Criteria();

		String pageNumStr = request.getParameter("pageNum");
		int pageNum = 1; // 기본 페이지 번호는 1로 설정
		if (pageNumStr != null) {
			pageNum = Integer.parseInt(pageNumStr);
		}

		cri.setPageNum(pageNum);
		PageMakerDTO pageMake = new PageMakerDTO(cri, total_count);
		request.setAttribute("pageMaker", pageMake);
		
		
		ArrayList<BoardDTO> boardList = dao.boardList(cri,total_count);
		System.out.println(boardList);
		request.setAttribute("boardList", boardList);
		
		
		String category[] = new String[boardList.size()];
		
		
		for(int i = 0; i <boardList.size(); i++) {
			category[i] = dao.boardCategory(boardList.get(i).getBoard_idx());
		}
		
		request.setAttribute("category", category);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
