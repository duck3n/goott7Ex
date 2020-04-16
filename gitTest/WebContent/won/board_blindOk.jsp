<%@page import="DAO.won_boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_blindOk.jsp -->
<%
	String b = request.getParameter("bno");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		won_boardDAO dao = new won_boardDAO();
		dao.blindData(bno); 
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("board_list.jsp");
	}
%>