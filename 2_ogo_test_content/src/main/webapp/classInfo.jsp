<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String,String> con_class2 = (HashMap<String,String>)request.getAttribute("con_class2");
	String info2 =con_class2.get("con_class");
	String con_class =(String)request.getAttribute("con_class");
%>
<p id="classInfo">
	con_class2 : <%= info2 %><br> <!-- null -->
	con_class : <%= con_class %> <!-- 제대로 출력됨 -->
</p>