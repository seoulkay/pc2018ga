package pix.gdc.com.vo;

import java.util.Date;

import com.mysql.jdbc.Blob;

public class UfoGoRecord {
	private int id;
	private String first_name;
	private String last_name;
	private Date ufo_date;
	private String ufo_image;
	private String para;
	private int ufo_go_num;
	private String user_uid;
	private String email;
	private String ufo_go_type;
	private String image_lat;
	private String image_alt;
	private String ufo_gid;
	private String go_content;
	private boolean submit = false;
	private Blob image_blob;
	private String login_type;
	
	//위너 테이블을 위한 필드
	private int idUfoWinnerRecord;
	private Date winner_time;
	private int winner_like;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public Date getUfo_date() {
		return ufo_date;
	}
	public void setUfo_date(Date ufo_date) {
		this.ufo_date = ufo_date;
	}
	public String getUfo_image() {
		return ufo_image;
	}
	public void setUfo_image(String ufo_image) {
		this.ufo_image = ufo_image;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public int getUfo_go_num() {
		return ufo_go_num;
	}
	public void setUfo_go_num(int ufo_go_num) {
		this.ufo_go_num = ufo_go_num;
	}
	public String getUser_uid() {
		return user_uid;
	}
	public void setUser_uid(String user_uid) {
		this.user_uid = user_uid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUfo_go_type() {
		return ufo_go_type;
	}
	public void setUfo_go_type(String ufo_go_type) {
		this.ufo_go_type = ufo_go_type;
	}
	public String getImage_lat() {
		return image_lat;
	}
	public void setImage_lat(String image_lat) {
		this.image_lat = image_lat;
	}
	public String getImage_alt() {
		return image_alt;
	}
	public void setImage_alt(String image_alt) {
		this.image_alt = image_alt;
	}
	public String getUfo_gid() {
		return ufo_gid;
	}
	public void setUfo_gid(String ufo_gid) {
		this.ufo_gid = ufo_gid;
	}
	public String getGo_content() {
		return go_content;
	}
	public void setGo_content(String go_content) {
		this.go_content = go_content;
	}
	public boolean isSubmit() {
		return submit;
	}
	public void setSubmit(boolean submit) {
		this.submit = submit;
	}
	public Blob getImage_blob() {
		return image_blob;
	}
	public void setImage_blob(Blob image_blob) {
		this.image_blob = image_blob;
	}
	public int getIdUfoWinnerRecord() {
		return idUfoWinnerRecord;
	}
	public void setIdUfoWinnerRecord(int idUfoWinnerRecord) {
		this.idUfoWinnerRecord = idUfoWinnerRecord;
	}
	public Date getWinner_time() {
		return winner_time;
	}
	public void setWinner_time(Date winner_time) {
		this.winner_time = winner_time;
	}
	public int getWinner_like() {
		return winner_like;
	}
	public void setWinner_like(int winner_like) {
		this.winner_like = winner_like;
	}
	public String getLogin_type() {
		return login_type;
	}
	public void setLogin_type(String login_type) {
		this.login_type = login_type;
	}
	

}
