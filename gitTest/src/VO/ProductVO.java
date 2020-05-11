package VO;



	public class ProductVO {
		//PRODUCT TABLE
		private int pno;
		private String pname;
		private String pbrand;
		private String pcat;
		private String prodesc;
		private String imgfile;
		private String imgfile2;
		private String imgfile3;
		private String imgfile4;
		
		//PROPRICE TABLE
		private String psite;
		private int pprice;
		private String plogo;
		private int pback;
		
		
		public ProductVO() {}
		
		public ProductVO(int pno, String pname, String pbrand, String pcat, String prodesc, String imgfile,
				String imgfile2, String imgfile3, String imgfile4, String psite, int pprice, String plogo,
				int pback) {
			super();
			this.pno = pno;
			this.pname = pname;
			this.pbrand = pbrand;
			this.pcat = pcat;
			this.prodesc = prodesc;
			this.imgfile = imgfile;
			this.imgfile2 = imgfile2;
			this.imgfile3 = imgfile3;
			this.imgfile4 = imgfile4;
			this.psite = psite;
			this.pprice = pprice;
			this.plogo = plogo;
			this.pback = pback;
		}
		
		public ProductVO(int pno, String pname, String pbrand, String pcat, String prodesc, String imgfile,
				String imgfile2, String imgfile3, String imgfile4) {
			super();
			this.pno = pno;
			this.pname = pname;
			this.pbrand = pbrand;
			this.pcat = pcat;
			this.prodesc = prodesc;
			this.imgfile = imgfile;
			this.imgfile2 = imgfile2;
			this.imgfile3 = imgfile3;
			this.imgfile4 = imgfile4;
		}
		

		public ProductVO(int pno, String psite, int pprice, String plogo, int pback) {
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

		public String getPname() {
			return pname;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}


		public String getPbrand() {
			return pbrand;
		}

		public String getPcat() {
			return pcat;
		}

		public void setPcat(String pcat) {
			this.pcat = pcat;
		}

		public String getProdesc() {
			return prodesc;
		}

		public void setProdesc(String prodesc) {
			this.prodesc = prodesc;
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

		public void setPbrand(String pbrand) {
			this.pbrand = pbrand;
		}

		

	
	
	
	
	
	
}
