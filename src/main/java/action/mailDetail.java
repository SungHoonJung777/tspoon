package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.MailDAO;

import dto.MailDTO;
import dto.MailFileDTO;
import fileupload.FileDAO;
import fileupload.FileDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class mailDetail implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int mail_idx =  Integer.parseInt(request.getParameter("mail_idx"));  
		String url = "/HTML/sample/html/mypage/message.jsp";
		
		MailDAO dao = new MailDAO();
		ArrayList<MailDTO> mail_detail = dao.mailDetail(mail_idx);
		
		int uResult = dao.mailCheckUpdate(mail_idx);
		
		/*
		 * String categoryDetail = dao.categoryDetail(lecture_idx);
		 * System.out.println(categoryDetail+"#################");
		 */
		request.setAttribute("mailDetail", mail_detail);
		/*
		 * request.setAttribute("categoryDetail", categoryDetail);
		 */		
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("userId");

		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		
		List<MailFileDTO> fileLists = dao.MailfileList(mail_idx);
		System.out.println(fileLists+"XXXXXXXXXXXXXxx");
		if(fileLists!=null){
			request.setAttribute("fileLists", fileLists);
		}
		
		
		request.setAttribute("memberId", memberId);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
