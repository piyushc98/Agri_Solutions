<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soil</title>
<style type="text/css">
<%@include file="agri.css" %>
</style>
</head>
<body>
<%@ include file="admin.jsp" %>
<div class="sign"> 
<form action="soil">
<h1>Add Soil</h1>
<table>
	<tr><td>Soil Type</td><td><input type='text' name='s1' placeholder="Enter Soil Type"/></td></tr>
	<tr><td>Soil Description</td><td><input type='text' name='s2' placeholder="Enter Soil Description"/></td></tr>
	<tr><td>Soil Image</td><td><input type='file' name='img' name='mg1'/></td></tr>
	
	
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add'/></td></tr>
	</table>
</form>
</div>
</body>
</html>