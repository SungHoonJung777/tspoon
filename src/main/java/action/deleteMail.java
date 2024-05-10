package action;

import java.io.IOException;

import dao.MailDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class deleteMail implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedValues = request.getParameter("selectedValues");
		HttpSession session = request.getSession();
		
		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");
		
		request.setAttribute("memberName", memberName);
		String	idx[] = selectedValues.split(",");
		
		for(int i=0; i<idx.length; i++) {
			MailDAO dao = new MailDAO();
			int rResult = dao.deleteMail(Integer.parseInt(idx[i]));
		}
		String url = "/kmocMain.do?command=mail";
		request.getRequestDispatcher(url).forward(request, response);
		
		
	}
	
}
