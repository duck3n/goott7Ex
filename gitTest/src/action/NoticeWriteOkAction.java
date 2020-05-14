package action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.noticeDAO;
import VO.noticeVO;
import handler.CheckGrade;

public class NoticeWriteOkAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
//		Map<String, String> mvo = new HashMap<String, String>();
//		System.out.println(new CheckGrade().CheckAdmin(req));
//		if(new CheckGrade().CheckAdmin(req)) {
//			String writer = req.getParameter("memid");
//			String title = req.getParameter("ti");
//			String contents = req.getParameter("ct");
//			String category = req.getParameter("ctg");
//			
//			req.setAttribute("title", title);
//			
//			mvo.put("writer", writer);
//			mvo.put("title", title);
//			mvo.put("contents", contents);
//			mvo.put("category", category);
//			
//			noticeDAO dao = new noticeDAO();
//			dao.addData(mvo);
//			
//			return "managePage/notice_writeOk.jsp";
//		}else return "notice.do?cmd=list";
		
		Map<String, String> mvo = new HashMap<String, String>();
		
		String writer = req.getParameter("memid");
		String title = req.getParameter("ti");
		String contents = req.getParameter("ct");
		String category = req.getParameter("ctg");
		
		mvo.put("writer", writer);
		mvo.put("title", title);
		mvo.put("contents", contents);
		mvo.put("category", category);
		
		noticeDAO dao = new noticeDAO();
		dao.addData(mvo);
		
		return "managePage/notice_writeOk.jsp";
	}
}
