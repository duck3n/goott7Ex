<%@page import="DAO.won_noticeDAO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- notice_blindOk.jsp -->
<%
	String b = request.getParameter("bno");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		won_noticeDAO dao = new won_noticeDAO();
		dao.blindData(bno);
		response.sendRedirect("notice_list.jsp");
	}else{
		response.sendRedirect("notice_list.jsp");
	}
%> 