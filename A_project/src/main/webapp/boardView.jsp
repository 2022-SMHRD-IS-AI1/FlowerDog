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
	request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");

		BoardDTO dto = new BoardDTO();
		BoardDAO dao = new  BoardDAO();
		dto = dao.getTitle(title);
		
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
				<td colspan="3"><%=dto.getWriter()%></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><%=dto.getContent()%></td>
			</tr>
		</table>
		<br><br>
		<input type="button" value="게시글 수정" onclick="open_win('BoardServlet?command=board_check_pass_form&number=${tb_community.number}','update')">
		<input type="button" value="게시글 삭제" onclick="open_win('BoardServlet?command=board_check_pass_form&number=${tb_community.number}','delete')">
		<input type="button" value="게시글 리스트" onclick="location.href='noticeboard.jsp'">
		<input type="button" value="게시글 등록" onclick="location.href='BoardServlet?command=board_write_form'">
			
	</div>
</body>
</html>