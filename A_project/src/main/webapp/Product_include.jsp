<%@page import="Model.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>flower Dog</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./Boardcss/css/product_detail.css" rel="stylesheet" />
        
</head>

		<% String img = request.getParameter("img");
			String name = request.getParameter("name");
			String price = request.getParameter("price") ;
			%>

        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<%=img%>" alt="..." /></div>
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder"><%=name%></h1>
                        
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through"></span>
                            <div>할인가</div>
                            <span><%=price%>원</span>
                        </div>수량
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button" onclick='fnCart("<%=img%>","<%=name%>", "<%=price%>")'>
                                <i class="bi-cart-fill me-1"></i>
                                장바구니 담기
                            </button>
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">결제</button>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <p class="lead">상품설명</p>

        </section>
        

</html>