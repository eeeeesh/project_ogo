<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 신청</title>
<style type="text/css">
	#wrap{
		min-width: 768px;
	}
	body{
		margin-left: 150px;
		margin-right: 150px;
		margin-top: 100px;
	}
	.tutor{
		margin-top: 15px;
	}
	
	#left{
		height: 100%;
		width: 75%;
		float: left;
	}
	#right{
		height: 100%;
		width: 25%;
		float: right;
	}
	/* 오른쪽의 box */
	.box {
		background-color: white;
		width: 200px;
		height: 250px;
		padding: 20px; 
		border: 5px solid purple;
		margin: 15px;
}
	/* 수강결제 버튼 */
	#btn{ 
		background-color: #9933FF; 
		color: white; 
		font-size: 30px; 
		width: 150px;
		
	}
	
</style>
</head>
<body>
<div id="wrap">
  <div id="right">
	<!-- 결제 박스 -->
	<jsp:include page="page/box.jsp" flush="true"></jsp:include>
  </div>
  <div id="left">
	<!-- 클래스 이미지, 클래스 이름 -->
	<jsp:include page="page/title.jsp" flush="true"></jsp:include>
	<br>
	<!-- 클래스 소개 -->
	<jsp:include page="page/classInfo.jsp" flush="true"></jsp:include>
	<br>
	<!-- 튜터 소개 -->
	<jsp:include page="page/tutorInfo.jsp" flush="true"></jsp:include>
	<br>
	<!-- 일정 및 장소 안내 -->
	<jsp:include page="page/detail.jsp" flush="true"></jsp:include>
	<br>
	<!-- 클래스 포토 -->
	<jsp:include page="page/classPhoto.jsp" flush="true"></jsp:include>
	<!-- 공지사항 -->
	<jsp:include page="page/notice.jsp" flush="true"></jsp:include>
	<br>
	<!-- 유의사항 -->
	<jsp:include page="page/attention.jsp" flush="true"></jsp:include>
	<br>
	<!-- 수강생 후기 아래에 추가 -->
  </div>
<br>
</div>
</body>
</html>