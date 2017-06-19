package tis.pye.team.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TisAccom {
	private int id;
	private int employee_id;
	private int venue_id;
	private int event_id;
	private String acc_room;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date acc_begin;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date acc_end;
	private String acc_pin;
	private String acc_desc;
	private String venue_pic;
	private String venue_name;
	private String venue_desc;
	private String venue_name_loc;
	private String venue_address;
	private String venue_address_loc;
	
	private String acc_fac;
	private String[] acc_fac_list;
	private String acc_pol;
	private String[] acc_pol_list;
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
	public String getVenue_pic() {
		return venue_pic;
	}
	public void setVenue_pic(String venue_pic) {
		this.venue_pic = venue_pic;
	}
	public String getVenue_name() {
		return venue_name;
	}
	public void setVenue_name(String venue_name) {
		this.venue_name = venue_name;
	}
	public String getVenue_desc() {
		return venue_desc;
	}
	public void setVenue_desc(String venue_desc) {
		this.venue_desc = venue_desc;
	}
	public String getVenue_name_loc() {
		return venue_name_loc;
	}
	public void setVenue_name_loc(String venue_name_loc) {
		this.venue_name_loc = venue_name_loc;
	}
	public String getVenue_address() {
		return venue_address;
	}
	public void setVenue_address(String venue_address) {
		this.venue_address = venue_address;
	}
	public String getVenue_address_loc() {
		return venue_address_loc;
	}
	public void setVenue_address_loc(String venue_address_loc) {
		this.venue_address_loc = venue_address_loc;
	}
	public String getAcc_fac() {
		return acc_fac;
	}
	public void setAcc_fac(String acc_fac) {
		this.acc_fac = acc_fac;
	}
	public String getAcc_pol() {
		return acc_pol;
	}
	public void setAcc_pol(String acc_pol) {
		this.acc_pol = acc_pol;
	}
	public String[] getAcc_fac_list() {
		return acc_fac_list;
	}
	public void setAcc_fac_list(String[] acc_fac_list) {
		this.acc_fac_list = acc_fac_list;
	}
	public String[] getAcc_pol_list() {
		return acc_pol_list;
	}
	public void setAcc_pol_list(String[] acc_pol_list) {
		this.acc_pol_list = acc_pol_list;
	}
	
}
