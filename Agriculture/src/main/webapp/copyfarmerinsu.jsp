<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>farmer insu</title>
<style type="text/css">
  <%@include file="agri.css" %>
      .table{
      margin-top: 30px;
      margin-left: 800px;
      text-align:center;
  }
  table,tr,td,th{
            border:1px solid black;
            border-collapse: collapse;
            text-transform: none;
            text-align:center;
            margin-left: auto;
  			margin-right: auto;
  			
        }
        tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
</head>
<body bgcolor="lightgreen">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="updateinsu">
<h1>Farmer Choose Your Insurance</h1><br>
<label for="crop">Choose Insurance:</label><br>
<% 
try{ 		
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from insurance");
    
    out.println("<select name=finsu>");
    while(rs.next())
    { 
    %>
    	<label for="insu">choose insurance:</label>
    	<option value=<%=rs.getString("Insurance_Id")%>> <%=rs.getString("Company_Name") %></option>
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
	 String ins=request.getParameter("val");
	 out.println("value of edit_ID::"+ins);
%>
	<input type="hidden" value=<%=request.getParameter("val")%> name="h1">

 </form>
 </div>

</body>