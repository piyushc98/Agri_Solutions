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
          margin-right: 20px;	
}
   tr:nth-child(even){
          background-color: #f2f2f2;
}
   body{
          background-image:url("https://thumbs.dreamstime.com/b/fertile-soil-handful-earth-hand-sustainable-farming-fertile-soil-handful-earth-hand-sustainable-farming-218325077.jpg");
	      background-size:cover;
}
</style>
</head>
<body bgcolor="lightblue">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="farmersoil">
<h1>Farmer Choose your Soil</h1><br>
<label for="soil">Choose Soil:</label><br>
<% 
try{ 		
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from soil");
    
    out.println("<select name=fsoil>");
    while(rs.next())
    { 
    %>
    	<label for="soil">choose soil:</label>
    	<option value=<%=rs.getString("Soil_Id")%>> <%=rs.getString("Soil_Type") %></option>
    <% 
    }
    %>
   <input type="submit">
    <% 
    out.println("</select>");
}catch(Exception e)
{out.println(e);}
%>
</form>
</div>
<div class="table">
<% 
String phn=String.valueOf(session.getAttribute("user"));
out.println(phn);

try{ 	
	//	out.println("sucess");
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("Select farmersoil.Fsoil_id,soil.Soil_Type, soil.Soil_Desc, farmersoil.phone_no From farmersoil Inner Join soil On farmersoil.Soil_Id = soil.Soil_Id Where farmersoil.phone_no = '"+phn+"'");
		out.println("<table border=1 cellpadding=10><tr><th> Soil_Type </th><th> Description  </th><th> Delete </th><th> Edit </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("Soil_Type")+"</td><td>"+rs.getString("Soil_Desc")+"</td><td><a href=deletesoil?val="+rs.getInt("Fsoil_Id")+"&id=1>Delete </td><td><a href=copyfarmersoil.jsp?val="+rs.getInt("Fsoil_Id")+">Edit </td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
	}catch(Exception e){System.out.println(e);}
%>
</div>	
</body>