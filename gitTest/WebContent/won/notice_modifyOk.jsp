<%@page import="VO.won_noticeVO"%>
<%@page import="DAO.won_noticeDAO"%>
<%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- notice_modifyOk.jsp -->
<%
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String no = request.getParameter("bno");
	String category = request.getParameter("ctg");
	
	/* out.println(title+contents+no+category); */
	
	if(no!=null){
		int bno = Integer.parseInt(no); 
		
		won_noticeDAO dao = new won_noticeDAO();
		won_noticeVO vo = new won_noticeVO();
		
		vo.setTitle(title); vo.setCategory(category);
		vo.setContents(contents); vo.setBno(bno);
		
		dao.modifyData(vo);
		response.sendRedirect("notice_list.jsp");
	}else {
		response.sendRedirect("notice_list.jsp");
	}
	
%>