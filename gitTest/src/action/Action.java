package action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public String execute(HttpServletRequest req, HttpServletResponse resp)
		throws SQLException, IOException;
}
