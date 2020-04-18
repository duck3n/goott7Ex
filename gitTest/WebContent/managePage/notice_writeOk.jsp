 <%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- notice_writeOk.jsp -->
<%
	String adminId = request.getParameter("adminId");
	String title = request.getParameter("ti");
	String contents = request.getParameter("ct");
	String ctg = request.getParameter("ctg");
	
	out.println(title+", "+contents);
	
	// DB 연결
	noticeDAO dao = new noticeDAO();
	noticeVO vo = new noticeVO();
	
	vo.setWriter(adminId);
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setCategory(ctg);
	
	dao.addData(vo);
	
	response.sendRedirect("mian.jsp?fno=notice_list");
%>