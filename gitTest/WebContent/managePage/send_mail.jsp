<%@page import="Mail.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<h3>메세지를 전송합니다.</h3>
<br />
<br />
&nbsp&nbsp&nbsp<p>잠시만 기다려 주세요....</p>
<%
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("tittle");
	String contents = request.getParameter("contents");
	
	if(subject && contents){
		MailSend ms = new MailSend();
		ms.MailSend(subject, contents);
	}
	
	out.println(subject);
	out.println(contents);
%> 
