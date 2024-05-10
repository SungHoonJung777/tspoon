
package dao;

import java.util.ArrayList;

import common.JDBConnect;
import jakarta.servlet.ServletContext;


public class MemberSearchDAO extends JDBConnect {
	public MemberSearchDAO() {
	}

	public MemberSearchDAO(ServletContext application) {
		super(application);

	}
	
	public int idSearch(String name, String tel) {
		String sql = "select count(*) as A from milk_member where member_name = ?  and member_phone = ? \r\n"
				+ "";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, tel);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int count = rs.getInt("A");
				if (count > 0) {
					rResult = 1;
				}
			}
		} catch (Exception e) {
			System.out.println("일치하는 ID 없음");
			e.printStackTrace();
		}
		return rResult;
	}
	
	public String idSearchFind(String name, String tel){
		String sql = "select member_user_id from milk_member where member_name = ? and member_phone =  ? \r\n"
				+ " ";
		String rResult = "";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, tel);
			rs = psmt.executeQuery();
			if (rs.next()) {
				rResult = rs.getString("member_user_id");
				
			}
		} catch (Exception e) {
			System.out.println("일치하는 ID 없음");
			e.printStackTrace();
		}
		
		return rResult;
	}
	public int pwdSearch(String phone, String name, String memberId) {
		String sql = "select count(*) as A from milk_member where member_phone = ? and member_name =  ? and member_user_id = ? \r\n"
				+ " ";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, phone);
			psmt.setString(2, name);
			psmt.setString(3, memberId);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int count = rs.getInt("A");
				if (count > 0) {
					rResult = 1;
				}
			}
		} catch (Exception e) {
			System.out.println("일치하는 PWD 없음");
			e.printStackTrace();
		}
		return rResult;
	}     
	
	public int pwdRandomChange(String phone, String name, String memberId) {
		String sql = "update milk_member set member_pwd = concat('milkT',floor(rand()*50000) +1 ) where member_phone = ? and member_name =  ?  AND member_user_id =?"
				+ "";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, phone);
			psmt.setString(2, name);
			psmt.setString(3, memberId);
			rResult = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("일치하는 PWD 없음");
			e.printStackTrace();
		}
		return rResult;
	}  
	public String pwdChangeValue(String phone, String email, String memberId) {
		String sql = "select member_pwd from milk_member where member_phone = ? and member_name =  ? AND member_user_id =?\r\n"
				+ " ";
		String rResult = "";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, phone);
			psmt.setString(2, email);
			psmt.setString(3, memberId);
			rs = psmt.executeQuery();
			if (rs.next()) {
				rResult = rs.getString("member_pwd");
				
			}
		} catch (Exception e) {
			System.out.println("일치하는 PWD 없음");
			e.printStackTrace();
		}
		
		
		
		return rResult;
	}
}
