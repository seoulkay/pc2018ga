package pix.gdc.com.vo;

import java.util.Date;

public class PixArticle {
	private int pix_idx;
	private String created_by;
	private Date created_date;
	private String pix_image;
	private String pix_title;
	private String pix_content;
	private String pix_tag;
	private char is_use;
	private Date modified_date;
	private String latitude;
	private String longitude;
	//좋아요는 안누른것이 기본값
	private boolean isLike = false;
	//좋아요 넘버.
	private int likeNum;
		
	public int getPix_idx() {
		return pix_idx;
	}
	public void setPix_idx(int pix_idx) {
		this.pix_idx = pix_idx;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public String getPix_image() {
		return pix_image;
	}
	public void setPix_image(String pix_image) {
		this.pix_image = pix_image;
	}
	public String getPix_title() {
		return pix_title;
	}
	public void setPix_title(String pix_title) {
		this.pix_title = pix_title;
	}
	public String getPix_content() {
		return pix_content;
	}
	public void setPix_content(String pix_content) {
		this.pix_content = pix_content;
	}
	public String getPix_tag() {
		return pix_tag;
	}
	public void setPix_tag(String pix_tag) {
		this.pix_tag = pix_tag;
	}
	public char getIs_use() {
		return is_use;
	}
	public void setIs_use(char is_use) {
		this.is_use = is_use;
	}
	public Date getModified_date() {
		return modified_date;
	}
	public void setModified_date(Date modified_date) {
		this.modified_date = modified_date;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public boolean isLike() {
		return isLike;
	}
	public void setLike(boolean isLike) {
		this.isLike = isLike;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	
	
}
