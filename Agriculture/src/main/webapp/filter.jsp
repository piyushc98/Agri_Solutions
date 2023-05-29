<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<%@ include file="agri.css"%>
.div{
    width:100vw;
	display:inline;
	font-size:18px;
	height:90px;
	float: left;
	color:white;
	font-size:20px;
	padding-top:20px;
	color:#800000;
	font-family: cursive;
	text-align:center;
}
</style>
</head>
<body>
<form action="farmers.jsp">
<div>
      
      <input type="radio" id="Choice1" name="contact" value="Total_Land" />
      <label  class="fill" for="contactChoice1">Total_land</label>&nbsp;&nbsp;&nbsp;

      <input type="radio" id="Choice2" name="contact" value="Soil_Type" />
      <label for="contactChoice2">Soil</label>&nbsp;&nbsp;&nbsp;

      <input type="radio" id="Choice3" name="contact" value="Crop_Name" />
      <label for="contactChoice3">Crops</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <input type="text" id="name" name="name"  maxlength="10" size="10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
       <input type="submit" value="Filter"/>

</div>
</form>
</body>
</html>