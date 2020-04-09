<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_deleteOk.jsp -->
<%
	String b = request.getParameter("bno");
	out.println(b);
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		boardDAO dao = new boardDAO();
		dao.deleteData(bno);
		response.sendRedirect("board_list.jsp"); 
	}else {
		response.sendRedirect("board_list.jsp");
	}
	
%>