<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="com.dto.ClassDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ClassDTO> list =(List<ClassDTO>)session.getAttribute("list");
	String userName = (String)session.getAttribute("userName");
	String contents = (String)session.getAttribute("contents");
	System.out.println(list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 신청</title>
</head>
<body>
<%
for(ClassDTO dto: list){
	String classId= dto.getClassId();
	String className= dto.getClassName();
	String userId= dto.getUserId();
	String category= dto.getCategory();
	int price= dto.getPrice();
	String schedule= dto.getSchedule();
	String place= dto.getPlace();
%>
<img src="img/a001_1.jpg" width="600px" height="400px">
<h1><%=className%></h1>
<h2>클래스 소개</h2>
<hr>
<jsp:include page="classInfo.jsp" flush="true"></jsp:include>
<h2>튜터 <%=userName %> 소개</h2>
<hr>
	<div id="tutorProfileImg">
		<img src="img/감자도리.jpg" width="100" height="100"><br>
		<b><%= userName %></b>
	</div>
	<div id="tutorInfo" >
		튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다.<br>
		튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다.<br>
		튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다.<br>
		튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다.<br>
		튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다. 튜터 소개글입니다.튜터 소개글입니다.<br>
	</div>

<h2>일정 및 장소 안내</h2>
<hr>
	<div id="classDetail">
		-일정 : <%=schedule %><br>
		-장소 : <%= place %>
	</div>
<% }%>
<h2>공지사항</h2>
<hr>
<jsp:include page="notice.jsp" flush="true"></jsp:include>
<h2>유의사항</h2>
<hr>
<jsp:include page="attention.jsp" flush="true"></jsp:include>
<br>
</body>
</html>