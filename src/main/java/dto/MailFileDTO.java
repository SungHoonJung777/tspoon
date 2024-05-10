package dto;

public class MailFileDTO {
	private int idx;
	private int mail_idx;
	private String title;
	private String orgFile;
	private String saveFile;
	private String reg_date;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMail_idx() {
		return mail_idx;
	}
	public void setMail_idx(int mail_idx) {
		this.mail_idx = mail_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOrgFile() {
		return orgFile;
	}
	public void setOrgFile(String orgFile) {
		this.orgFile = orgFile;
	}
	public String getSaveFile() {
		return saveFile;
	}
	public void setSaveFile(String saveFile) {
		this.saveFile = saveFile;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public MailFileDTO(int idx, int mail_idx, String title, String orgFile, String saveFile, String reg_date) {
		super();
		this.idx = idx;
		this.mail_idx = mail_idx;
		this.title = title;
		this.orgFile = orgFile;
		this.saveFile = saveFile;
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "MailFileDTO [idx=" + idx + ", mail_idx=" + mail_idx + ", title=" + title + ", orgFile=" + orgFile
				+ ", saveFile=" + saveFile + ", reg_date=" + reg_date + "]";
	}
	
	
	
	public MailFileDTO() {
		// TODO Auto-generated constructor stub
	}
}
