<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	 MemberDTO info = (MemberDTO)session.getAttribute("info");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>flower Dog</title>
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="Flower" />
  <meta property="og:title" content="Flower Dog" />
  <meta property="og:description" content="Flower Dog는 각 반려동물 굿즈 반패와 유기동물의 입양을 도와주고 있습니다." />
  <meta property="og:image" content="./images/starbucks_seo.jpg" />
  <meta property="og:url" content="https://flowerdog.co.kr" />

  <meta property="twitter:card" content="summary" />
  <meta property="twitter:site" content="Flower" />
  <meta property="twitter:title" content="Flower Dog" />
  <meta property="twitter:description" content="Flower Dog는 각 반려동물 굿즈 반패와 유기동물의 입양을 도와주고 있습니다." />
  <meta property="twitter:image" content="./images/starbucks_seo.jpg" />
  <meta property="twitter:url" content="https://flowerdog.co.kr" />
  <link rel="icon" href="./favicon.png"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="./Boardcss/css/main.css"/>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js" integrity="sha512-gmwBmiTVER57N3jYS3LinA9eb8aHrJua5iQD7yqYCKa5x6Jjc7VDVaEA0je0Lu0bP9j7tEjV3+1qUm6loO99Kw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
  <!-- SWIPER -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
  <script src="./Boardcss/js/video.js"></script>
  <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>
  <script defer src="./Boardcss/js/main.js"></script>
</head>
<body>
<!-- HEADER -->
 <header>
  <div class="inner">
    <a href="main.jsp" class="logo">
      <img src="./Boardcss/image/logo.png" alt="꽃개"/>
    </a>

    <div class="sub-menu">
      <ul class="menu">
        <li>
         <%if(info != null) {%>
          <a href="loginout">로그아웃</a>
        <%} else{%>
       	  <a href="login.jsp">로그인</a>	
     	<%} %>
        </li>
        <li>
          <a href="javascript:void(0)">My page</a>
        </li>
      </ul>
      <div class="search">
        <input type="text"/>
        <div class="material-icons">search</div>
      </div>
    </div>
    <ul class="main-menu">
      <li class="item">
        <div class="item__name">회사 소개</div>
      </li>
      <li class="item">
        <div class="item__name"><a href="Product_list.jsp">상품</a></div>
      </li>
      <li class="item">
        <div class="item__name"><a href="adop_list.jsp">입양</a></div>

      <li class="item">
      <%if(info != null) {%>
        <div class="item__name"><a href="noticeboard.jsp" >게시판</a></div>

      <%}%>  

      </li>
    </ul>
  </div>
</header>
<!-- VISUAL -->
<section class="visual">
  <div class="promotion">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="./Boardcss/image/promotion1.png" alt="꽃개1"/>
        </div>
        <div class="swiper-slide">
          <img src="./Boardcss/image/promotion2.png" alt="꽃개2"/>
        </div>
        <div class="swiper-slide">
          <img src="./Boardcss/image/promotion3.png" alt="꽃개3"/>
        </div>
        <div class="swiper-slide">
          <img src="./Boardcss/image/promotion4.png" alt="꽃개4"/>
        </div>
        <div class="swiper-slide">
          <img src="./Boardcss/image/promotion4.png" alt="5"/>
        </div>
      </div>
    </div>
    <div class="swiper-pagination"></div>
    <div class="swiper-prev">
      <div class="material-icons">arrow_back</div>
    </div>
    <div class="swiper-next">
      <div class="material-icons">arrow_forward</div>
    </div>
  </div>
  <div class="content">
    <div class="inner">
      <div class="fade-in">
        <div class="container">
          <div class="animals">
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
            <div class="animal">
              <div class="image"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- YOUTUBE VIDEO -->
  <section class="youtube">
    <div class="youtube__area">
      <div id="player"></div>
    </div>
    <div class="youtube__cover"></div>
    <div class="inner">
    </div>
  </section>
  
 

</body>


</html>