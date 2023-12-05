<%@page import="cn.tech.connection.DbCon" %>
<%@page import="cn.tech.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
    	response.sendRedirect("index.jsp");
    }
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
    	request.setAttribute("cart_list", cart_list);
    }
%> 
<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<%@include file="includes/header.jsp" %>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
<div class="container">
<div class="card w-50 mx-auto my-5">
<div class="card-header text-center"> Login</div>
<div class="card-body">
<form action="user-login" method="post">

	<div class="form-group">
	<label>Email address</label>
	<input type="email" class="form-group" name="login-email" placeholder="Enter your email" required>
	</div>
	
	<div class="form-group">
	<label>Password</label>
	<input type="password" class="form-group" name="login-password" placeholder="******" required>
	</div>
	
	<div>
	<button type="submit" class="btn btn-primary">Login</button>
	</div>
	
</form>
</div>
</div>
</div>


<%@include file="includes/footer.jsp" %>
</body>
</html>