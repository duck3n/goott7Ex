<%@page import="VO.won_boardVO"%>
<%@page import="DAO.won_boardDAO"%>
<%@page import="VO.won_reqnaVO"%>
<%@page import="DAO.won_reqnaDAO"%>
<%@page import="VO.boardVO"%>
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
		
		won_reqnaDAO dao = new won_reqnaDAO();
		won_reqnaVO vo = new won_reqnaVO(); 
		
		won_boardDAO bao = new won_boardDAO();
		won_boardVO bvo = new won_boardVO();
		
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