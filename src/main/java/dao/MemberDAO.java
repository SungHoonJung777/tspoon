package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import Criteria.Criteria;
import Criteria.PageMakerDTO;
import common.JDBConnect;
import dto.BoardDTO;
import dto.MailFileDTO;
import dto.MemberDTO;
import dto.MemberFileDTO;
import jakarta.servlet.ServletContext;

public class MemberDAO extends JDBConnect {
	public MemberDAO() {
	}

	public MemberDAO(ServletContext application) {
		super(application);

	}

	public MemberDTO getMemberInfo(String id, String pwd) {
		MemberDTO dto = new MemberDTO();
		String sql = "SELECT * FROM milk_member WHERE member_user_id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("member_pwd").equals(pwd)) {
					dto.setMember_idx(rs.getInt("member_idx"));
					dto.setMember_user_id(rs.getString("Member_user_id"));
					dto.setMember_name(rs.getString("Member_name"));
					dto.setMember_category(rs.getString("member_category"));
					dto.setMember_phone(rs.getString("member_phone"));
					
					dto.setMember_jender(rs.getString("member_jender"));
					dto.setMember_birth(rs.getString("member_birth"));
					System.out.println("로그인완료");
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public String getMemberId(String getName) {
		String result = "";
		String sql = "select member_user_id  from milk_member where member_name = ?";
		System.out.println("getName" + getName);
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, getName);
			rs = psmt.executeQuery();

			if (rs.next()) {
				result = rs.getString("member_user_id");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}  
	
	
	
	public int join(MemberDTO dto){
		String name = dto.getMember_name();
		String id = dto.getMember_user_id();
		String pwd = dto.getMember_pwd();
		String birth = dto.getMember_birth();
		String tel = dto.getMember_phone();
		
		String jender = dto.getMember_jender();
	
		int result = 0;
		
		String sql = "\r\n"
				+ "INSERT INTO milk_member(member_name, member_user_id, member_pwd, member_phone,\r\n"
				+ " member_birth, member_jender ,member_join_date)\r\n"
				+ "VALUES( ?,?,?,?,?,?,NOW())";
		
		try {
			if(id.trim() !="" && name.trim()!= "" && pwd.trim()!=""&&
			birth.trim() !="" && tel.trim()!= "" && jender.trim()!=""
		) {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, id);
			psmt.setString(3, pwd);
			psmt.setString(4, tel);
			psmt.setString(5, birth);
			psmt.setString(6, jender);
	
			
			result = psmt.executeUpdate();
			
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	} 
	public ArrayList<MemberDTO> memberList(String memberId){
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		String sql = "select * from milk_member where member_user_id = ? ";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberId);

			rs = psmt.executeQuery();
			while (rs.next()) {
				MemberDTO list = new MemberDTO();
				list.setMember_idx(rs.getInt("member_idx"));
				list.setMember_name(rs.getString("member_name"));
				list.setMember_user_id(rs.getString("member_user_id"));
				list.setMember_pwd(rs.getString("member_pwd"));
				list.setMember_phone(rs.getString("member_phone"));
				list.setMember_jender(rs.getString("member_jender"));
				list.setMember_birth(rs.getString("member_birth"));
			
				memberList.add(list);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("멤버 정보 리스트 가죠오기 실패");
		}

		return memberList;
	}  
	
	public int memberUpdate(String pwd, String phone, String memberId) {
		StringBuilder sb = new StringBuilder();

		int result = 0;

		System.out.println(pwd + "XXXX" + phone + "XXXX" + memberId);

		sb.append("\r\n" + "update milk_member set member_pwd = ? , member_phone = ? where member_user_id = ?");

		try {
			psmt = conn.prepareStatement(sb.toString());

			psmt.setString(1, pwd);
			psmt.setString(2, phone);
			psmt.setString(3, memberId);
			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	} 
	
	
	public int lastInsertId() {
		String sql = "SELECT LAST_INSERT_ID(member_idx) FROM milk_member ORDER BY member_idx desc LIMIT 1 1\r\n"
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
	
	public int registFile(MemberFileDTO dto) {
		int result = 0;
		
		try {
			String sql = "insert into milk_member_file(member_idx,title, orgfile, savefile) Values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getMember_idx()+"");
			psmt.setString(2,dto.getTitle());
			psmt.setString(3,dto.getOrgFile());
			psmt.setString(4,dto.getSaveFile());
			result = psmt.executeUpdate();
				
		}
		catch(Exception e) {
			System.out.println("멤버 파일 등록 에러" +e.getMessage());
			e.printStackTrace();
		}
		
		return result;
	}
	public List<MemberFileDTO> MemberfileList(int idx) {
		List<MemberFileDTO> fList = new Vector<MemberFileDTO>();
		
		String sql = "select * from milk_member_file where member_idx = ? order by idx desc";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MemberFileDTO dto = new MemberFileDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMember_idx(rs.getInt("member_idx"));
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
	
	public int fileCount(int  idx) {
		String sql = "select count(*) as A from milk_member_file where member_idx = ?";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);

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
}
