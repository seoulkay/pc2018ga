package pix.gdc.com.vo;

import java.util.Date;

public class QueAnswers {
	private int id;
	private int questions;
	private String que_content;
	private String imgFile;
	private String doneby;
	private String isuse;
	private Date tsmp;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQue_content() {
		return que_content;
	}
	public void setQue_content(String que_content) {
		this.que_content = que_content;
	}
	public String getImgFile() {
		return imgFile;
	}
	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
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
	public int getQuestions() {
		return questions;
	}
	public void setQuestions(int questions) {
		this.questions = questions;
	}
	public String getDoneby() {
		return doneby;
	}
	public void setDoneby(String doneby) {
		this.doneby = doneby;
	}
	
}
