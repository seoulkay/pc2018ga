package pix.gdc.com.vo;

public class Geodata {
	//지오데이터가 없다면 널이 아닌 빈칸을 리턴!
	//지오데이터가 없는 사진을 처리할때 다르게 처리하면 좋을듯.
	private String latitude ="";
	private String longitude ="";
	
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	
}
