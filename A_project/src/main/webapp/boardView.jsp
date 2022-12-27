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
<link rel="stylesheet" type="text/css" href="shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");

		BoardDTO dto = new BoardDTO();
		BoardDAO dao = new  BoardDAO();
		dto = dao.getTitle(title);
		
	%>
	
	<div id="wrap" align="center">
		<table>
			<thead>
				<tr>
					<th colspan="3" style="background-color: #eeeeee; text-align: center">게시판 글보기</th><td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%">글 제목</td>
					<td><%=dto.getTitle() %></td>
					<td><%=dto.getWriter() %></td>
					<td><%=dto.getNumber() %></td>
					<td><%=dto.getTitle() %></td>
				</tr>
				
			</tbody>
		</table>
		<br><br>
	</div>
</body>
</html>