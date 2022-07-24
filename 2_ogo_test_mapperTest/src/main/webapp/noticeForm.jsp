<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
noticeForm.jsp
<%
	request.setAttribute("mesg", "noticeForm에서 작성된 공지사항입니다");
%>
<!-- <form action="NoticeServlet">servlet으로 보내서 notice.jsp에서 받는 방법,, 생각해보기,,
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="noticeTitle" id="noticeTitle"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input type="text" name="noticeContent" id="noticeContent"></td>
		</tr>
	</table>
	<input type="submit" value="글쓰기">
</form> -->
</body>
</html>