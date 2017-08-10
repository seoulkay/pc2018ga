package pix.gdc.com.vo;

import java.util.Date;

public class QueQuestions {
	private int id;
	private String event;
	private String question;
	private Date tsmp;
	private String doneby;
	private String isuse;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Date getTsmp() {
		return tsmp;
	}
	public void setTsmp(Date tsmp) {
		this.tsmp = tsmp;
	}
	public String getIsuse() {
		return isuse;
	}
	public void setIsuse(String isuse) {
		this.isuse = isuse;
	}
	public String getDoneby() {
		return doneby;
	}
	public void setDoneby(String doneby) {
		this.doneby = doneby;
	}

	
}
