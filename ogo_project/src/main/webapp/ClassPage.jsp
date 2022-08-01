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
	/* 오른쪽의 결제 box */
	.box {
		background-color: white;
		width: 200px;
		height: 150px;
		padding: 20px; 
		border: 8px solid #6633FF;
		border-radius: 20px 20px 20px 20px;
		margin: 15px;
		position : relative
	}
	/* box.jsp의 price */
	#price{
		font-size: 32px;
		text-align: right;
		position: absolute;
		top: 20%;
		right: -15%;
		transform: translate(-50%, -30%);
	}
	/* 수강결제 버튼 */
	#btn{ 
		background-color: #6633FF; 
		color: white; 
		font-size: 24px; 
		font-weight: bold;
		width: 70%;
		height: 25%;
		text-align: center;
		cursor : pointer;
		position: absolute;
		top: 25%;
		left: 50%;
		transform: translate(-50%, 60%);
	}
	/* 찜 버튼 */
	#like{
		cursor : pointer;
		position: absolute;
		bottom: 8%;
		left: 20%;
	}
	/* photo container */
	.container{ 
		display: flex;
	}
	/* photo 버튼 */
	.btn{
		height: 200px;
		cursor : pointer;
		widows: 50px;
	}
	/* photo 왼쪽 오른쪽 버튼 이미지 */
	.btn2{
		transform: translate(0, 150%);
	}
	.photo{
		margin: 5px;
	}
	/* class photo의 이미지 */
	.photoSize{
		width: 300px; 
		height: 200px;
	}
	
	
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//찜 버튼 클릭
		$("#like").on("click", function() {
			var heart =$("#heart");
			if (heart.attr("src")=="img/heart1.png") {
				heart.attr("src","img/heart2.png");
			} else {
				heart.attr("src","img/heart1.png");
			}
		});//like click
		
		//나중에 클래스별로 img 파일명 저장해서 받아오기
		//클래스 photo 왼쪽 버튼 클릭
		var images = ["a_06.jpg","a_10.jpg","a_12.jpg","a_01.jpg"];
		var idx = 0;
		$("#leftBtn").on("click", function() {
			idx--;
			if (idx < 0) {
				idx = 3;
			}
			if (idx == 3) {
				$("#photo1").attr("src", "img/"+images[idx]);
				$("#photo2").attr("src", "img/"+images[0]);
			}else {
				$("#photo1").attr("src", "img/"+images[idx]);
				$("#photo2").attr("src", "img/"+images[idx+1]);
			}
			
		});
		//클래스 photo 오른쪽 버튼 클릭
		$("#rightBtn").on("click", function() {
			idx++;
			if (idx > 3) {
				idx = 0;
			}
			if (idx == 3) {
				$("#photo1").attr("src", "img/"+images[idx]);
				$("#photo2").attr("src", "img/"+images[0]);
			}else {
				$("#photo1").attr("src", "img/"+images[idx]);
				$("#photo2").attr("src", "img/"+images[idx+1]);
			}
			
		});
		
	});//ready
</script>
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
	<br>
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