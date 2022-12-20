<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="utf-8">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>Insert title here</title>
<link  rel ="stylesheet" type = "text/css" href ="login.css">
</head>
<body>

<div class="wrap">
		<!-- 로그인, 회원가입 버튼 -->
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                
                <!-- 로그인 박스 -->
                <form id="login" action="Login_Service" class="input-group" method = "post">
                    <input type="text" class="input-field" name = "id" placeholder="your ID">
                    <input type="password" class="input-field" name = "pw" placeholder="your Password">
                    <input type="checkbox" class="checkbox">ID 기억하기</br>
                    <button class="submit">Login</button></br>
                    <button type = "submit" class="submit">forget id/pw</button></br>
                    <button class="kakao">?</button></br>
                </form>
                
                <!-- 회원가입 박스 -->
                <form id="register" action="login.jsp" class="input-group">
                    <input type="email" class="input-field" name = "id" placeholder="ID" required>
                    <input type="password" class="input-field" name = "pw" placeholder="Password" required>
                    <input type="text" class="input-field"  name = "name" placeholder="User name" required>
                    <input type="date" class="input-field" name = "rrn" placeholder="Birth" required>
                    <select class="input-field" name = "gender" arai-lable ="gender" required>
                    <option value selected>성별</option>
                    <option value = "men">men</option>
                    <option value = "waman">woman</option>
                    </select>
                    <input type="email" class="input-field" name = "eamil" placeholder="Email" required>
                    <input type="text" class="input-field" name = "address" placeholder="Address" required>
                    <input type="text" class="input-field" name = "tel" placeholder="Tel" required>
                    
                    </br></br></br></br>
                    <div>
                    <span>
                    <input type ="text" placeholder = "인증번호입력">
                    <button  href = "#" >인증번호받기</button>
                    </span>
                    
                    </div>
                
                    <button type = "submit" class="submit">REGISTER</button>
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
            
            
            
            // 아이디 기억하기..해보고 있음..
            
          
            
            
          
            
        </script>

</body>
</html>
