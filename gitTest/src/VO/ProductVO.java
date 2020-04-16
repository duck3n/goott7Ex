package VO;

public class ProductVO {

	// DB와 동일한 변수 선언
	private int pno1;
	private String pbrend;
	private String pname;
	private String prodesc;
	private String pcat;
	private String imgfile;
	private String imgfile2;
	private String imgfile3;
	private String imgfile4;

	
	
	
	private int pno2;
	private String psite;
	private int pprice;
	private String plogo;
	private int pback;
	
	
	
	
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}




	public ProductVO(int pno1, String pbrend, String pname, String prodesc, String pcat, String imgfile,
			String imgfile2, String imgfile3, String imgfile4, int pno2, String psite, int pprice, String plogo,
			int pback) {
		super();
		this.pno1 = pno1;
		this.pbrend = pbrend;
		this.pname = pname;
		this.prodesc = prodesc;
		this.pcat = pcat;
		this.imgfile = imgfile;
		this.imgfile2 = imgfile2;
		this.imgfile3 = imgfile3;
		this.imgfile4 = imgfile4;
		this.pno2 = pno2;
		this.psite = psite;
		this.pprice = pprice;
		this.plogo = plogo;
		this.pback = pback;
	}




	public int getPno1() {
		return pno1;
	}




	public void setPno1(int pno1) {
		this.pno1 = pno1;
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




	public String getProdesc() {
		return prodesc;
	}




	public void setProdesc(String prodesc) {
		this.prodesc = prodesc;
	}




	public String getPcat() {
		return pcat;
	}




	public void setPcat(String pcat) {
		this.pcat = pcat;
	}




	public String getImgfile() {
		return imgfile;
	}




	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}




	public String getImgfile2() {
		return imgfile2;
	}




	public void setImgfile2(String imgfile2) {
		this.imgfile2 = imgfile2;
	}




	public String getImgfile3() {
		return imgfile3;
	}




	public void setImgfile3(String imgfile3) {
		this.imgfile3 = imgfile3;
	}




	public String getImgfile4() {
		return imgfile4;
	}




	public void setImgfile4(String imgfile4) {
		this.imgfile4 = imgfile4;
	}




	public int getPno2() {
		return pno2;
	}




	public void setPno2(int pno2) {
		this.pno2 = pno2;
	}




	public String getPsite() {
		return psite;
	}




	public void setPsite(String psite) {
		this.psite = psite;
	}




	public int getPprice() {
		return pprice;
	}




	public void setPprice(int pprice) {
		this.pprice = pprice;
	}




	public String getPlogo() {
		return plogo;
	}




	public void setPlogo(String plogo) {
		this.plogo = plogo;
	}




	public int getPback() {
		return pback;
	}




	public void setPback(int pback) {
		this.pback = pback;
	}


	
	

	
	
	
	
	
	
}
