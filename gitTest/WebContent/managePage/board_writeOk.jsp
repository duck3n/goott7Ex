<%@page import="DAO.boardDAO"%>
<%@page import="VO.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_writeOk.jsp -->

<%
	/* String userId = request.getParameter("userId"); */
	String title = request.getParameter("ti");
	String contents = request.getParameter("ct");
	String category = request.getParameter("ctg");
	
	boardVO vo = new boardVO();
	boardDAO dao = new boardDAO();
	
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setCategory(category);
	dao.addData(vo);
	
	response.sendRedirect("board_list.jsp");
%>
	
