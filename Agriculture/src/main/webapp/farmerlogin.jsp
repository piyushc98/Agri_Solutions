<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<%@ include file="agri.css"%>
 body{
     background-image:url("https://images.theconversation.com/files/163337/original/image-20170330-4592-1n4ji0f.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop");
     background-size:cover;
}
</style>
</head>
<body>
<%@ include file="agrihead.jsp" %> 
<%@ include file="headlinks.jsp" %>
 
<div class="login"> 
 	
 	<form action="validateagridetails">
 	<h1>Login into your Account</h1><br>
  	<table>
	<tr><td>UserId</td><td><input type='text' name='q1' placeholder="Enter your PhoneNo"/></td></tr>
	<tr><td>Password</td><td><input type='text' name='q2' placeholder="Enter Password"/></td></tr>
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='login'/></td></tr>
	</table>
	
</form>
</div>
</body>
</html>