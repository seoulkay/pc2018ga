package pix.gdc.com.vo;

import java.sql.Date;

public class FestSnsLog {
	private int idfest_sns_log;
	private String uid;
	private String first_name;
	private String last_name;
	private String email;
	private Date log_time;
	private String sns_return;
	private String sns_type;
	private String sns_ip;
	
	public int getIdfest_sns_log() {
		return idfest_sns_log;
	}
	public void setIdfest_sns_log(int idfest_sns_log) {
		this.idfest_sns_log = idfest_sns_log;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getLog_time() {
		return log_time;
	}
	public void setLog_time(Date log_time) {
		this.log_time = log_time;
	}
	public String getSns_return() {
		return sns_return;
	}
	public void setSns_return(String sns_return) {
		this.sns_return = sns_return;
	}
	public String getSns_type() {
		return sns_type;
	}
	public void setSns_type(String sns_type) {
		this.sns_type = sns_type;
	}
	public String getSns_ip() {
		return sns_ip;
	}
	public void setSns_ip(String sns_ip) {
		this.sns_ip = sns_ip;
	}
	
	

}
