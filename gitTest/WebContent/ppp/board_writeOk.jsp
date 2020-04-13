<%@page import="DAO.boardDAO"%>
<%@page import="VO.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_writeOk.jsp -->

<%
	/* String userId = request.getParameter("userId"); */
	String title = request.getParameter("ti");
	String contents = request.getParameter("ct");
	String category = request.getParameter("ctg");
	String id = "게시자";	// 임시
	
	BoardVO vo = new BoardVO();
	boardDAO dao = new boardDAO();
	
	vo.setMemid(id);
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setCategory(category);
	dao.addData(vo);
	
	response.sendRedirect("board_list.jsp");
%>
	
