package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.noticeDAO;
import VO.noticeVO;

public class NoticeDetailAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		noticeDAO dao = new noticeDAO();
		int bno = 0;
		
		String no = req.getParameter("bno");
		if(no != null) {
			bno = Integer.parseInt(no); 
		
			noticeVO vo = dao.getOneData(bno);
			req.setAttribute("vo", vo);
		}
		
		System.out.println(req.getParameter("cmd"));
		System.out.println(req.getParameter("bno"));
		
		if(no != null & !no.isEmpty()) {
			return "/managePage/notice_detail.jsp";//값이 존재할 때
		}else {
			return "/notice.do?cmd=list";//값이 없을 때
		}
	}
}
