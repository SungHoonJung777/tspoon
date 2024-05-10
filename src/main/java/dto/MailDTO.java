package dto;

import java.util.Date;

public class MailDTO {

	private int mail_idx;
	private String mail_title;
	private String member_name;
	private Date mail_reg_date;
	private Date mail_reg_updatedate;
	private String mail_content;
	private String member_Post_user_id;
	private String member_Get_user_id;
	private String member_Post_user_name;
	private String mail_check;
	
	
	public int getMail_idx() {
		return mail_idx;
	}

	public void setMail_idx(int mail_idx) {
		this.mail_idx = mail_idx;
	}

	public String getMail_title() {
		return mail_title;
	}

	public void setMail_title(String mail_title) {
		this.mail_title = mail_title;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public Date getMail_reg_date() {
		return mail_reg_date;
	}

	public void setMail_reg_date(Date mail_reg_date) {
		this.mail_reg_date = mail_reg_date;
	}

	public Date getMail_reg_updatedate() {
		return mail_reg_updatedate;
	}

	public void setMail_reg_updatedate(Date mail_reg_updatedate) {
		this.mail_reg_updatedate = mail_reg_updatedate;
	}

	public String getMail_content() {
		return mail_content;
	}

	public void setMail_content(String mail_content) {
		this.mail_content = mail_content;
	}

	public String getMember_Post_user_id() {
		return member_Post_user_id;
	}

	public void setMember_Post_user_id(String member_Post_user_id) {
		this.member_Post_user_id = member_Post_user_id;
	}

	public String getMember_Get_user_id() {
		return member_Get_user_id;
	}

	public void setMember_Get_user_id(String member_Get_user_id) {
		this.member_Get_user_id = member_Get_user_id;
	}

	public String getMember_Post_user_name() {
		return member_Post_user_name;
	}

	public void setMember_Post_user_name(String member_Post_user_name) {
		this.member_Post_user_name = member_Post_user_name;
	}

	

	public String getMail_check() {
		return mail_check;
	}

	public void setMail_check(String mail_check) {
		this.mail_check = mail_check;
	}

	@Override
	public String toString() {
		return "MailDTO [mail_idx=" + mail_idx + ", mail_title=" + mail_title + ", member_name=" + member_name
				+ ", mail_reg_date=" + mail_reg_date + ", mail_reg_updatedate=" + mail_reg_updatedate
				+ ", mail_content=" + mail_content + ", member_Post_user_id=" + member_Post_user_id
				+ ", member_Get_user_id=" + member_Get_user_id + ", member_Post_user_name=" + member_Post_user_name
				+ ", mail_check=" + mail_check + "]";
	}

	public MailDTO(int mail_idx, String mail_title, String member_name, Date mail_reg_date, Date mail_reg_updatedate,
			String mail_content, String member_Post_user_id, String member_Get_user_id, String member_Post_user_name,
			String mail_check) {
		super();
		this.mail_idx = mail_idx;
		this.mail_title = mail_title;
		this.member_name = member_name;
		this.mail_reg_date = mail_reg_date;
		this.mail_reg_updatedate = mail_reg_updatedate;
		this.mail_content = mail_content;
		this.member_Post_user_id = member_Post_user_id;
		this.member_Get_user_id = member_Get_user_id;
		this.member_Post_user_name = member_Post_user_name;
		this.mail_check = mail_check;
	}
	
	public MailDTO() {
		// TODO Auto-generated constructor stub
	}
}
