package pix.gdc.com.vo;

import java.util.Date;

public class UfoShare {
	private int idufo_share;
	private String para;
	private String uid;
	private String share_return;
	private String result_type;
	private Date share_time;
	public int getIdufo_share() {
		return idufo_share;
	}
	public void setIdufo_share(int idufo_share) {
		this.idufo_share = idufo_share;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getShare_return() {
		return share_return;
	}
	public void setShare_return(String share_return) {
		this.share_return = share_return;
	}
	public String getResult_type() {
		return result_type;
	}
	public void setResult_type(String result_type) {
		this.result_type = result_type;
	}
	public Date getShare_time() {
		return share_time;
	}
	public void setShare_time(Date share_time) {
		this.share_time = share_time;
	}
}
