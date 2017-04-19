package pix.gdc.com.vo;

import java.util.Date;
import java.util.List;

public class FestQ2 {
	int idx;
	int event_idx;
	String fest_q2_title;
	String fest_q2_question;
	Date fest_q2_created_on;
	
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
	public String getFest_q2_title() {
		return fest_q2_title;
	}
	public void setFest_q2_title(String fest_q2_title) {
		this.fest_q2_title = fest_q2_title;
	}
	public String getFest_q2_question() {
		return fest_q2_question;
	}
	public void setFest_q2_question(String fest_q2_question) {
		this.fest_q2_question = fest_q2_question;
	}
	public Date getFest_q2_created_on() {
		return fest_q2_created_on;
	}
	public void setFest_q2_created_on(Date fest_q2_created_on) {
		this.fest_q2_created_on = fest_q2_created_on;
	}
	public List<FestOption> getOptionlist() {
		return optionlist;
	}
	public void setOptionlist(List<FestOption> optionlist) {
		this.optionlist = optionlist;
	}
	
}
