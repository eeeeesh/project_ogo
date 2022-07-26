<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String,String> classContents = (HashMap<String,String>)request.getAttribute("classContents");
	String con_class =classContents.get("con_class");
	//String con_class =(String)request.getAttribute("con_class");
%>
<h2>클래스 소개</h2>
<hr>
<p id="classInfo">
	<%= con_class %><br> 
</p>