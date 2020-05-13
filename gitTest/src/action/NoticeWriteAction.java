package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.hwang_memberVo;
import handler.CheckGrade;

public class NoticeWriteAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if(new CheckGrade().CheckAdmin(req)) { 
			hwang_memberVo vo = (hwang_memberVo) req.getAttribute("member");
			System.out.println("grade : "+vo.getGrade());
			return "managePage/notice_write.jsp";
		}else return "managePage/notice_list.jsp";
	}
}
