package connection;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VO.hwang_memberVo;

public class LoginAdmin {
	public LoginAdmin(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			
			hwang_memberVo member = new hwang_memberVo();
			member.setId("어드민ID");
			member.setGrade("A");
			
			req.setAttribute("member", member);
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
