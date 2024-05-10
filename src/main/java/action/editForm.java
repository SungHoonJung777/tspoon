package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.MemberDAO;
import dto.BoardDTO;
import dto.MemberDTO;
import dto.MemberFileDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class editForm implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/HTML/sample/html/member/editForm.jsp";
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		int userIdx = (Integer) session.getAttribute("userIdx");
		request.setAttribute("memberName", memberName);
		
		
		ArrayList<MemberDTO> memberList = dao.memberList(memberId);
		
		System.out.println(memberList);
		request.setAttribute("memberList", memberList);
		
		String birth = memberList.get(0).getMember_birth();
		String year = birth.substring(0, 4);
		String month = birth.substring(4, 6);
		String day = birth.substring(6);
		
		System.out.println("year : " + year+"month : " + month+ " day: "+day);
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("day", day);

		List<MemberFileDTO> fileLists = dao.MemberfileList(userIdx);
		System.out.println(fileLists + "XXXXXXXXXXXXXxx");
		if (fileLists != null) {
			request.setAttribute("fileLists", fileLists);
			session.setAttribute("fileLists", fileLists);
		}
		
		
		int count = dao.fileCount(userIdx);
		if(count >=1) {
			request.setAttribute("count", "countON");
		} else {
			request.setAttribute("count", "countOFF");
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	

}
