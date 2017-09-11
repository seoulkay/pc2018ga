package pix.gdc.com.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FestQuesListVO {
	private String question;
	private String para;
	private String ques_img;
	private int idfest_ufo_quesitons;
	private int idfest_ufo_questions;
	
	private int orderq;
	private Date ques_time;
	private List<FestOption> questionOptions = new ArrayList<FestOption>();
	
	//요밑에는 안써도 될꺼 같다(디비를 바꾸면서) 나중에 생각하자.
	int idx;
	int event_idx;
	String fest_title;
	String fest_question;
	Date fest_created_on;
	
	String title_img;
	
	public String getTitle_img() {
		return title_img;
	}
	public void setTitle_img(String title_img) {
		this.title_img = title_img;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public List<FestOption> getQuestionOptions() {
		return questionOptions;
	}
	public void setQuestionOptions(List<FestOption> questionOptions) {
		this.questionOptions = questionOptions;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getEvent_idx() {
		return event_idx;
	}
	public void setEvent_idx(int event_idx) {
		this.event_idx = event_idx;
	}
	public String getFest_title() {
		return fest_title;
	}
	public void setFest_title(String fest_title) {
		this.fest_title = fest_title;
	}
	public String getFest_question() {
		return fest_question;
	}
	public void setFest_question(String fest_question) {
		this.fest_question = fest_question;
	}
	public Date getFest_created_on() {
		return fest_created_on;
	}
	public void setFest_created_on(Date fest_created_on) {
		this.fest_created_on = fest_created_on;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getQues_img() {
		return ques_img;
	}
	public void setQues_img(String ques_img) {
		this.ques_img = ques_img;
	}
	
	public int getOrderq() {
		return orderq;
	}
	public void setOrderq(int orderq) {
		this.orderq = orderq;
	}
	public Date getQues_time() {
		return ques_time;
	}
	public void setQues_time(Date ques_time) {
		this.ques_time = ques_time;
	}
	public int getIdfest_ufo_questions() {
		return idfest_ufo_questions;
	}
	public void setIdfest_ufo_questions(int idfest_ufo_questions) {
		this.idfest_ufo_questions = idfest_ufo_questions;
	}
	public int getIdfest_ufo_quesitons() {
		return idfest_ufo_quesitons;
	}
	public void setIdfest_ufo_quesitons(int idfest_ufo_quesitons) {
		this.idfest_ufo_quesitons = idfest_ufo_quesitons;
	}
	
}
