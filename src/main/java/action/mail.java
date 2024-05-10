package action;

import java.io.IOException;
import java.util.ArrayList;

import Criteria.Criteria;
import Criteria.PageMakerDTO;
import dao.MailDAO;

import dto.MailDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class mail implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/HTML/sample/html/mypage/mail.jsp";
		HttpSession session = request.getSession();

		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		request.setAttribute("userId", memberId);
		request.setAttribute("userName", memberName);
		MailDAO dao = new MailDAO();
		
		int mailCheck = dao.getMailCheckCount(memberId);
		request.setAttribute("mailCheck", mailCheck);
		request.setAttribute("memberName", memberName);
		
		// 리스트 총 갯수
		int total_count = dao.getMailCount(memberId);
		Criteria cri = new Criteria();

		String pageNumStr = request.getParameter("pageNum");
		int pageNum = 1; // 기본 페이지 번호는 1로 설정
		if (pageNumStr != null) {
			pageNum = Integer.parseInt(pageNumStr);
		}
		
		cri.setPageNum(pageNum);
		PageMakerDTO pageMake = new PageMakerDTO(cri, total_count);
		request.setAttribute("pageMaker", pageMake);

		request.setAttribute("total_count", total_count);
		ArrayList<MailDTO> mailList = dao.mailList(memberId, cri, total_count);

		request.setAttribute("mailList", mailList);
		System.out.println("MailDTO : " + mailList);
		
	
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
