<%@page import="java.text.NumberFormat"%>
<%@page import="com.dto.ClassDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ClassDTO dto = (ClassDTO)request.getAttribute("dto");
	int price= dto.getPrice();
	NumberFormat numberFormat = NumberFormat.getInstance();
	String priceF=numberFormat.format(price);

%>
<div >
	<div class="box">
	  <div id="price"><%=priceF %>원</div>
	  <div id="btn" >수강결제</div>
	  <div id="like">
	  	<img id="heart" src="img/heart1.png" height="35px" width="35px">
	  	<span id="heartCount"></span> <!-- 찜 개수 -->
	  </div>
	</div>
</div>