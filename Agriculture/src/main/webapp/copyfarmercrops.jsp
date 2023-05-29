<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>farmer crops</title>
<style type="text/css">
  <%@include file="agri.css" %>

</style>
</head>
<body bgcolor="lightpink">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="updatecrops">
<h1>Farmer Choose Your Crops</h1><br>
<label for="crop">Choose Crops:</label><br>
<% 
try{ 		
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from crops");
    
    out.println("<select name=fcrop>");
    while(rs.next())
    { 
    %>
    	<label for="soil">choose crop:</label>
    	<option value=<%=rs.getString("Crop_Id")%>> <%=rs.getString("Crop_Name") %></option>
    <% 
    }
    out.println("</select>");
}catch(Exception e)
{out.println(e);}

%>
<h1>Farmer Choose Disease</h1><br>
<label for="disease">Choose Disease:</label><br>
<% 
try{ 		
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from disease");
    
    out.println("<select name=fd>");
    while(rs.next())
    { 
    %>
    	<label for="fdi">choose disease:</label>
    	<option value=<%=rs.getString("Disease_Id")%>> <%=rs.getString("Disease_Name") %></option>
    <% 
    } 
    out.println("</select>");
}catch(Exception e)
{out.println(e);}
%>
  <input type="submit" value='Update'>
  <% 
	 String phn=String.valueOf(session.getAttribute("user"));
	 out.println("value of session::"+phn);
	 String sid1=request.getParameter("val");
	 out.println("value of edit_ID::"+sid1);
 %>
 	<input type="hidden" value=<%=request.getParameter("val")%> name="h1">

</body>