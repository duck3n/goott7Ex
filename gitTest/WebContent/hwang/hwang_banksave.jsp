<%@page import="DAO.hwang_memberDao"%>
<%@page import="VO.hwang_memberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

String account = request.getParameter("account");
String bank = request.getParameter("bank");


/* out.println(account + " " + bank); */

 hwang_memberVo vo = new hwang_memberVo();
 hwang_memberDao dao = new hwang_memberDao();
 dao.addAccount(account, bank);
 out.println("<script>alert('계좌가 등록 되었습니다'); location.href='main2.jsp';</script>");  
%>

