<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = (String)request.getAttribute("userName");

	HashMap<String,String> classContents =(HashMap<String,String>)request.getAttribute("classContents");
	String con_tutor =classContents.get("con_tutor");
%>
<h2>튜터 <%=userName %> 소개</h2>
	<hr>
	<div id="tutorProfileImg">
		<img src="img/감자도리.jpg" width="100" height="100"><br>
		<b><%= userName %></b>
	</div>
	<div id="tutorInfo" >
		<%=con_tutor %><br>

	</div>