<%@page import="com.dto.classpage.ClassDTO"%>
<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.TypeData.ClassName"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>클래스 신청</title>

  <link rel="stylesheet" href="NAV/NavBar.css">
  <link rel="stylesheet" href="NAV/Bar.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
  <script src="NAV/NavBar.js" defer></script> <!-- defer html 파싱 후에 js 파일 실행 -->
  
<link rel="stylesheet" href="class_css/classPage.css">
<%
	String heartYN = (String)request.getAttribute("heartYN");
	String heartCount = String.valueOf(request.getAttribute("heartCount"));
	ClassDTO dto =(ClassDTO)request.getAttribute("dto");
	int classNum=dto.getClassNum();
	///
	String userId = (String)request.getAttribute("userId2");; //나중에 session에서 받아오기
%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		//찜 버튼 클릭
		$("#like").on("click", function() {

			var heart =$("#heart");
			//ajax 
			$.ajax({
				type: "get",
				url: "HeartServlet",
				dataType: "text",
				async: false,
				data: { //서버에 넘겨줄 데이터
					userId : <%=userId%>,
					classNum : <%=classNum%>,
					heartYN : <%=heartYN%>
				},
				success: function(data, status, xhr) {
					console.log("success");
					console.log(data);
					if (data=="insert") {
						heart.attr("src","class_img/heart2.png");
						alert("찜 목록에 추가되었습니다");
					}else { //delete인 경우
						heart.attr("src","class_img/heart1.png");
						alert("찜 목록에서 삭제되었습니다");
					}
				},
				error: function(xhr, status, e) {
					console.log("heart error");
					console.log(e, status);
				}
			})//ajax end
			
			//찜 개수 구하기
			$.ajax({
				type: "get",
				url: "HeartCountServlet",
				dataType: "text",
				data: { //서버에 넘겨줄 데이터
					classNum : <%=classNum%>
				},
				success: function(data, status, xhr) {
					console.log("count success");
					$("#heartCount").text(data);
				},
				error: function(xhr, status, e) {
					console.log("count error");
					console.log(e, status);
				}
			})//ajax end
			
		});//like click
		
		//나중에 클래스별로 img 파일명 저장해서 받아오기
		//클래스 photo 왼쪽 버튼 클릭
		var images = ["1_04.jpg","1_05.jpg","1_06.jpg","1_07.jpg","1_08.jpg"];
		var idx = 0;
		$("#leftBtn").on("click", function() {
			idx--;
			if (idx < 0) {
				idx = 4;
			}
			if (idx == 4) {
				$("#photo1").attr("src", "class_img/"+images[idx]);
				$("#photo2").attr("src", "class_img/"+images[0]);
			}else {
				$("#photo1").attr("src", "class_img/"+images[idx]);
				$("#photo2").attr("src", "class_img/"+images[idx+1]);
			}
			
		});
		//클래스 photo 오른쪽 버튼 클릭
		$("#rightBtn").on("click", function() {
			idx++;
			if (idx > 4) {
				idx = 0;
			}
			if (idx == 4) {
				$("#photo1").attr("src", "class_img/"+images[idx]);
				$("#photo2").attr("src", "class_img/"+images[0]);
			}else {
				$("#photo1").attr("src", "class_img/"+images[idx]);
				$("#photo2").attr("src", "class_img/"+images[idx+1]);
			}
			
		});
		
	});//ready
</script>
</head>
<body>
  <div class="header">
    <div class="progress-container">
      <div class="progress-bar"></div>
    </div>
  </div>
  <nav class="navBar">
    <div class="navBar_logo" >
      <a href="#"><img src="NAV/img/OGOLogo.jpg" alt=""></a>
    </div>
    <ul class="navBar_menu">
      <li><a href="">BEST</a></li>
      <li><a href="">MYSPACE</a></li>
      <li><a href="">공지사항&FAQ</a></li>
    </ul>
    <ul class="login">
      <!-- 로그인 마이페이지 더미-->
      <li><a href="#"><img src="NAV/img/login.png" alt="" style="height: 30px; width: 30px;"></a></li>
      <li><a href="#"><img src="NAV/img/mypage.png" alt="" style="height: 30px; width: 30px;"></a></li>
    </ul>
    
    <a href="" class="navBar_btn"><img src="NAV/img/menu.png" alt=""></a>
    
  </nav>
  
<div class="wrap">
  <div id="right">
	<!-- 결제 박스 -->
	<jsp:include page="class_page/box.jsp" flush="true"></jsp:include>
  </div>
  <div id="left">
	<!-- 클래스 이미지, 클래스 이름 -->
	<jsp:include page="class_page/title.jsp" flush="true"></jsp:include>
	<br>
	<!-- 클래스 소개 -->
	<jsp:include page="class_page/classInfo.jsp" flush="true"></jsp:include>
	<br>
	<!-- 튜터 소개 -->
	<jsp:include page="class_page/tutorInfo.jsp" flush="true"></jsp:include>
	<br>
	<!-- 일정 및 장소 안내 -->
	<jsp:include page="class_page/detail.jsp" flush="true"></jsp:include>
	<br>
	<!-- 클래스 포토 -->
	<jsp:include page="class_page/classPhoto.jsp" flush="true"></jsp:include>
	<br>
	<!-- 공지사항 -->
	<jsp:include page="class_page/notice.jsp" flush="true"></jsp:include>
	<br>
	<!-- 유의사항 -->
	<jsp:include page="class_page/attention.jsp" flush="true"></jsp:include>
	<br>
	<!-- 수강생 후기 아래에 추가 -->
  </div>
<br>
</div>
 <!-- <script src="progressbar.js"></script> -->
</body>
</html>