<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  rel ="stylesheet" type = "text/css" href ="login.css">
</head>
<body>

<div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <form id="login" action="Login_Service" class="input-group" method = "post">
                    <input type="text" class="input-field" name="id" placeholder="your ID">
                    <input type="password" class="input-field" name="pw" placeholder="your Password">
                    <input type="checkbox" class="checkbox">ID 기억하기</br>
                    <button class="submit" type="submit">Login</button></br>
                    <button class="submit">forget id/pw</button></br>
                    <button class="kakao">?</button></br>
                </form>
                
                <form class="input-group" id="register" action="Join_Service" method="post">
                    <input class="input-field" type="text" name="id" placeholder="ID" required>
                    <input class="input-field" type="password" name="pw" placeholder="Password" required>
                    <input class="input-field" type="text" name="name" placeholder="Name" required>
                    
                    <input type="text" class="input-field" name="rrn" placeholder="Resident registration number" required>
                    
                    <select class="input-field" name = "gender" arai-lable ="gender" >
                    	<option value selected>성별</option>
                    	<option value = "M">M</option>
                    	<option value = "W">W</option>
                    </select>
                 
                    <input class="input-field" type="email" name = "email" placeholder="Email" required>
                    <input class="input-field" type="text" name = "address" placeholder="Address" required>
                    <input class="input-field" type="text" name = "tel" placeholder="Tel" required>
                    </br></br></br></br>

					<div>
					<span> <input type="text" placeholder="인증번호입력">
					<button href="#">인증번호받기</button>
					</span>
					</div>

				<button class="submit" type="submit">REGISTER</button>
                </form>
            </div>
        </div>
       
       
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }
            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }         
        </script>

</body>
</html>

