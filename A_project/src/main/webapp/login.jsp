<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  rel ="stylesheet" type = "text/css" href ="login02.css">
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
                    <input type="text" class="input-field" name = "id" placeholder="your ID">
                    <input type="password" class="input-field" name = "pw" placeholder="your Password">
                    <input type="checkbox" class="checkbox">Remember ID</br>
                    <button class="submit">Login</button></br>
                    <button class="submit">forget id/pw</button></br>
                    <button class="kakao">?</button></br>
               
                    
                </form>
                
                <form id="register" action="" class="input-group">
                    <input type="email" class="input-field" name = "id" placeholder="ID" required>
                    <input type="password" class="input-field" name = "pw" placeholder="Password" required>
                    <input type="text" class="input-field"  name = "name" placeholder="User name" required>
                    <input type="date" class="input-field" name = "rrn" placeholder="Birth" required>
                    <select class="input-field" name = "gender" arai-lable ="gender" >
                    <option value selected>gender</option>
                    <option value = "men">men</option>
                    <option value = "waman">woman</option>
                    </select>
                    <input type="email" class="input-field" name = "eamil" placeholder="Email" required>
                    <input type="text" class="input-field" name = "tel" placeholder="Tel" required>
                    <input type="text" class="input-field" name = "address" placeholder="Address" required>
                    </br>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        </div>
       
       
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            var p = document.getElementById("pw");
            var p1 = document.getElementById("pw1");
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
