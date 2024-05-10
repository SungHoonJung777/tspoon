package action;

import java.io.IOException;

import dao.MemberDAO;
import dto.MemberDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class join implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("iname");
		String id = request.getParameter("idn");
		String pwd = request.getParameter("pwd");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String jender = request.getParameter("rr");
		String phone = request.getParameter("phone");
		
		HttpSession session = request.getSession();
		
		
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		dto.setMember_name(name);
		dto.setMember_user_id(id);
		dto.setMember_pwd(pwd);
		dto.setMember_jender(jender);
		dto.setMember_phone(phone);
		
		
		if(Integer.parseInt(month) < 10 ) {
			month = "0".concat(month);
		}
		
		if(Integer.parseInt(day) < 10 ) {
			day = "0".concat(day);
		}
		String birth = year.concat(month);
		String realBirth = birth.concat(day);

		dto.setMember_birth(realBirth);
		
		
		int rResult = dao.join(dto);
		
		String url = "/kmocMain.do?command=main";

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
