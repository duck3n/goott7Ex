package vo;

public class BqnaVO {
	private int bno;
	private String title;
	private String contents;
	private String date;
	private int hits;
	private String category;
	private int pid;
	private String status;
	private String memid;
	
	public BqnaVO() {}

	public BqnaVO(int bno, String title, String contents, String date, int hits, String category, int pid,
			String status, String memid) {
		super();
		this.bno = bno;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.hits = hits;
		this.category = category;
		this.pid = pid;
		this.status = status;
		this.memid = memid;
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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}
	
	
}
