<%@page import="Model.MemberDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.BoardDTO" %>
<%@ page import="Model.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="Boardcss/css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		request.setCharacterEncoding("utf-8");
		int number = Integer.parseInt(request.getParameter("number"));

		BoardDTO dto = new BoardDTO();
		BoardDAO dao = new  BoardDAO();
		dto = dao.getNumber(number);
		
	%>
	
	
	<div id="wrap" align="center">

		<h1>게시글 상세보기</h1>
		<table border="2">
			<tr>
				<th>작성자</th>
				<td><%=dto.getWriter()%></td>
			</tr>
			
			<tr>
				<th>작성일</th>
				<td><%=dto.getTime()%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><%=dto.getTitle()%></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><%=dto.getContent()%></td>
			</tr>
		</table>
		<br><br>
		<%if(info !=null) {%>
			<input type="button" value="게시글 수정" onclick="location.href='BoardUpdate.jsp?number=<%=dto.getNumber()%>'">
			<input type="button" value="게시글 삭제" onclick="location.href='Board_Removal?number=<%=dto.getNumber()%>'">
			<input type="button" value="게시글 리스트" onclick="location.href='noticeboard.jsp'">
			<input type="button" value="게시글 등록" onclick="location.href='BoardWrite.jsp'">
		<%} else{%>
			<input type="button" value="게시글 리스트" onclick="location.href='noticeboard.jsp'">
		<%} %>	
	</div>
</body>
</html>