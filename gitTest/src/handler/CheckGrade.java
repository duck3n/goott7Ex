package handler;

import javax.servlet.http.HttpServletRequest;

import VO.hwang_memberVo;

public class CheckGrade {
	public boolean CheckAdmin(HttpServletRequest req) {
		//어드민일 경우 true 반환
		hwang_memberVo member = (hwang_memberVo) req.getAttribute("member");
		return member.getGrade() == "A";
	}
	

}
