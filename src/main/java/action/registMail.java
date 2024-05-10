package action;

import java.io.IOException;
import java.util.ArrayList;

import dao.MailDAO;
import dao.MemberDAO;
import dto.MailDTO;
import fileupload.FileUtil;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;
import jakarta.servlet.annotation.MultipartConfig;

public class registMail implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/kmocMain.do?command=mail";
	
		
		
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");

		request.setAttribute("memberName", memberName);
		String getName = request.getParameter("getName");
		String title = request.getParameter("iname");
		String content = request.getParameter("textzone");
		MailDTO dto = new MailDTO();
		dto.setMember_name(getName);
		dto.setMail_title(title);
		dto.setMail_content(content);
		dto.setMember_Post_user_id(memberId);
		dto.setMember_Post_user_name(memberName);
		
		MemberDAO memberDao = new MemberDAO();
		
		String getMemberId = memberDao.getMemberId(getName);
		System.out.println("TEST1111"+getMemberId);
		dto.setMember_Get_user_id(getMemberId);
		
		
		MailDAO dao = new MailDAO();
		FileUtil file = new FileUtil();
		int idx = 0;
		String directory =  "C:\\java4\\Uploads";
		if(request.getPart("file") != null) {
			ArrayList<String> arrFileName = FileUtil.uploadFile2(request, directory);
			idx = dao.lastInsertId() + 1;
			
			for(String orgFileName:arrFileName) {
				
				FileUtil.registFile(request, title , orgFileName , orgFileName,idx);
				}
			
		} else {
			System.out.print("파일이 없습니다.");

		}
		
		
		
		
		
		int rResult  = dao.registMail(dto);
	
		/*
		 * request.setAttribute("mailList", mailList);
		 * System.out.println("MailDTO : "+mailList);
		 */
		if(rResult == 1){
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			request.getRequestDispatcher(url).forward(request, response);
			System.out.println("쪽지 전송 실패 ");
		}
	
		
		
	}
	
	
}
