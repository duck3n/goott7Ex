package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertFormAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		/*
		 	어드민 유무 확인 로직
		*/
		return "notice_write.jsp";
	}
}
