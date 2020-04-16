package VO;

public class won_noticeVO {
	private int bno, status, hits;
	private String title, writer, contents, regdate, category;
	
	public won_noticeVO() {
		super();
	}
	
	public won_noticeVO(int bno, int status, int hits, String title, String writer, String contents, String regdate,
			String category) {
		super();
		this.bno = bno;
		this.status = status;
		this.hits = hits;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.regdate = regdate;
		this.category = category;
	}
	
	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String toString() {
		return "noticeVO [status=" + status + ", hits=" + hits + ", title=" + title + ", writer=" + writer
				+ ", contents=" + contents + "]";
	}
}
