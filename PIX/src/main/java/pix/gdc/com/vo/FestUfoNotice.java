package pix.gdc.com.vo;

import java.sql.Date;

public class FestUfoNotice {
	private String idfest_ufo_notice;
	private String para;
	private String createdBy;
	private String title;
	private String content;
	private Date date;
	private String is_use;
	
	public String getIdfest_ufo_notice() {
		return idfest_ufo_notice;
	}
	public void setIdfest_ufo_notice(String idfest_ufo_notice) {
		this.idfest_ufo_notice = idfest_ufo_notice;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getIs_use() {
		return is_use;
	}
	public void setIs_use(String is_use) {
		this.is_use = is_use;
	}
	
	

}
