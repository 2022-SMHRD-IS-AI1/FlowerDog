<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	String[] bolder = { "쿠리", "후니", "쭈글", "해니", "열무", "몽쓰", "모모", "콩식", "초록", "함박", "탄이", "마중" };
 String[] info_img ={"./Boardcss/image/b1.png", "./Boardcss/image/b2.png", "./Boardcss/image/b3.png", "./Boardcss/image/b4.png", 
		 "./Boardcss/image/b5.png", "./Boardcss/image/b6.png", "./Boardcss/image/b7.png", "./Boardcss/image/b8.png",
		 "./Boardcss/image/b9.png", "./Boardcss/image/b10.png","./Boardcss/image/b11.png", "./Boardcss/image/b12.png"};
 String[] img ={"./Boardcss/image/a1.png", "./Boardcss/image/a2.png", "./Boardcss/image/a3.png", "./Boardcss/image/a4.png", 
		 "./Boardcss/image/a5.png", "./Boardcss/image/a6.png", "./Boardcss/image/a7.png", "./Boardcss/image/a8.png",
		 "./Boardcss/image/a9.png", "./Boardcss/image/a10.png","./Boardcss/image/a11.png", "./Boardcss/image/a12.png"};
 %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>flower Dog</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Boardcss/css/adop_list.css" rel="stylesheet" />
</head>

<body>

	<script>
		function fnad(bolder,img,info_img) {

			location.href = "adop_intro copy.jsp?bolder=" + bolder + "&img="
					+ img + "&info_img=" + info_img;

		}
	</script>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="main.jsp"><img
				src="./Boardcss/image/logo.png" alt="" style="width: 100px;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a href="main.jsp" class="nav-link active" aria-current="page" href="#!">메인</a></li>
					<li class="nav-item"><a href="noticeboard.jsp"
						class="nav-link" href="#!">게시판</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">입양리스트</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a href="adop_guide.jsp" class="dropdown-item" href="#!">입양가이드</a></li>
							<li>
								<hr class="dropdown-divider" />
							</li>
							<li><a href="adop_list.jsp" class="dropdown-item" href="#!">입양아이들</a></li>
							<li><a class="dropdown-item" href="adop_map.jsp">주변 보호소 찾기</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
				</form>
			</div>
		</div>
	</nav>
	<!-- Header-->
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">Dog Adoption</h1>
				<hr style="border: solid 3px;">
				<br>
				<p class="lead fw-normal text-white-10 mb-0">사지말고 입양하세요</p>
			</div>
		</div>
	</header>
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<%
				
				String[] type = { "믹스", "믹스", "믹스", "믹스", "믹스", "믹스", "치와와", "믹스", "보더콜리", "진도믹스", "시바견", "셰퍼드" };
				String[] age = { "7살", "3살", "4살", "1살", "5살", "2살", "2살", "4살", "4살", "1살", "5살", "2살", };
				String[] gender = { "남아", "여아", "여아", "남아", "남아", "남아", "남아", "남아", "남아", "남아", "남아", "남아", };
				%>

				<%
				for (int i = 0; i <= 11; i++) {
				%>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="./Boardcss/image/a<%=i + 1%>.png"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">

							<div class="text-center">
								<!-- 이름-->
								<h5 class="fw-bolder"><%=bolder[i]%></h5>
								<hr>
								<br>
								<!-- 종, 나이, 성별-->
								<span class="dog_type">[<%=type[i]%>]
								</span> <span class="dog_age"> <%=age[i]%>
								</span> <span class="dog_gender"> <%=gender[i]%>
								</span>
							</div>
							<br> <br>
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										onclick='fnad("<%=bolder[i]%>","<%=img[i]%>", "<%=info_img[i]%>")'>상세보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">
				Flower dog 2022 <br> Tel : 010-1234-5678
			</p>

		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>