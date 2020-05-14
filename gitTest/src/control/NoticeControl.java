package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.NoticeDeleteAction;
import action.NoticeWriteAction;
import action.NoticeWriteOkAction;
import connection.LoginAdmin;
import handler.CheckGrade;
import action.NoticeDetailAction;
import action.NoticeListAction;

@WebServlet("/notice.do") //접근할 수 있는 가상 주소 생성
public class NoticeControl extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//테스트용 어드민 계정 모드
		new LoginAdmin(req, resp);
		System.out.println(new CheckGrade().CheckAdmin(req));
		
		//인코딩
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd"); //notice.do로 들어왔을 때 파라미터 값 가져오기
		String viewPage = null;	//초기화(페이지 이동주소 담을 변수)
		Action model = null; //초기화(액션 객체 담을 인터페이스)
//		System.out.println("반응");
		
		if(cmd==null || cmd.equalsIgnoreCase("list")) { //파라미터값이 없거나 "list"라면
			System.out.println("list");
			model = new NoticeListAction();				//인터페이스에 리스트액션객체 삽입
		}else if(cmd.equalsIgnoreCase("write")) {		//파라미터값이 "write"이면
			//글 작성 페이지				
			System.out.println("write");
			model = new NoticeWriteAction();			//인터페이스에 write액션객체 삽입
		}else if(cmd.equalsIgnoreCase("writeOk")) {		//
			System.out.println("writeOk");
			model = new NoticeWriteOkAction();			//인터페이스에 insertForm액션객체 삽입
			//실제 글 작성 기능 수행
		}else if(cmd.equalsIgnoreCase("detail")) {		//
			System.out.println("detail");
			model = new NoticeDetailAction();			//
		}else if(cmd.equalsIgnoreCase("modify")) {		//
			System.out.println("modify");
//			model = new ModifyFormAction();				//
		}else if(cmd.equalsIgnoreCase("modifyOk")){		//
			System.out.println("modifyOk");
//			model = new ModifyWriteAction();			//
		}
		
		try {
			viewPage = model.execute(req, resp);			//인터페이스에 담겨있는 객체 실행과 리턴주소를 변수에 담음
			if(viewPage == null) {
				viewPage = "/notice.do?cmd=list";
			}
		
			//페이지 이동
			RequestDispatcher rd = req.getRequestDispatcher(viewPage);//리턴할 주소 적용
		
			rd.forward(req, resp);	//리턴 받았던 주소로 페이지 이동
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//doProcess() 끝
	
}
