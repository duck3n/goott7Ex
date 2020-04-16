 <%@page import="VO.won_noticeVO"%>
<%@page import="DAO.won_noticeDAO"%>
<%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- notice_writeOk.jsp -->
<%
	/* String adminId = request.getParameter("adminId"); */
	String title = request.getParameter("ti");
	String contents = request.getParameter("ct");
	String ctg = request.getParameter("ctg");
	
	out.println(title+", "+contents);
	
	// DB 연결
	won_noticeDAO dao = new won_noticeDAO();
	won_noticeVO vo = new won_noticeVO();
	
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setCategory(ctg);
	
	dao.addData(vo);
	
	response.sendRedirect("notice_list.jsp");
%>