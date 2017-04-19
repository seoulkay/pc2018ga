package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQ6 {
	int idx;
	int event_idx;
	String fest_q6_title;
	String fest_q6_question;
	Date fest_q6_created_on;
	
	//객관식 선택지.
	List<FestOption> optionlist;
		
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
	public String getFest_q6_title() {
		return fest_q6_title;
	}
	public void setFest_q6_title(String fest_q6_title) {
		this.fest_q6_title = fest_q6_title;
	}
	public String getFest_q6_question() {
		return fest_q6_question;
	}
	public void setFest_q6_question(String fest_q6_question) {
		this.fest_q6_question = fest_q6_question;
	}
	public Date getFest_q6_created_on() {
		return fest_q6_created_on;
	}
	public void setFest_q6_created_on(Date fest_q6_created_on) {
		this.fest_q6_created_on = fest_q6_created_on;
	}
	public List<FestOption> getOptionlist() {
		return optionlist;
	}
	public void setOptionlist(List<FestOption> optionlist) {
		this.optionlist = optionlist;
	}
	
	
}
