<%@page import="Model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>
<link  rel ="stylesheet" type = "text/css" href ="shopping.css">
</head>
<body>

<%-- 	<% 
	request.setCharacterEncoding("utf-8");
	List<ProductDTO> list = request.getAttribute("productList"); 
	%> --%>
	<div id="warp" align="center">
	<h1>상품 리스트 - 관리자페이지</h1>
	<table class="list">
		<tr>
			<td colspan="5" style="border:white; text-align:right">
				<a href="ProductWrite.jsp">상품 등록</a>
			</td>
		</tr>
	
		<tr><th>번호</th><th>이름</th><th>가격</th><th>수정</th><th>삭제</th></tr>
		
 		<c:forEach var="product" items="${productList}">
		<tr class="record">
		
			<td> ${product.pro_seq} </td>
			<td> ${product.pro_name} </td>
			<td> ${product.pro_price} 원</td>
			
			<td>
				<a href="ProductUpdate.do?pro_number=${product.pro_seq}">상품 수정</a>
			</td>
			<td>
				<a href="ProductDelete.do?pro_number=${product.pro_seq}">상품 삭제</a>
			</td>
		</tr>

	</c:forEach>
	
		
	</table>
	</div>
	
</body>
</html>