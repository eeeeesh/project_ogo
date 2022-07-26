<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 글쓰기 해서 noticeForm에서 등록한 글을 여기서 출력하도록 할 순 없을까? -->
<%
	//String mesg=(String)request.getAttribute("mesg"); //noticeForm.jsp에서 옴
	HashMap<String,String> classContents =(HashMap<String,String>)request.getAttribute("classContents");
	String con_notice =classContents.get("con_notice");
%>
<h2>공지사항</h2>
<hr>
<%=con_notice %><br>
<br>
