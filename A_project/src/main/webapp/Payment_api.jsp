<%@page import="Model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
  <title>결제하기</title>
  <script src="https://js.tosspayments.com/v1/payment"></script>
</head>
<body>
<% int pay = (int)session.getAttribute("pay") ; %>

  <script>
  
    clientKey = 'test_ck_5GePWvyJnrKaj1AD7o13gLzN97Eo'
    tossPayments = TossPayments(clientKey) 
    tossPayments.requestPayment('카드', { 
    	
    	  amount: <%//여기에다가 받아온 값 적으면 됨%>,
    	  orderId: '1RPUbUDqwRNYi9Rej_kIi',
    	  orderName: '쿠리 입양비',
    	  customerName: '입양비',
    	  successUrl: 'http://localhost:8080/success',
    	  failUrl: 'http://localhost:8080/fail',
    	})
    	.catch(function (error) {
    	  if (error.code === 'USER_CANCEL') {
    	  } else if (error.code === 'INVALID_CARD_COMPANY') {
    	  }
    	})
  </script>
  
  

  
  
</body>