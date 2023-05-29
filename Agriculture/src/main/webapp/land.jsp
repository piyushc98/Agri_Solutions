<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="admin.jsp" %>
<div class="sign"> 
<form action="land">
<h1>Add Irrigation Method</h1>
<table>
	<tr><td>Irrigation Method</td><td><input type='text' name='s1' placeholder="Enter Method"/></td></tr>
	
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add'/></td></tr>
	</table>
</form>
</div>
</body>
</html>