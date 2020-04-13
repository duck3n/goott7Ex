<%@page import="VO.BoardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_modifyOk.jsp -->
<%
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String no = request.getParameter("bno");
	String category = request.getParameter("ctg");
	
	/* out.println(title+contents+no+category); */
	
	if(no!=null){
		int bno = Integer.parseInt(no);
		
		boardDAO dao = new boardDAO();
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setCategory(category);
		vo.setContents(contents);
		vo.setBno(bno);
		
		dao.modifyData(vo);
		
		response.sendRedirect("board_list.jsp");
	}else {
		response.sendRedirect("board_list.jsp");
	}
%>