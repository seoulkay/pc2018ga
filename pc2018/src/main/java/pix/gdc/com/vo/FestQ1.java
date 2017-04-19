package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQ1 {
	int idx;
	int event_idx;
	String fest_q1_title;
	String fest_q1_question;
	Date fest_q1_created_on;
	
	//객관식 선택지.
	List<FestOption> optionlist;
	
	
	public List<FestOption> getOptionlist() {
		return optionlist;
	}
	public void setOptionlist(List<FestOption> optionlist) {
		this.optionlist = optionlist;
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
	public String getFest_q1_title() {
		return fest_q1_title;
	}
	public void setFest_q1_title(String fest_q1_title) {
		this.fest_q1_title = fest_q1_title;
	}
	public String getFest_q1_question() {
		return fest_q1_question;
	}
	public void setFest_q1_question(String fest_q1_question) {
		this.fest_q1_question = fest_q1_question;
	}
	public Date getFest_q1_created_on() {
		return fest_q1_created_on;
	}
	public void setFest_q1_created_on(Date fest_q1_created_on) {
		this.fest_q1_created_on = fest_q1_created_on;
	}
	
}
