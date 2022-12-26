<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String name = info.getName();
	%>
<form action="Adopting_Service" method="post">
	
	
	<div>
		<label for="serialnum"><strong>입양하는 동물의 일련번호를 적어주세요</strong> </label> <div><input type="text" name="serialnum" placeholder="숫자만 입력해주세요">
	</div>
	</div>
	<div>
		<label for="name"><strong>신청인 성명</strong> </label> <div><input type="text" name="name" value="<%=name %>" readonly/>
	</div>
	</div>
	<div>
		<label for="gender"><strong>성별</strong> </label> 
		<input type="radio" name="gender" value="남"><span>남</span>
		<input type="radio" name="gender" value="여"><span>여</span>
	</div>
	<div>
		<label for="age"><strong>나이</strong> </label> <input type="number" name="age"
			placeholder="숫자만 입력">
	</div>
	<div>
		<label for="tel"><strong>전화번호</strong> </label> <input type="text" name="tel"
			placeholder="숫자만 입력">
	</div>
	<div>
		<label for="email"><strong>이메일</strong> </label> <input type="text" name="email">
	</div>
	<div>
		<label for="city"><strong>살고있는 지역</strong> </label> <input type="text" name="city"
			placeholder="(예: 서울,경기,강원 등...)">
	</div>
	<div>
		<label for="merry"><strong>결혼 여부</strong> </label> 
		기혼<input type="radio" name="merry" value="기혼">
		미혼<input type="radio" name="merry" value="미혼">
	</div>
	<div>
		<label for="job"><strong>신청인 직업</strong> </label> <input type="text" name="job">
	</div>
	<input type="submit" value="등록">
</form>
</body>
</html>