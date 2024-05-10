package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.BoardDAO;
import dao.MemberDAO;
import dto.BoardDTO;
import dto.MailFileDTO;
import dto.MemberDTO;
import dto.MemberFileDTO;
import fileupload.FileUtil;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mainController.Action;

public class updateEdit implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		int idx = Integer.parseInt(request.getParameter("idx"));

		System.out.println(idx + "DDDDDDDDDDDDDDDDDDDDDDDDDDDDDdd");
		HttpSession session = request.getSession();

		String memberId = (String) session.getAttribute("userId");
		String memberName = (String) session.getAttribute("userName");

		request.setAttribute("memberName", memberName);
		String url = "/kmocMain.do?command=editForm";

		MemberDAO dao = new MemberDAO();
		FileUtil file = new FileUtil();
		
		String directory = "C:\\work\\JSP\\milkT\\src\\main\\webapp\\img";
		if (request.getPart("file") != null) {
			ArrayList<String> arrFileName = FileUtil.uploadFile2(request, directory);

			for (String orgFileName : arrFileName) {

				FileUtil.MemberRegistFile(request, "user", orgFileName, orgFileName, idx);
			}

		} else {
			System.out.print("파일이 없습니다.");

		}

		List<MemberFileDTO> fileLists = dao.MemberfileList(idx);
		System.out.println(fileLists + "XXXXXXXXXXXXXxx");
		if (fileLists != null) {
			request.setAttribute("fileLists", fileLists);
			session.setAttribute("fileLists", fileLists);
		}

		int uResult = dao.memberUpdate(pwd, phone, memberId);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
