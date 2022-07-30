<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="com.dto.ClassDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ClassDTO dto = (ClassDTO)request.getAttribute("dto");
	System.out.println(dto);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 신청</title>
</head>
<body>
<%
		String classId= dto.getClassId();
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

<jsp:include page="page/classInfo.jsp" flush="true"></jsp:include>
<br>
<jsp:include page="page/tutorInfo.jsp" flush="true"></jsp:include>
<br>
<jsp:include page="page/detail.jsp" flush="true"></jsp:include>
<br>
<jsp:include page="page/notice.jsp" flush="true"></jsp:include>
<br>
<jsp:include page="page/attention.jsp" flush="true"></jsp:include>
<br>
<!-- 수강생 후기 아래에 추가 -->

<br>
</body>
</html>