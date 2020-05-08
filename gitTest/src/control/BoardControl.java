package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.DeleteAction;
import action.DetailAction;
import action.InsertFormAction;
import action.ListAction;
import action.ModifyFormAction;
import action.ModifyWriteAction;
import action.WriteAction;

@WebServlet("/board.do") //접근할 수 있는 가상 주소 생성
public class BoardControl extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) {
		resp.setContentType("text/html;charset=UTF-8"); //인코딩
		
		String cmd = req.getParameter("cmd"); //board.do로 들어왔을 때 파라미터 값 가져오기
		String viewPage = null;	//초기화(페이지 이동주소 담을 변수)
		Action model = null; //초기화(액션 객체 담을 인터페이스)
		
		if(cmd==null || cmd.equalsIgnoreCase("list")) { //파라미터값이 없거나 "list"라면
			model = new ListAction();					//인터페이스에 리스트액션객체 삽입
		}else if(cmd.equalsIgnoreCase("insertForm")) {	//파라미터값이 "insertForm"이면
			//글 작성 페이지				
			model = new InsertFormAction();				//인터페이스에 insertForm액션객체 삽입
			
		}else if(cmd.equalsIgnoreCase("insert")) {		//
			//실제 글 작성 기능 수행
			model = new WriteAction();					//
		}else if(cmd.equalsIgnoreCase("detail")) {		//
			model = new DetailAction();					//
		}else if(cmd.equalsIgnoreCase("modify")) {		//
			model = new ModifyFormAction();				//
		}else if(cmd.equalsIgnoreCase("modifyOk")){		//
			model = new ModifyWriteAction();			//
		}else if(cmd.equalsIgnoreCase("delete")) {		//
			model = new DeleteAction();					//
		}
		
		viewPage = model.execute(req, resp);			//인터페이스에 담겨있는 객체 실행과 리턴주소를 변수에 담음
		
		//페이지 이동
		RequestDispatcher rd = req.getRequestDispatcher(viewPage);//리턴할 주소 적용
		
		try {
			rd.forward(req, resp);	//리턴 받았던 주소로 페이지 이동
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}//doProcess() 끝
	
}
