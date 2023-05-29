<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  <%@include file="agri.css" %>
  body{
background-image:url("https://www.shutterstock.com/image-photo/summer-grass-meadow-motion-blur-260nw-573715789.jpg");
background-size:cover;
}
</style>
<body>
<%@ include file="agrihead.jsp" %> 
<%@ include file="headlinks.jsp" %>
<div class="create">
  <form action="newagriaccount">
  <h1>Create Your Agri Account</h1>
  <table>
	<tr><td>Farmer Name</td><td><input type='text' name='t1' placeholder="Enter Your Name"/></td></tr>
	<tr><td>Phone No</td><td><input type='text' name='t2' placeholder="Enter PhoneNo"/></td></tr>
	<tr><td>Gender</td><td><input type="radio" id="html" name="fav_language" value="HTML">
    <label for="html">Male</label>
    <input type="radio" id="css" name="fav_language" value="CSS">
    <label for="css">Female</label></td></tr>
	<tr><td>Adhar Number</td><td><input type='text' name='a1'placeholder="Enter AdharNo"/></td></tr>
	<tr><td> Create Password</td><td><input type='text' name='p1'/></td></tr>
	<tr><td>ConfirmPassword</td><td><input type='text' name='p2'/></td></tr>
	<tr><td colspan="5" style="text-align:center"><input type='submit'/></td></tr>
	</table>
</form>
</div>
</body>
</html>