
<%@page import="DAO.hwang_memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// id 파라미터 값을 받기 + endcode 처리
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	// DBMS에 연결해서 해당 id가 존재하면 true, 존재하지 않으면 false return
	hwang_memberDao dao = new hwang_memberDao();
	
	boolean flag = dao.isExistById(id);
	
	out.println(flag);
%>