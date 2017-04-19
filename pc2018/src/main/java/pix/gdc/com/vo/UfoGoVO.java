package pix.gdc.com.vo;

import java.util.Date;

public class UfoGoVO {
	private int id_ufo_go;
	private String go_alt;
	private String go_lat;
	private String go_para;
	private String go_content;
	private Date ufo_go_date;
	private String ufo_go_type;
	private String ufo_gid;
	private String go_desc;
	private String go_image;
	private String go_icon_img;
	
	private boolean submit = false;
	
	public int getId_ufo_go() {
		return id_ufo_go;
	}
	public void setId_ufo_go(int id_ufo_go) {
		this.id_ufo_go = id_ufo_go;
	}
	public String getGo_alt() {
		return go_alt;
	}
	public void setGo_alt(String go_alt) {
		this.go_alt = go_alt;
	}
	public String getGo_lat() {
		return go_lat;
	}
	public void setGo_lat(String go_lat) {
		this.go_lat = go_lat;
	}
	public String getGo_para() {
		return go_para;
	}
	public void setGo_para(String go_para) {
		this.go_para = go_para;
	}
	public String getGo_content() {
		return go_content;
	}
	public void setGo_content(String go_content) {
		this.go_content = go_content;
	}
	public Date getUfo_go_date() {
		return ufo_go_date;
	}
	public void setUfo_go_date(Date ufo_go_date) {
		this.ufo_go_date = ufo_go_date;
	}
	public String getUfo_go_type() {
		return ufo_go_type;
	}
	public void setUfo_go_type(String ufo_go_type) {
		this.ufo_go_type = ufo_go_type;
	}
	public String getUfo_gid() {
		return ufo_gid;
	}
	public void setUfo_gid(String ufo_gid) {
		this.ufo_gid = ufo_gid;
	}
	public String getGo_desc() {
		return go_desc;
	}
	public void setGo_desc(String go_desc) {
		this.go_desc = go_desc;
	}
	public String getGo_image() {
		return go_image;
	}
	public void setGo_image(String go_image) {
		this.go_image = go_image;
	}
	public boolean isSubmit() {
		return submit;
	}
	public void setSubmit(boolean submit) {
		this.submit = submit;
	}
	public String getGo_icon_img() {
		return go_icon_img;
	}
	public void setGo_icon_img(String go_icon_img) {
		this.go_icon_img = go_icon_img;
	}
	
	
}
