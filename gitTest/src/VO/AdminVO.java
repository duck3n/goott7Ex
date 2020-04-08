package VO;

public class AdminVO {
	private String mid;
	private char mlevel;
	private String mpw;
	
	public AdminVO() {}
	
	public AdminVO(String mid, char mlevel, String mpw) {
		super();
		this.mid = mid;
		this.mlevel = mlevel;
		this.mpw = mpw;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public char getMlevel() {
		return mlevel;
	}

	public void setMlevel(char mlevel) {
		this.mlevel = mlevel;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	
}
