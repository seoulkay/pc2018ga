package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQ5 {
	int idx;
	int event_idx;
	String fest_q5_title;
	String fest_q5_question;
	Date fest_q5_created_on;
	
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
	public String getFest_q5_title() {
		return fest_q5_title;
	}
	public void setFest_q5_title(String fest_q5_title) {
		this.fest_q5_title = fest_q5_title;
	}
	public String getFest_q5_question() {
		return fest_q5_question;
	}
	public void setFest_q5_question(String fest_q5_question) {
		this.fest_q5_question = fest_q5_question;
	}
	public Date getFest_q5_created_on() {
		return fest_q5_created_on;
	}
	public void setFest_q5_created_on(Date fest_q5_created_on) {
		this.fest_q5_created_on = fest_q5_created_on;
	}
	public List<FestOption> getOptionlist() {
		return optionlist;
	}
	public void setOptionlist(List<FestOption> optionlist) {
		this.optionlist = optionlist;
	}
	
}
