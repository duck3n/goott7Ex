package vo;

import java.sql.Date;

public class BoardVO {

	// 변수 설정
	
		// BQNA (질문게시판)
		private int bno;
		private String title;
		private String contents;
		private Date dates;
		private String category;
		private int status;
		private String memid;
		
		
		public BoardVO() {
			// TODO Auto-generated constructor stub
		}


		public BoardVO(int bno, String title, String contents, Date dates, String category, int status, String memid) {
			super();
			this.bno = bno;
			this.title = title;
			this.contents = contents;
			this.dates = dates;
			this.category = category;
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


		public Date getDates() {
			return dates;
		}


		public void setDates(Date dates) {
			this.dates = dates;
		}


		public String getCategory() {
			return category;
		}


		public void setCategory(String category) {
			this.category = category;
		}


		public int getStatus() {
			return status;
		}


		public void setStatus(int status) {
			this.status = status;
		}


		public String getMemid() {
			return memid;
		}


		public void setMemid(String memid) {
			this.memid = memid;
		}

		
		
	
}
