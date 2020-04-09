<%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- notice_deleteOk.jsp -->
<%
	String b = request.getParameter("bno");
	/* out.println(b); */
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		noticeDAO dao = new noticeDAO();
		dao.deleteData(bno);
		
		response.sendRedirect("notice_list.jsp");
		
	}else {
		response.sendRedirect("notice_list.jsp");
	}
	
%>