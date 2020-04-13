<%@page import="VO.BoardVO"%>
<%@page import="DAO.boardDAO"%>
<%@page import="VO.reqnaVO"%>
<%@page import="DAO.reqnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_replyOk.jsp -->
<%
	String b = request.getParameter("bno");
	String id = "휴나";
	String comments = request.getParameter("comm");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		out.println(bno+id+comments);
		
		reqnaDAO dao = new reqnaDAO();
		reqnaVO vo = new reqnaVO(); 
		
		boardDAO bao = new boardDAO();
		BoardVO bvo = new BoardVO();
		
		vo.setId(id); 
		vo.setComments(comments);
		vo.setRef(bno);
		
		dao.insComnts(vo);
		bao.addComm(bno);
		
		response.sendRedirect("board_detail.jsp?bno="+bno);
	}else {
		response.sendRedirect("board_list.jsp");
	}
%>