package tis.pye.team.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TisFlight {
	private int id;
	private int employee_id;
	private int event_id;
	private String flight_from;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date flight_from_time;
	private String flight_from_desc;
	private String flight_to;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private Date flight_to_time;
	private String flight_to_desc;
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
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getFlight_from() {
		return flight_from;
	}
	public void setFlight_from(String flight_from) {
		this.flight_from = flight_from;
	}
	public Date getFlight_from_time() {
		return flight_from_time;
	}
	public void setFlight_from_time(Date flight_from_time) {
		this.flight_from_time = flight_from_time;
	}
	public String getFlight_from_desc() {
		return flight_from_desc;
	}
	public void setFlight_from_desc(String flight_from_desc) {
		this.flight_from_desc = flight_from_desc;
	}
	public String getFlight_to() {
		return flight_to;
	}
	public void setFlight_to(String flight_to) {
		this.flight_to = flight_to;
	}
	public Date getFlight_to_time() {
		return flight_to_time;
	}
	public void setFlight_to_time(Date flight_to_time) {
		this.flight_to_time = flight_to_time;
	}
	public String getFlight_to_desc() {
		return flight_to_desc;
	}
	public void setFlight_to_desc(String flight_to_desc) {
		this.flight_to_desc = flight_to_desc;
	}
	
	
}
