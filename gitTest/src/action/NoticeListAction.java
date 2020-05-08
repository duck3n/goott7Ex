package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.noticeDAO;

public class NoticeListAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		noticeDAO dao = new noticeDAO();
		
//		req.
		
		dao.getAllData();
		
		return "/managePage/notice_list.jsp"; 
	}

}