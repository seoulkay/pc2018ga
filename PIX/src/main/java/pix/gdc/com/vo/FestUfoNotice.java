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
	private String photo_file;
    private String photo_latitude;
    private String photo_longitude;
    
    //이것은 역사. 정보 등의 타입을 적어두기 위한 값이다.
    private String voType;
	
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
	public String getPhoto_file() {
		return photo_file;
	}
	public void setPhoto_file(String photo_file) {
		this.photo_file = photo_file;
	}
	public String getPhoto_latitude() {
		return photo_latitude;
	}
	public void setPhoto_latitude(String photo_latitude) {
		this.photo_latitude = photo_latitude;
	}
	public String getPhoto_longitude() {
		return photo_longitude;
	}
	public void setPhoto_longitude(String photo_longitude) {
		this.photo_longitude = photo_longitude;
	}
	public String getVoType() {
		return voType;
	}
	public void setVoType(String voType) {
		this.voType = voType;
	}
	
	

}
