<%@page import="DAO.boardDAO"%>
<%@page import="VO.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_writeOk.jsp -->

<%
	/* String userId = request.getParameter("userId"); */
	String title = request.getParameter("ti");	//제목
	String contents = request.getParameter("ct");	//내용
	String category = request.getParameter("ctg");	//카테고리
	String wr = request.getParameter("wr");		//작성자
	
	boardVO vo = new boardVO();
	boardDAO dao = new boardDAO();
	
	/* vo에 담기 */
	vo.setMemid(wr);
	vo.setTitle(title);
	vo.setContents(contents);
	vo.setCategory(category);
	
	dao.addData(vo);	/* dao addData()에 담기 */
	
	response.sendRedirect("board_list.jsp"); /* board_list.jsp로 돌아가기 */
%>
	
