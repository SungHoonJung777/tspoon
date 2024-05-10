package action;

import java.io.IOException;
import java.util.List;

import dao.MemberDAO;
import dto.MemberDTO;
import dto.MemberFileDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class login implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/kmocMain.do?command=main";
		
		HttpSession session = request.getSession(true);
		String id = request.getParameter("idn");
		String pwd = request.getParameter("pwd");
		
		System.out.println("id : "+id+" ,pwd:" + pwd);
		MemberDAO dao = new MemberDAO();
		MemberDTO dto =	dao.getMemberInfo(id,pwd);
	
		String memberName = (String) session.getAttribute("userName");
		

			
	
		
		request.setAttribute("memberName", memberName);
		if(dto.getMember_user_id() != null){
			session.setAttribute("userId",dto.getMember_user_id());
			session.setAttribute("userName",dto.getMember_name());
			session.setAttribute("userIdx",dto.getMember_idx());
			
			session.setAttribute("member_category", dto.getMember_category());

			List<MemberFileDTO> fileLists = dao.MemberfileList(dto.getMember_idx());
			if (fileLists != null) {
				session.setAttribute("fileLists", fileLists);
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
		
		
	}
	
}
