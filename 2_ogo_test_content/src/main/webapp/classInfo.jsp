<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String,String> con_class = (HashMap<String,String>)request.getAttribute("con_class");
	String info =con_class.get("con_class");
	//String con_class =(String)request.getAttribute("con_class");
%>
<p id="classInfo">
	<%= info %><br> 
</p>