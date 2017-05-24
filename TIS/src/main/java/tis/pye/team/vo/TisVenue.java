package tis.pye.team.vo;

public class TisVenue {
	private int id;
	private int event_id;
	private String venue_pic;
	private String venue_name;
	private String venue_name_loc;
	private String venue_address;
	private String venue_address_loc;
	private String venue_type;
	private String venue_desc;
	private String lat;
	private String lng;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
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
	public String getVenue_type() {
		return venue_type;
	}
	public void setVenue_type(String venue_type) {
		this.venue_type = venue_type;
	}
	public String getVenue_desc() {
		return venue_desc;
	}
	public void setVenue_desc(String venue_desc) {
		this.venue_desc = venue_desc;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
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
	
}
