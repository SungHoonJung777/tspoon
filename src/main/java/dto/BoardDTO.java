package dto;

import java.util.Date;

public class BoardDTO {
	private int board_idx;
	private String board_title;
	private String member_name;
	private Date board_reg_date;
	private Date board_reg_updatedate;
	private String board_content;
	private String member_user_id;
	private String board_comment;
	private String board_category;
	private String board_category_detail;
	private String board_comment_content;
	
	private Date board_comment_date;

	public int getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public Date getBoard_reg_date() {
		return board_reg_date;
	}

	public void setBoard_reg_date(Date board_reg_date) {
		this.board_reg_date = board_reg_date;
	}

	public Date getBoard_reg_updatedate() {
		return board_reg_updatedate;
	}

	public void setBoard_reg_updatedate(Date board_reg_updatedate) {
		this.board_reg_updatedate = board_reg_updatedate;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getMember_user_id() {
		return member_user_id;
	}

	public void setMember_user_id(String member_user_id) {
		this.member_user_id = member_user_id;
	}

	public String getBoard_comment() {
		return board_comment;
	}

	public void setBoard_comment(String board_comment) {
		this.board_comment = board_comment;
	}

	public String getBoard_category() {
		return board_category;
	}

	public void setBoard_category(String board_category) {
		this.board_category = board_category;
	}

	public String getBoard_category_detail() {
		return board_category_detail;
	}

	public void setBoard_category_detail(String board_category_detail) {
		this.board_category_detail = board_category_detail;
	}

	public String getBoard_comment_content() {
		return board_comment_content;
	}

	public void setBoard_comment_content(String board_comment_content) {
		this.board_comment_content = board_comment_content;
	}

	public Date getBoard_comment_date() {
		return board_comment_date;
	}

	public void setBoard_comment_date(Date board_comment_date) {
		this.board_comment_date = board_comment_date;
	}

	@Override
	public String toString() {
		return "BoardDTO [board_idx=" + board_idx + ", board_title=" + board_title + ", member_name=" + member_name
				+ ", board_reg_date=" + board_reg_date + ", board_reg_updatedate=" + board_reg_updatedate
				+ ", board_content=" + board_content + ", member_user_id=" + member_user_id + ", board_comment="
				+ board_comment + ", board_category=" + board_category + ", board_category_detail="
				+ board_category_detail + ", board_comment_content=" + board_comment_content + ", board_comment_date="
				+ board_comment_date + "]";
	}

	public BoardDTO(int board_idx, String board_title, String member_name, Date board_reg_date,
			Date board_reg_updatedate, String board_content, String member_user_id, String board_comment,
			String board_category, String board_category_detail, String board_comment_content,
			Date board_comment_date) {
		super();
		this.board_idx = board_idx;
		this.board_title = board_title;
		this.member_name = member_name;
		this.board_reg_date = board_reg_date;
		this.board_reg_updatedate = board_reg_updatedate;
		this.board_content = board_content;
		this.member_user_id = member_user_id;
		this.board_comment = board_comment;
		this.board_category = board_category;
		this.board_category_detail = board_category_detail;
		this.board_comment_content = board_comment_content;
		this.board_comment_date = board_comment_date;
	}
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
}
