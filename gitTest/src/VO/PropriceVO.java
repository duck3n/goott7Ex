package VO;

public class PropriceVO {
	private int pno;
	private String psite;
	private int pprice;
	private String plogo;
	private int pback;
	
	
	public PropriceVO() {
		super();
	}
	public PropriceVO(int pno, String psite, int pprice, String plogo, int pback) {
		super();
		this.pno = pno;
		this.psite = psite;
		this.pprice = pprice;
		this.plogo = plogo;
		this.pback = pback;
	}


	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
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
