package pix.gdc.com.vo;

import java.sql.Date;

public class FestEventInfo {
	int idx;
	int event_idx;
	String fest_event_info_type;
	String fest_event_info_title;
	String fest_event_info_content;
	String fest_event_info_image;
	Date fest_event_info_created_on;
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
	public String getFest_event_info_type() {
		return fest_event_info_type;
	}
	public void setFest_event_info_type(String fest_event_info_type) {
		this.fest_event_info_type = fest_event_info_type;
	}
	public String getFest_event_info_title() {
		return fest_event_info_title;
	}
	public void setFest_event_info_title(String fest_event_info_title) {
		this.fest_event_info_title = fest_event_info_title;
	}
	public String getFest_event_info_content() {
		return fest_event_info_content;
	}
	public void setFest_event_info_content(String fest_event_info_content) {
		this.fest_event_info_content = fest_event_info_content;
	}
	public String getFest_event_info_image() {
		return fest_event_info_image;
	}
	public void setFest_event_info_image(String fest_event_info_image) {
		this.fest_event_info_image = fest_event_info_image;
	}
	public Date getFest_event_info_created_on() {
		return fest_event_info_created_on;
	}
	public void setFest_event_info_created_on(Date fest_event_info_created_on) {
		this.fest_event_info_created_on = fest_event_info_created_on;
	}
	
	
}
