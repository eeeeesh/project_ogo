<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<%
	HashMap<String,String> classContents = (HashMap<String,String>)request.getAttribute("classContents");
	String attention=classContents.get("con_attention");
%>
<h2>유의사항</h2>
<hr>
<%=attention %>

