package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoticeWriteOkAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		
		return "notice_writeOk.jsp";
	}
}
