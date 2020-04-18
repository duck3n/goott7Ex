package DAO;

import DAO.ProductDAO;
import DAO.PropriceDAO;
import VO.ProductVO;
import VO.PropriceVO;

public class InsertProduct {

	public static void main(String[] args) {
		
		ProductDAO dao = new ProductDAO();
		ProductVO vo = new ProductVO();

		PropriceDAO pdao = new PropriceDAO();
		PropriceVO pvo = new PropriceVO();

		
//		vo.setPno(1);
//		vo.setPname("Black Airport Tape Sweatpants");
//		vo.setPbrand("OFF-WHITE");
//		vo.setPcat("BOTTOM");
//		vo.setProdesc("French terry sweatpants in black. Mid-rise. Three-pocket styling. "
//				+ "Concealed drawstring at elasticized waistband. Logo printed in white at front.");
//		vo.setImgfile("../catchimg/OFF1.jpg");
//		vo.setImgfile2("../catchimg/OFF2.jpg");
//		vo.setImgfile3("../catchimg/OFF3.jpg");
//		vo.setImgfile4("../catchimg/OFF4.jpg");
//		dao.addData(vo);
////		
//		
//		vo.setPno(2);
//		vo.setPname("컬러 블록 포켓 후디"); 
//		vo.setPbrand("PRADA");
//		vo.setPcat("Top"); 
//		vo.setProdesc("스포츠와 럭셔리의 혁신적인 만남을 주도해온 이탈리아 레이블의 자부심을 느껴보세요. Prada(프라다)의 컬러 블록 포켓 후디는 멀티 컬러, 드로스트링 후드, 앞면 로고 패치, 드롭 숄더, 긴소매, 앞 지퍼 포켓이 특징입니다."); 
//		vo.setImgfile("../CATCHIMG/ADER1.jpg");
//		vo.setImgfile2("../CATCHIMG/ADER2.jpg");
//		vo.setImgfile3("../CATCHIMG/ADER3.jpg");
//		vo.setImgfile4("../CATCHIMG/ADER4.jpg");
//		dao.addData(vo);
//
//		
//		vo.setPno(3);
//		vo.setPname("Red Ferris Face Hoodie"); 
//		vo.setPbrand("ACNE STUDIOS");
//		vo.setPcat("Top"); 
//		vo.setProdesc("아크네 스튜디오(Acne Studios)의 페어뷰 페이스(Fairview Face) 스웨트 셔츠는 100% 코튼 제품입니다.");  
//		vo.setImgfile("../catchimg/ACNE1.jpg");
//		vo.setImgfile2("../catchimg/ACNE2.jpg");
//		vo.setImgfile3("../catchimg/ACNE3.jpg");
//		vo.setImgfile4("../catchimg/ACNE4.jpg");
//		dao.addData(vo); 
		
//		vo.setPno(4);
//		vo.setPname("Beige Medium Sonny Belt Bag"); 
//		vo.setPbrand("Burberry");
//		vo.setPcat("Bag"); 
//		vo.setProdesc("Cotton-blend canvas pouch in beige featuring check pattern in black, white, and red throughout. Calfskin trim in black throughout"); 
//		vo.setImgfile("../catchimg/burberry1.jpg");
//		vo.setImgfile2("../catchimg/burberry2.jpg");
//		vo.setImgfile3("../catchimg/burberry3.jpg");
//		vo.setImgfile4("../catchimg/burberry4.jpg");
//		dao.addData(vo); 
		
		
//		vo.setPno(3);
//		vo.setPname("Black Uniform Logo Blazer"); 
//		vo.setPbrend("BALENCIAGA");
//		vo.setPcat("OUTER"); 
//		vo.setProdesc("Long sleeve wool-blend blazer in black. Notched lapel collar. Button closure at front. Logo appliqué at chest. Flap pockets at waist. Tonal hardware"); 
//		vo.setImgfile("../catchimg/balenciaga1.jpg");
//		vo.setImgfile2("../catchimg/balenciaga2.jpg");
//		vo.setImgfile3("../catchimg/balenciaga3.jpg");
//		vo.setImgfile4("../catchimg/balenciaga4.jpg");
//		dao.addData(vo); 
//		
		
//		vo.setPno(5);
//		vo.setPname("Black STAR WARS Lounge Pants"); 
//		vo.setPbrand("VETEMENTS");
//		vo.setPcat("BOTTOM"); 
//		vo.setProdesc("Slim-fit French terry lounge pants in black. Mid-rise."); 
//		vo.setImgfile("../catchimg/VETEMENTS1.jpg");
//		vo.setImgfile2("../catchimg/VETEMENTS2.jpg");
//		vo.setImgfile3("../catchimg/VETEMENTS3.jpg");
//		vo.setImgfile4("../catchimg/VETEMENTS4.jpg");
//		dao.addData(vo); 
		
		vo.setPno(6);
		vo.setPname("Exclusive Black 'I Love Paris' T-Shirt"); 
		vo.setPbrand("VETEMENTS");
		vo.setPcat("TOP"); 
		vo.setProdesc("Short sleeve cotton jersey t-shirt in black. Rib knit crewneck collar"); 
		vo.setImgfile("../catchimg/VETEMENTS5.jpg");
		vo.setImgfile2("../catchimg/VETEMENTS6.jpg");
		vo.setImgfile3("../catchimg/VETEMENTS7.jpg");
		vo.setImgfile4("../catchimg/VETEMENTS8.jpg");
		dao.addData(vo); 
		
		
//		
//		pvo.setPno(1);
//		pvo.setPprice(250000);
//		pvo.setPsite("파페치패션");
//		pvo.setPlogo("../CATCHIMG/farfetch.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
//		
//		pvo.setPpno(2);
//		pvo.setPprice(300000);
//		pvo.setPsite("파페치패션");
//		pvo.setPlogo("../catchimg/farfetch.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
//		
//		
//		pvo.setPno(2);
//		pvo.setPprice(450000);
//		pvo.setPsite("매치스패션");
//		pvo.setPlogo("../catchimg/matches.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
//		
//		pvo.setPno(3);
//		pvo.setPprice(1050000);
//		pvo.setPsite("파페치패션");
//		pvo.setPlogo("../catchimg/farfetch.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
		
		
//		pvo.setPpno(4);
//		pvo.setPprice(430000);
//		pvo.setPsite("매치스패션");
//		pvo.setPlogo("../catchimg/matches.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
//		
//		
//		pvo.setPpno(7);
//		pvo.setPprice(230000);
//		pvo.setPsite("파페치패션");
//		pvo.setPlogo("../catchimg/farfetch.png");
//		pvo.setPback(10);
//		pdao.addData(pvo);
	
		
//		pvo.setPpno(6);
//		pvo.setPprice(345000);
//		pvo.setPsite("파페치패션");
//		pvo.setPlogo("../catchimg/farfetch.png");
//		pvo.setPback(10);
		//pdao.addData(pvo);
		
		
	}

}
