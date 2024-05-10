package dto;

import java.sql.Date;

public class MemberDTO {
	private int member_idx;
	private String member_name;
	private String member_user_id;
	private String member_pwd;
	private String member_phone;

	private String member_category;
	private String member_birth;
	private String member_jender;
	private String member_grade;
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_user_id() {
		return member_user_id;
	}
	public void setMember_user_id(String member_user_id) {
		this.member_user_id = member_user_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_category() {
		return member_category;
	}
	public void setMember_category(String member_category) {
		this.member_category = member_category;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_jender() {
		return member_jender;
	}
	public void setMember_jender(String member_jender) {
		this.member_jender = member_jender;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	@Override
	public String toString() {
		return "MemberDTO [member_idx=" + member_idx + ", member_name=" + member_name + ", member_user_id="
				+ member_user_id + ", member_pwd=" + member_pwd + ", member_phone=" + member_phone
				+ ", member_category=" + member_category + ", member_birth=" + member_birth + ", member_jender="
				+ member_jender + ", member_grade=" + member_grade + "]";
	}
	public MemberDTO(int member_idx, String member_name, String member_user_id, String member_pwd, String member_phone,
			String member_category, String member_birth, String member_jender, String member_grade) {
		super();
		this.member_idx = member_idx;
		this.member_name = member_name;
		this.member_user_id = member_user_id;
		this.member_pwd = member_pwd;
		this.member_phone = member_phone;
		this.member_category = member_category;
		this.member_birth = member_birth;
		this.member_jender = member_jender;
		this.member_grade = member_grade;
	}
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
}
