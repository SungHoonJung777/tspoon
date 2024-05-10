package action;

import java.io.IOException;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class registBoard implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("iname");
		String content = request.getParameter("textzone");
		String category = request.getParameter("selectedValue");
		
		
		String categoryDetail1 = request.getParameter("ss2");
		String categoryDetail2 = request.getParameter("ss3");
		String categoryDetail3 = request.getParameter("ss4");
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		System.out.println("FFFFF"+categoryDetail2);
	
		request.setAttribute("memberName", memberName);
		BoardDTO dto = new BoardDTO();
		dto.setMember_name(memberName);
		dto.setMember_user_id(memberId);
		dto.setBoard_title(title);
		dto.setBoard_content(content);
		dto.setBoard_category(category);
		if(categoryDetail1 != "") {
			dto.setBoard_category_detail(categoryDetail1);
		} 
		if(categoryDetail2 !=  "") {
			dto.setBoard_category_detail(categoryDetail2);
		} 
		if(categoryDetail3 !=  "") {
			dto.setBoard_category_detail(categoryDetail3);
		} 
		
		BoardDAO dao = new BoardDAO();
		int rResult = dao.registBoard(dto);
		String url = "/kmocMain.do?command=board";

		if(rResult == 1){
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			request.getRequestDispatcher(url).forward(request, response);
			System.out.println("게시판 등록  실패 ");
		}
	
	}
	
}
