<%@page import="Model.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link href="./Boardcss/css/product_detail.css" rel="stylesheet" />
<link href="./Boardcss/css/pay_info.css" rel="stylesheet" />


</head>

<body>

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="main.jsp"><img
				src="./Boardcss/image/logo.png" height="100px" width="100px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<!-- <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li> -->

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">모든 제품</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">베스트 상품</a></li>
							<li><a class="dropdown-item" href="#!">새로운 상품</a></li>
						</ul></li>

				</ul>

			</div>
		</div>
	</nav>



	<div class="pay">
		<form action="Payment_goods.jsp">
			<h1>주문자 정보입력</h1>
			<p>
				<label>이름</label><span><input type="text"></span>
			</p>
			<p>
				<label>휴대폰</label> <span><select>
						<option>010</option>
						<optidsfon>011sdfsm
						</option>
				</select> <input type="text">-<input type="text"></span>
			</p>
			<p>
				<label>이메일</label><span><input type="text">@ <select>
						<option>nate.com</option>
						<option>naver.com</option>
						<option>daum.net</option>
				</select></span>
			</p>
			<p>
				<label>배송주소</label><span><input type="text"><input
					type="button" value="우편번호"><br> <input type="text"
					class="text2"><br> <input type="text" class="text2"><span>
			</p>

			<p class="submit">

				<input class="submit2" type="submit" value="상품결제" /> <label><img
					class="submit3" alt="" src="./Boardcss/image/카카오페이.png"> </label>


			</p>
		</form>
	</div>

	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2022</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>

</html>