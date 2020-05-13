package action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.noticeDAO;
import VO.noticeVO;

public class NoticeListAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		int pno = 1;
		
		noticeDAO dao = new noticeDAO();
		
//		String no = req.getParameter("pno");
//		if(no != null) {
//			pno = Integer.parseInt(no);
//		}
		
//		System.out.println(req.getParameter("cmd"));
//		System.out.println("dd");
		
		
		
		
		
		
		List<noticeVO> list = dao.getAllData(pno);
		req.setAttribute("noticeList", list);
		
		return "managePage/notice_list.jsp"; 
	}

}