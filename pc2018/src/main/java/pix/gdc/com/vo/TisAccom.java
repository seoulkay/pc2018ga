package pix.gdc.com.vo;

import java.util.Date;

public class TisAccom {
	private int id;
	private int employee_id;
	private int venue_id;
	private int event_id;
	private String acc_room;
	private Date acc_begin;
	private Date acc_end;
	private String acc_pin;
	private String acc_desc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public int getVenue_id() {
		return venue_id;
	}
	public void setVenue_id(int venue_id) {
		this.venue_id = venue_id;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getAcc_room() {
		return acc_room;
	}
	public void setAcc_room(String acc_room) {
		this.acc_room = acc_room;
	}
	public Date getAcc_begin() {
		return acc_begin;
	}
	public void setAcc_begin(Date acc_begin) {
		this.acc_begin = acc_begin;
	}
	public Date getAcc_end() {
		return acc_end;
	}
	public void setAcc_end(Date acc_end) {
		this.acc_end = acc_end;
	}
	public String getAcc_pin() {
		return acc_pin;
	}
	public void setAcc_pin(String acc_pin) {
		this.acc_pin = acc_pin;
	}
	public String getAcc_desc() {
		return acc_desc;
	}
	public void setAcc_desc(String acc_desc) {
		this.acc_desc = acc_desc;
	}
}
