<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_blindOk.jsp -->
<%
	String no = request.getParameter("bno");
	int bno = 0;
	
	if(no!=null)
		bno = Integer.parseInt(no);

	boardDAO dao = new boardDAO();
	dao.blindData(bno);

	response.sendRedirect("mian.jsp");
%>
