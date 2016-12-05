package pix.gdc.com.vo;

import java.util.Date;

public class FestEvent {
	int idx;
	String fest_event_name;
	Date fest_event_begin;
	Date fest_event_end;
	String fest_event_image;
	String isPublic;
	String tags;
	String content;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getFest_event_name() {
		return fest_event_name;
	}
	public void setFest_event_name(String fest_event_name) {
		this.fest_event_name = fest_event_name;
	}
	public Date getFest_event_begin() {
		return fest_event_begin;
	}
	public void setFest_event_begin(Date fest_event_begin) {
		this.fest_event_begin = fest_event_begin;
	}
	public Date getFest_event_end() {
		return fest_event_end;
	}
	public void setFest_event_end(Date fest_event_end) {
		this.fest_event_end = fest_event_end;
	}
	public String getFest_event_image() {
		return fest_event_image;
	}
	public void setFest_event_image(String fest_event_image) {
		this.fest_event_image = fest_event_image;
	}
	public String getIsPublic() {
		return isPublic;
	}
	public void setIsPublic(String isPublic) {
		this.isPublic = isPublic;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
