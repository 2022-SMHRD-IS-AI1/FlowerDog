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
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">
		<link  rel ="stylesheet" type = "text/css" href ="./Boardcss/css/styleMK.css">
	</head>
	
	<body>
	
		<div class="wrapper">
		
			<!-- header -->
			<header>
				<!-- navigation -->
				
				<nav class="navbar navbar-default" role="navigation">
					
					<div class="container">
						
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<a class="navbar-brand" href="#"><img class="img-responsive" src="./Boardcss/image/logo.png" alt="Logo"/></a>	
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="registration.html">Signup</a></li>
								<li><a href="login.html">Login</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#event">상품구매</a></li>
										<li><a href="#blog">입양</a></li>
										<li><a href="#subscribe">커뮤니티</a></li>
										<li><a href="#team">고객센터</a></li>
										<li><a href="#">회사소개</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
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
            <div class = "category" >
                <div class="category_name">
                    <h2>커뮤니티</h2>
                    <a href = "#">입양인증 게시판</a>
                    <a href = "#">자유게시판</a>
                    <a href = "#">유용한 꿀팁</a>
                </div>
            </div>
                
                <div id="board">


		<%
					MemberDTO info = (MemberDTO) session.getAttribute("info");
					String id = info.getId();
								
		%>


		<form action="Board_Creating" method="psot">
                   <div id="list">
                      <div class="list_title">
                        <h1>커뮤니티</h1>
                        <h3>자유롭게 글을 쓸 수 있는 공간입니다.</h3>
                         <textarea type="text" name="Title" rows="1" cols="100"
                            placeholder="제목" maxlength="100"></textarea>
                      </div>
                      <div>
                         <textarea type="text" name="Writer" rows="1" cols="100"
                              maxlength="100"><%=id %></textarea>
                      </div>
          
                      <div>
                         <textarea name="content" placeholder="내용" required rows="30"
                            cols="100"></textarea>
                      </div>
          
          
                      <div>
                         <input type="file">
                      </div>
          
                      <div>
                         <a href="BoardWrite.jsp"><button id="Reset">초기화하기</button></a> <input
                            type="submit" value="작성하기">
                      </div>
          
                   </div>
                   
                   
          
                </form>
             </div>
             <!-- Scripts -->
             <script src="assets/js/jquery.min.js"></script>
             <script src="assets/js/jquery.scrolly.min.js"></script>
             <script src="assets/js/jquery.scrollex.min.js"></script>
             <script src="assets/js/skel.min.js"></script>
             <script src="assets/js/util.js"></script>
             <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
             <script src="assets/js/main.js"></script>
			<!-- events end -->
			
			<!-- footer -->
			<footer>
				<div class="container">
					<p><a href="#">Home</a> | <a href="#work">works</a> | <a href="#team">Team</a> | <a href="#contact">Contact</a></p>
					<div class="social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
						<a href="#"><i class="fa fa-google-plus"></i></a>
					</div>
					<!-- copy right -->
					<!-- This theme comes under Creative Commons Attribution 4.0 Unported. So don't remove below link back -->
					<p class="copy-right">Copyright &copy; 2014 <a href="#">Your Site</a> | Designed By : <a href="http://www.indioweb.in/portfolio">IndioWeb</a>, All rights reserved. </p>
				</div>
			</footer>

		</div>
		
		
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="./Boardcss/js/jqueryMK.js"></script>
		<!-- Bootstrap JS -->
		<script src="./Boardcss/js/bootstrapMK.min.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="./Boardcss/js/respondMK.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="./Boardcss/js/html5shivMK.js"></script>
		<!-- Custom JS -->
		<script src="js/customMK.js"></script>
	</body>	
</html>