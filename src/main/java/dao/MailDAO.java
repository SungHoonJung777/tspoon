package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import Criteria.Criteria;
import Criteria.PageMakerDTO;
import common.JDBConnect;

import dto.MailDTO;
import dto.MailFileDTO;
import fileupload.FileDTO;
import jakarta.servlet.ServletContext;


public class MailDAO extends JDBConnect{
	public MailDAO() {
	}

	public MailDAO(ServletContext application) {
		super(application);

	}
	
	public ArrayList<MailDTO> mailList(String memberId,Criteria cri, int total){
		ArrayList<MailDTO> maillist = new ArrayList<MailDTO>();
		String sql = "select * from milk_mail where member_Get_user_id = ? order by mail_reg_date  desc limit ?,?";
		PageMakerDTO Pdto = new PageMakerDTO(cri, total);
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberId);
			psmt.setInt(2, cri.getSkip());
			psmt.setInt(3, cri.getAmount());
			rs = psmt.executeQuery();
			while (rs.next()) {
				MailDTO list = new MailDTO();
				list.setMail_idx(rs.getInt("mail_idx"));
				list.setMail_title(rs.getString("mail_title"));
				list.setMember_name(rs.getString("member_name"));
				list.setMail_reg_date(rs.getDate("mail_reg_date"));
				list.setMember_Post_user_id(rs.getString("member_Post_user_id"));
				list.setMember_Get_user_id(rs.getString("member_Get_user_id"));
				list.setMail_check(rs.getString("mail_check"));
				maillist.add(list);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 리스트 가죠오기 실패");
		}

		return maillist;
	}
	
	public ArrayList<MailDTO> mailDetail(int idx) {
		ArrayList<MailDTO> mailList = new ArrayList<MailDTO>();
		String sql = "SELECT * FROM milk_mail WHERE mail_idx = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			while (rs.next()) {
				MailDTO mail = new MailDTO();
				mail.setMail_idx(rs.getInt("mail_idx"));
				mail.setMail_title(rs.getString("mail_title"));
				mail.setMember_name(rs.getString("member_name"));
				mail.setMail_reg_date(rs.getDate("mail_reg_date"));
				mail.setMail_content(rs.getString("mail_content"));
				mail.setMember_Post_user_id(rs.getString("member_Post_user_id"));
				mail.setMember_Get_user_id(rs.getString("member_Get_user_id"));
				mail.setMember_Post_user_name(rs.getString("member_Post_user_name"));
				mailList.add(mail);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("메일 상세 내용 가져오기 오류");
		}

		return mailList;
	}
	public int registMail(MailDTO dto) {
		String sql = "insert  into milk_mail (mail_title ,member_name ,mail_content ,member_Post_user_id ,member_Get_user_id ,member_Post_user_name) "
				+ "values( ?, ?, ?, ? ,? ,?);\r\n"
				+ "";

		int result = 0;

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMail_title());
			psmt.setString(2, dto.getMember_name());
			psmt.setString(3, dto.getMail_content());
			psmt.setString(4, dto.getMember_Post_user_id());
			psmt.setString(5, dto.getMember_Get_user_id());
			psmt.setString(6, dto.getMember_Post_user_name());
			

			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	public ArrayList<MailDTO> requestMailList(String memberId,Criteria cri, int total){
		ArrayList<MailDTO> maillist = new ArrayList<MailDTO>();
		String sql = "select * from milk_mail where member_Post_user_id = ? order by mail_reg_date  desc limit ?,?";
		PageMakerDTO Pdto = new PageMakerDTO(cri, total);
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberId);
			psmt.setInt(2, cri.getSkip());
			psmt.setInt(3, cri.getAmount());
			rs = psmt.executeQuery();
			while (rs.next()) {
				MailDTO list = new MailDTO();
				list.setMail_idx(rs.getInt("mail_idx"));
				list.setMail_title(rs.getString("mail_title"));
				list.setMember_name(rs.getString("member_name"));
				list.setMail_reg_date(rs.getDate("mail_reg_date"));
				list.setMember_Post_user_id(rs.getString("member_Post_user_id"));
				list.setMember_Get_user_id(rs.getString("member_Get_user_id"));
				list.setMail_check(rs.getString("mail_check"));
				maillist.add(list);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 리스트 가죠오기 실패");
		}

		return maillist;
	}
	public int deleteMail(int idx) {
		
		String sql ="delete from milk_mail where mail_idx = ?";

		int result = 0;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	public int getMailCount(String memberId) {
		String sql = "select count(*) as A from milk_mail where member_Get_user_id = ? ";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberId);

			rs = psmt.executeQuery();
			if (rs.next()) {
				rResult = rs.getInt("A");
				
			}
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}

		return rResult;
	}
	
	public int PostMailCount(String memberId) {
		String sql = "select count(*) as A from milk_mail where member_Post_user_id = ? ";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberId);

			rs = psmt.executeQuery();
			if (rs.next()) {
				rResult = rs.getInt("A");
				
			}
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}

		return rResult;
	}
	
	public int mailCheckUpdate(int idx) {
		String sql = "update milk_mail set mail_check = 'y' where mail_idx = ?";
		int result = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}
		return result;
	}
	
	public int getMailCheckCount(String id) {
		int result = 0;
		String sql = "select count(*) as A from milk_mail where mail_check = 'n' and member_Get_user_id = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("A");
				
			}
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int postMailCheckCount(String id) {
		int result = 0;
		String sql = "select count(*) as A from milk_mail where mail_check = 'n' and member_Post_user_id = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("A");
				
			}
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}
		
		return result;
	} 
	
	public int lastInsertId() {
		String sql = "SELECT LAST_INSERT_ID(mail_idx) FROM milk_mail ORDER BY mail_idx desc LIMIT 1\r\n"
				+ "";
		int last = 0;
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			rs.next();
			last =rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("마지막번호 조회 오류");
			e.printStackTrace();
		}
		return last;
	}
	public int registFile(MailFileDTO dto) {
		int result = 0;
		
		try {
			String sql = "insert into milk_mail_file(mail_idx,title, orgfile, savefile) Values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getMail_idx()+"");
			psmt.setString(2,dto.getTitle());
			psmt.setString(3,dto.getOrgFile());
			psmt.setString(4,dto.getSaveFile());
			result = psmt.executeUpdate();
				
		}
		catch(Exception e) {
			System.out.println("파일 등록 에러" +e.getMessage());
			e.printStackTrace();
		}
		
		return result;
	}
	
	public List<MailFileDTO> MailfileList(int idx) {
		List<MailFileDTO> fList = new Vector<MailFileDTO>();
		
		String sql = "select * from milk_mail_file where mail_idx = ? order by idx desc";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MailFileDTO dto = new MailFileDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMail_idx(rs.getInt("mail_idx"));
				dto.setTitle(rs.getString("title"));
				dto.setOrgFile(rs.getString("orgFile"));
				dto.setSaveFile(rs.getString("saveFile"));
				dto.setReg_date(rs.getString("reg_date"));
				
				fList.add(dto);
			}
		}
		catch(Exception e){
			System.out.println("파일 목록 조회시 에러 발생");
			e.printStackTrace();
		}
		return fList;
	}
	
}
