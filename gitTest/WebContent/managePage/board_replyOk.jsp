<%@page import="DAO.boardDAO"%>
<%@page import="VO.reqnaVO"%>
<%@page import="DAO.reqnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_replyOk.jsp -->
<%
	String b = request.getParameter("bno");
	String comments = request.getParameter("comm");
	
	//세션으로 가져와서 현재 아이디 삽입하기
	String id = (String)session.getAttribute("id");
	
	if(b!=null){ 
		int bno = Integer.parseInt(b);
		out.println(bno+id+comments);
		
		reqnaDAO dao = new reqnaDAO();
		reqnaVO vo = new reqnaVO();
		
		vo.setId(id); 
		vo.setComments(comments);
		vo.setRef(bno);
		
		dao.insComnts(vo);
		//댓글 상태 유무 변경
		new boardDAO().addComm(bno); 
		
		response.sendRedirect("mian.jsp?fno=board_detail&bno="+bno);
	}else {
		response.sendRedirect("mian.jsp?fno=board_list");
	}
%>