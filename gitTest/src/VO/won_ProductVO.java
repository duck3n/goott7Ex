package VO;

public class won_ProductVO {

	// DB와 동일한 변수 선언
	private String pid;
	private String pname;
	private int pprice;
	private String pdesc;
	private String manuf;
	private int pstock;
	private String pimage;
	private String pcat;
	
	// 생성자 generate
	public won_ProductVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	// 생성자 overloading
	public won_ProductVO(String pid, String pname, int pprice, String pdesc, String manuf, int pstock, String pimage,
			String pcat) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.pdesc = pdesc;
		this.manuf = manuf;
		this.pstock = pstock;
		this.pimage = pimage;
		this.pcat = pcat;
	}

	
	
	// get/set
	public String getPid() {
		return pid;
	}


	public void setPid(String pid) {
		this.pid = pid;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public int getPprice() {
		return pprice;
	}


	public void setPprice(int pprice) {
		this.pprice = pprice;
	}


	public String getPdesc() {
		return pdesc;
	}


	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}


	public String getManuf() {
		return manuf;
	}


	public void setManuf(String manuf) {
		this.manuf = manuf;
	}


	public int getPstock() {
		return pstock;
	}


	public void setPstock(int pstock) {
		this.pstock = pstock;
	}


	public String getPimage() {
		return pimage;
	}


	public void setPimage(String pimage) {
		this.pimage = pimage;
	}


	public String getPcat() {
		return pcat;
	}


	public void setPcat(String pcat) {
		this.pcat = pcat;
	}
	
	
	
	
	
	
}
