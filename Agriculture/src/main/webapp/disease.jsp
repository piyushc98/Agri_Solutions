<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>disease</title>
</head>
<body>
<%@ include file="admin.jsp" %>
<div class="sign"> 
<form action="disease">
<h1>Add Crop Disease</h1>
<table>
	<tr><td>Disease Name</td><td><input type='text' name='d1' placeholder="Enter Soil Type"/></td></tr>
	<tr><td>Disease Description</td><td><input type='text' name='d2' placeholder="Enter Soil Description"/></td></tr>
	<tr><td>Disease Solution</td><td><input type='text' name='d3' placeholder="Enter Soil Description"/></td></tr>
	
	
	
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add'/></td></tr>
	</table>
</form>
</div>
</body>
</html>