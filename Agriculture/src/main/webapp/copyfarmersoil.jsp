<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>farmer soil</title>
<style type="text/css">
 <%@include file="agri.css" %>
</style>
</head>
<body bgcolor="lightblue">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="udatesoil">
<h1>Farmer Choose your Soil</h1><br>
<label for="soil">Choose Soil:</label><br>
 <% 

try{ 			
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from soil");
    
    out.println("<select name=usoil>");
    while(rs.next())
    { 
    %>
    	<label for="soil">choose soil:</label>
    	<option value=<%=rs.getString("Soil_Id")%>> <%=rs.getString("Soil_Type") %></option>
    <% 
    }
    %>
   <input type="submit" value="Update"><br><br>
   <% 
	 String phn=String.valueOf(session.getAttribute("user"));
	 out.println("value of session::"+phn);
	 String sid1=request.getParameter("val");
	 out.println("value of edit_ID::"+sid1);
    %>
 	<input type="hidden" value=<%=request.getParameter("val")%> name="h1">
    <% 
    out.println("</select>");
}catch(Exception e)
{out.println(e);} 
    %>
</form>
</div>
</body>