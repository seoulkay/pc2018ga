package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQ7 {
	int idx;
	int event_idx;
	String fest_q7_title;
	String fest_q7_question;
	Date fest_q7_created_on;
	
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
	public String getFest_q7_title() {
		return fest_q7_title;
	}
	public void setFest_q7_title(String fest_q7_title) {
		this.fest_q7_title = fest_q7_title;
	}
	public String getFest_q7_question() {
		return fest_q7_question;
	}
	public void setFest_q7_question(String fest_q7_question) {
		this.fest_q7_question = fest_q7_question;
	}
	public Date getFest_q7_created_on() {
		return fest_q7_created_on;
	}
	public void setFest_q7_created_on(Date fest_q7_created_on) {
		this.fest_q7_created_on = fest_q7_created_on;
	}
	public List<FestOption> getOptionlist() {
		return optionlist;
	}
	public void setOptionlist(List<FestOption> optionlist) {
		this.optionlist = optionlist;
	}
	
	
}
