package vo;

public class ProductVO {

	// DB와 동일한 변수 선언
	private String pno;
	private String pbrend;
	private String pname;
	private String pdesc;
	private String qty;
	private String pcat;
	private int imgfile;
	
	public ProductVO() {}
	
	public ProductVO(String pno, String pbrend, String pname, String pdesc, String qty, String pcat, int imgfile) {
		super();
		this.pno = pno;
		this.pbrend = pbrend;
		this.pname = pname;
		this.pdesc = pdesc;
		this.qty = qty;
		this.pcat = pcat;
		this.imgfile = imgfile;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getPbrend() {
		return pbrend;
	}

	public void setPbrend(String pbrend) {
		this.pbrend = pbrend;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getPcat() {
		return pcat;
	}

	public void setPcat(String pcat) {
		this.pcat = pcat;
	}

	public int getImgfile() {
		return imgfile;
	}

	public void setImgfile(int imgfile) {
		this.imgfile = imgfile;
	}
	
}
