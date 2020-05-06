package project;
//이미지 파일을 배열로 담아서 jsp 에서 호출할 메소드를 만듬 

public class mostBrand {
	// img 라는 변수에  images source에 경로를 담아줌 
//	String img = "../mainResource/brandList/"; 
	
	//popular 라는 배열로 => 변수 선언한 img와  그리고 호출할 페이지를 popular 로 선언해 준다 
	String popular[] = { "gucci", "maison",
								     "balenciaga", "saintLaurent",
								     "burberry", "prada",
								     "fendi", "marni",
								     "off-white", "valentino",
								     "acne studios", "bottengaVeneta"
								     };
	
      String aBrand[] = { "a_cold", "apc",
		                              "adidas", "andersson",
		                              "alanui", "acne",
		                              "aesop", "alexader",
		                              "wang", "aveda",
		                              "ashley", "anissa"};
	//Get은 데이터를 빼내오는거고
    //Set은 데이터를 입력하는거고
    //return은 함수 값을 반환
	
  //getPopular mostBrand 관련 반환 
	public String[] getPopular() {
		return popular;
	}
	//getaBrand mostBrand 관련 반환 
	public String[] getaBrand() {
		
		return aBrand;
		
	}
}
