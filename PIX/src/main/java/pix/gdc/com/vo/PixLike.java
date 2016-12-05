package pix.gdc.com.vo;

public class PixLike {
	int pix_like_idx;
	String pix_like_user;
	int pix_idx;
	//좋아요 넘버.
	private int likeNum;
		
	
	public int getPix_like_idx() {
		return pix_like_idx;
	}
	public void setPix_like_idx(int pix_like_idx) {
		this.pix_like_idx = pix_like_idx;
	}
	public String getPix_like_user() {
		return pix_like_user;
	}
	public void setPix_like_user(String pix_like_user) {
		this.pix_like_user = pix_like_user;
	}
	public int getPix_idx() {
		return pix_idx;
	}
	public void setPix_idx(int pix_idx) {
		this.pix_idx = pix_idx;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	
	

}
