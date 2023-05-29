<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insurance </title>
<style type="text/css">
  <%@include file="agri.css" %>
</style>
</head>
<body>
<%@ include file="admin.jsp" %>
<div class="sign"> 
<form action="insurance">
<h1>Add Insurance Company</h1>
<table>
	<tr><td>Company Name</td><td><input type='text' name='c1' placeholder="Enter CompanyName"/></td></tr>
	<tr><td>Parent Company</td><td><input type='text' name='p1' placeholder="Enter ParentCompany"/></td></tr>
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add'/></td></tr>
	</table>
</form>
</div>
</body>
</html>