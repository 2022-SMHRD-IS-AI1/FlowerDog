<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductWrite</title>
<link  rel ="stylesheet" type = "text/css" href ="shopping.css">
<script type="text/javascript" src="Product/Product.js"></script>
</head>
<body>
	
	<div id="wrap" align="center" action="ProductWriterServlet">
	<h1>상품 등록 - 관리자 페이지</h1>
	<form action="" method="post">
	
		<table>
			<tr>
				<th>상 품 명</th>
				<td><input type="text" name="pro_name" size="80"></td>
			</tr>
			<tr>
				<th> 가  격 </th>
				<td><input type="text" name="pro_price"> 원</td>
			</tr>
			<tr>
				<th> 사  진 </th>
				<td>
					<input type="file" name="pro_img"><br>
				</td>
			</tr>
			<tr>
				<th> 설  명 </th>
				<td><textarea cols="80" row="10" name="pro_desc"></textarea></td>
			</tr>
		</table>
	
		<br>
		<input type="submit" value="등록" onclick="return ProductCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록" onclick="location.href='ProductList.jsp'">
		
	</form>
	</div>

</body>
</html>