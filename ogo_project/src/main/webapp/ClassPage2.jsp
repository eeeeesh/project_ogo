<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="com.dto.ClassDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ClassDTO dto = (ClassDTO)request.getAttribute("dto");
	System.out.println(dto);
	String userName = (String)request.getAttribute("userName");
	
	HashMap<String,String> classContents = (HashMap<String,String>)request.getAttribute("classContents");
	String con_class =classContents.get("con_class");
	String con_tutor =classContents.get("con_tutor");
	String con_notice =classContents.get("con_notice");
	String attention=classContents.get("con_attention");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 신청</title>
</head>
<body>
<%
		//String classId= dto.getClassId();
		String className= dto.getClassName();
		String userId= dto.getUserId();
		String category= dto.getCategory();
		int price= dto.getPrice();
		String schedule= dto.getSchedule();
		String place= dto.getPlace();
%>

<div id="title">
	<img src="img/a001_1.jpg" width="600px" height="400px">
	<h1><%=className%></h1>
</div>
<div id="classInfo">
	<h2>클래스 소개</h2>
	<hr>
	<p id="classInfo">
		<%= con_class %><br> 
	</p>
</div>
<div id="tutor">
<h2>튜터 <%=userName %> 소개</h2>
	<hr>
	<div id="tutorProfileImg">
		<img src="img/감자도리.jpg" width="100" height="100"><br>
		<b><%= userName %></b>
	</div>
	<div id="tutorInfo" >
		<%=con_tutor %><br>
	</div>
</div>
<div id="detail">
<h2>일정 및 장소 안내</h2>
	<hr>
		<div id="classDetail">
			-일정 : <%=schedule %><br>
			-장소 : <%= place %>
		</div>
</div>
	
<div id="notice">
	<h2>공지사항</h2>
	<hr>
	<%=con_notice %><br>
	<br>
</div>
<div id="attention">
	<h2>유의사항</h2>
	<hr>
	<%=attention %>
</div>

<br>
</body>
</html>