<%@page import="Model.MemberDTO"%>
<%@page import="Model.BoardDTO"%>
<%@page import="Model.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assetsBoard/css/main.css" />
		<link rel="stylesheet" href="assetsBoard/css/board.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
</head>
<body>
<script language='javascript'>
// 새로고침 막기
function noEvent() {
    if (event.keyCode == 116) {
        event.keyCode= 2;
        return false;
    }
    else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
    {
        return false;
    }
}
document.onkeydown = noEvent;

</script>
<script language='javascript'>
	
			<!-- Q17. 게시글 목록 조회 기능 -->
			<!-- Q18. 게시글 목록 세부페이지 기능(제목을 클릭하면 세부페이지 BoardDetail.jsp로 이동)-->
			<div id="board">
<%
	MemberDTO info = (MemberDTO)session.getAttribute("info");
	BoardDTO dto = new BoardDTO();
%> 

					<%
					
					BoardDAO dao = new BoardDAO();
					ArrayList<BoardDTO> list = new ArrayList<>();
					%>
					<%if(info != null){
						list = dao.Listofposts();
					}%>
				
				
				<table id = "list">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>시간</td>
					</tr>
					<%for (int i = 0; i < list.size(); i++){%>
					<tr>
						<td><%= i+1%></td>
						<td id ="tit"><%= list.get(i).getTitle()%></td>
						<td><%= list.get(i).getWriter()%></td>
						<td><%= list.get(i).getTime()%></td>
					</tr>	
					<%}%>
				
				</table>
				
				<a href="index.html"><button id="writer">홈으로가기</button></a>
				<a href="BoardWrite.jsp"><button id="writer">작성하러가기</button></a>
				
				<% if (info != null) {
					if (info.getId().equals(dto.getWriter())){%>
						<a href="Board_Removal"><button id="writer">게시글 수정하기</button></a>
						<a href="Board_Modify"><button id="writer">게시글 삭제하기</button></a>
					<%}%>
				<%}else{%>
				<li>로그인을 하세요.</li>
				<%}%>
				
			</div>


			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

</body>
</html>