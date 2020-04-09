package VO;

public class reqnaVO {
	private int renum, ref;
	private String id, comments, dates;
	
	public reqnaVO() {}

	public reqnaVO(int renum, int ref, String id, String comments, String dates) {
		super();
		this.renum = renum;
		this.ref = ref;
		this.id = id;
		this.comments = comments;
		this.dates = dates;
	}

	public int getRenum() {
		return renum;
	}

	public void setRenum(int renum) {
		this.renum = renum;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}
	
}
