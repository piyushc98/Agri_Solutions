<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<%@include file="agri.css" %>
</style>
</head>
<body>
<%@ include file="agrihead.jsp" %>
<h1 class="h1">Farmer Details</h1>
<div class="home">
  <% out.println(session.getAttribute("username"));%><br>
  <% out.println(session.getAttribute("user"));%><br><br>
  <a href="AgriSolution.jsp">Home</a><br><br>
   <a href="farmersoil.jsp">Soil</a><br><br>
  <a href="farmercrops.jsp">Crops</a><br><br>
  <a href="farmerinsurance.jsp">Insurance</a><br><br>
  <a href="farmerland.jsp">Land</a><br><br>
  <a href="contactagri.jsp">Query/Feedback</a><br><br>
  <a href="logoutuser ">Logout</a>
</div>
</body>
</html>