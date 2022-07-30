<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.ClassDTO"%>
<%
	ClassDTO dto = (ClassDTO)request.getAttribute("dto");
	//System.out.println(dto);
	
	int classNum= dto.getClassNum();
	String className= dto.getClassName();
	String userId= dto.getUserId();
	String category= dto.getCategory();
	int price= dto.getPrice();
	String schedule= dto.getSchedule();
	String place= dto.getPlace();

%>   
 
<div class="imgAll">
  <div>
	<div id="bigImg" >
	  <img src="img/a_04.jpg" height="300px" width="605px">
	</div>
	<div id="smallImg" >
	  <img src="img/a_05.jpg" height="150px" width="300px">
	  <img src="img/a_09.jpg" height="150px" width="300px">
	</div>
  </div>
</div>
<h1><%=className%></h1>