<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="com.dto.ClassDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ClassDTO> list =(List<ClassDTO>)request.getAttribute("list");
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
<h2><%=className%></h2>
<hr>
<p id="classInfo">
	<b>토익 한달 완성</b> 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
	행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
	행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
	행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
	행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
	행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. 행성 클래스 소개글입니다. <br>
</p>
<h2>튜터 <%=userId %> 소개</h2>
<hr>
	<div id="tutorProfileImg">
		<img src="img/감자도리.jpg" width="100" height="100"><br>
		<%= userId %>
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
		-일정 : 매주 <%=schedule %><br>
		-장소 : <%= place %>
	</div>
<% }%>
<h2>공지사항</h2>
<hr>
<jsp:include page="notice.jsp" flush="true"></jsp:include>
</body>
</html>