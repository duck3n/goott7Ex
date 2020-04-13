package VO;


public class boardVO {
	private int bno, status;
	private String title, memid, contents, category;
	String dates;
	
	public boardVO() {}

	public boardVO(int bno, int status, String title, String memid, String contents, String dates2, String category) {
		super();
		this.bno = bno;
		this.status = status;
		this.title = title;
		this.memid = memid;
		this.contents = contents;
		this.dates= dates2; 
		this.category = category;
	}
	
	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String toString() {
		return "boardVO [title=" + title + ", memid="+ memid 
				+ ", contents=" + contents + ", status="+status+", category"+category
				+"]";
	}
}
