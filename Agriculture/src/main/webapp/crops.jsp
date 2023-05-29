<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>crops</title>
<style type="text/css">
  <%@include file="agri.css" %>
</style>
</head>
<body>
<%@ include file="admin.jsp" %> 
<div class="sign"> 
<form action="crops">
<h1>Add Crops</h1>
<table>
	<tr><td>Crop Name</td><td><input type='text' name='c1' placeholder="Enter Crop"/></td></tr>
	<tr><td>Season</td><td><input type='text' name='s1' placeholder="Enter Season"/></td></tr>
	
	
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add'/></td></tr>
	</table>
</form>
</div>

</body>
</html>