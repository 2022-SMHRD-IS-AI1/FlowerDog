<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./Boardcss/css/pay_info.css" rel="stylesheet" />
</head>
<body>
<div>
		<form action="Payment_goods.jsp">
			<h1>주문자 정보입력</h1>
			<p>
				<label>이름</label><span><input type="text"></span>
			</p>
			<p>
				<label>휴대폰</label> <span><select>
						<option>010</option>
						<option>011</option>
						<option>019</option>
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
					type="button" value="우편번호 검색"><br> <input type="text"
					class="text2"><br> <input type="text" class="text2"><span>
			</p>
			<p class="submit">
				<input class="submit2" type="submit" value="주문신청완료"/>
			</p>
		</form>
	</div>
</body>
</html>