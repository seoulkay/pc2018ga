package pix.gdc.com.vo;

import java.sql.Date;

public class FestOption implements Comparable<FestOption>{
	private int idfest_ufo_q;
	private String para;
	private int orderq;
	private String q_option;
	private String is_use;
	private Date q_time;
	private int q_number;
	
	private int point;
	private int percent; 
	
	
	//밑에는 역시 안쓰게 될꺼 같지만 우선 둔다.
	int idx;
	int event_idx;
	int fest_option_q;
	String fest_option_content;
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
	public int getFest_option_q() {
		return fest_option_q;
	}
	public void setFest_option_q(int fest_option_q) {
		this.fest_option_q = fest_option_q;
	}
	public String getFest_option_content() {
		return fest_option_content;
	}
	public void setFest_option_content(String fest_option_content) {
		this.fest_option_content = fest_option_content;
	}
	public int getIdfest_ufo_q() {
		return idfest_ufo_q;
	}
	public void setIdfest_ufo_q(int idfest_ufo_q) {
		this.idfest_ufo_q = idfest_ufo_q;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public int getOrderq() {
		return orderq;
	}
	public void setOrderq(int orderq) {
		this.orderq = orderq;
	}
	public String getQ_option() {
		return q_option;
	}
	public void setQ_option(String q_option) {
		this.q_option = q_option;
	}
	public String getIs_use() {
		return is_use;
	}
	public void setIs_use(String is_use) {
		this.is_use = is_use;
	}
	public Date getQ_time() {
		return q_time;
	}
	public void setQ_time(Date q_time) {
		this.q_time = q_time;
	}
	public int getQ_number() {
		return q_number;
	}
	public void setQ_number(int q_number) {
		this.q_number = q_number;
	}
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	
	@Override
	public int compareTo(FestOption o) {
		return Integer.compare(this.getPoint(), o.getPoint());
	}
	
	
	
	
}
