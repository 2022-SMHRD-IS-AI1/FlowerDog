<%@page import="Model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.BoardDAO"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bloger</title>
	<!-- Description, Keywords and Author -->
	<meta name="description" content="Your description">
	<meta name="keywords" content="Your,Keywords">
	<meta name="author" content="ResponsiveWebInc">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Styles -->
	<!-- Bootstrap CSS -->
	<link href="./Boardcss/css/bootstrapMK.min.css" rel="stylesheet">
	<!-- Font awesome CSS -->
	<link href="./Boardcss/css/font-awesomeMK.min.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="./Boardcss/css/styleMK.css" rel="stylesheet">
	
	<link rel="stylesheet" href="assetsBoard/css/main.css" />
	<link rel="stylesheet" href="assetsBoard/css/board.css" />
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="#">
	<link rel="stylesheet" type="text/css" href="./Boardcss/css/styleMK.css">
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	MemberDTO info = (MemberDTO)session.getAttribute("info"); 
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> list = new ArrayList<>();
	%>
	<%
	if (info != null) {
		// 로그인 된 회원이 받은 메세지 띄워주기
		// DB로 바로 접근하기!
		list = dao.Listofposts();
	}
	%>
	<div class="wrapper">
		<!-- header -->
		<header>
			<!-- navigation -->

			<nav class="navbar navbar-default" role="navigation">

				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><img class="img-responsive"
							src="./Boardcss/image/logo.png" alt="Logo" /></a>
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>

					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<%if(info!= null) {%>
							<li><a href="login.jsp">Logout</a></li>
							<%}%>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Menu <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#event">상품구매</a></li>
									<li><a href="#blog">입양</a></li>
									<li><a href="#subscribe">커뮤니티</a></li>
									<li><a href="#team">고객센터</a></li>
									<li><a href="#">회사소개</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>

		<!-- banner -->
		<div class="banner">
			<img src="./Boardcss/image/113.jpg" alt="강아지">
			<div class="container">
				<!-- heading -->
				<h2></h2>
				<!-- paragraph -->
				<p></p>
			</div>
		</div>
	</div>
	<!-- banner end -->

	<!-- events -->
	<div class="event" id="event">
		<div class="container">
			<div class="default-heading">
				<section class="notice">
					<div class="page-title">
						<div class="container">
							<h3>게시판</h3>
						</div>
					</div>

					<!-- board seach area -->
					<div id="board-search">
						<div class="container">
							<div class="search-window">
								<form action="">
									<div class="search-wrap">
										<label for="search" class="blind">공지사항 내용 검색</label> <input
											id="search" type="search" name="" placeholder="검색어를 입력해주세요."
											value="">
										<button type="submit" class="btn btn-dark">검색</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<!-- board list area -->
					<div id="board-list">
						<div class="container">
							<table class="board-table">
								<thead>
									<tr>
										<th scope="col" class="th-num">번호</th>
										<th scope="col" class="th-title">제목</th>
										<th scope="col" class="th-date">등록일</th>
									</tr>
								</thead>
								<tbody>
									<%
									for (int i = 0; i < list.size(); i++) {
									%>
									<tr>
										<td><%=i + 1%></td>
										<td><%=list.get(i).getTitle()%></td>
										<td><%=list.get(i).getTime()%></td>
									</tr>
									<%}%>
									<tr>
										<td>
											<button class="btn btn-dark"><a href="BoardWrite.jsp">글쓰기</a></button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</section>
			</div>
		</div>
	</div>
	<!-- events end -->

	<!-- footer -->
	<footer>
		<div class="container">
			<p>
				<a href="#">Home</a> | <a href="#work">works</a> | <a href="#team">Team</a>
				| <a href="#contact">Contact</a>
			</p>
			<div class="social">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-dribbble"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i
					class="fa fa-google-plus"></i></a>
			</div>
			<!-- copy right -->
			<!-- This theme comes under Creative Commons Attribution 4.0 Unported. So don't remove below link back -->
			<p class="copy-right">
				Copyright &copy; 2014 <a href="#">Your Site</a> | Designed By : <a
					href="http://www.indioweb.in/portfolio">IndioWeb</a>, All rights
				reserved.
			</p>
		</div>
	</footer>

	</div>


	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="js/jqueryMK.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrapMK.min.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="js/respondMK.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="js/html5shivMK.js"></script>
	<!-- Custom JS -->
	<script src="js/customMK.js"></script>
</body>
</html>