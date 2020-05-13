package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.noticeDAO;

public class NoticeDeleteAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		int bno = (int) req.getAttribute("bno");
		
		noticeDAO dao = new noticeDAO();
		dao.deleteData(bno);
		
		return "notice.do?cmd=list";
	}
}
