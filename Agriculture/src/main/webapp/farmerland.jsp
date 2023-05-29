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
  .t1{
      border:1px solid black;
      border-collapse: collapse;
      text-transform: none;
      text-align:center; 
      margin-left: auto;
  	  margin-right: auto;
}
        .t:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
</head>
<body bgcolor="lightgrey">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="farmerland">
<h1>Add Your Land</h1>
<table>
	<tr><td>Total Land</td><td><input type='text' name='tl' placeholder="Enter Land in Acres"/></td></tr>
	<tr><td>Agriculture Land</td><td><input type='text' name='al' placeholder="Enter Land in Acres"/></td></tr>
	<tr><td>Non-Agriculture Land</td><td><input type='text' name='nal' placeholder='Land in Acres'/></td></tr>
	<tr><td>
	<label for="land">Choose Irrigation:</label>&nbsp;&nbsp;&nbsp;</td>
	<td>
<% 
try{ 		
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
	Statement st1=con.createStatement();
    ResultSet rs=st1.executeQuery("select * from land");
    
    out.println("<select name=fland>");
    while(rs.next())
    { 
    %>
    	<option value=<%=rs.getString("Irrigation_Id")%>> <%=rs.getString("Irrigation_Method") %></option>
    <% 
    }
    %>
 
    <% 
    out.println("</select>");
}catch(Exception e)
{out.println(e);}
%>
     </tr></td>
  </table>
  <input type="submit">
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
		ResultSet rs=st.executeQuery("Select agri.phone_no, farmerland.NonAgriculture_Land, farmerland.Agriculture_Land,  farmerland.Total_Land,  farmerland.land_id,  land.Irrigation_Id As Irrigation_Id1 From farmerland Inner Join land On farmerland.Irrigation_Id = land.Irrigation_Id Inner Join agri On farmerland.phone_no = agri.phone_no Where agri.phone_no ='"+phn+"'");
		out.println("<table border=1 class='t1' cellpadding=10><tr class='t'><th> Total_Land </th><th> Agriculture_Land  </th><th> Non-Agriculture_Land  </th><th> Delete </th><th> Edit </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("Total_Land")+"</td><td>"+rs.getString("Agriculture_Land")+"</td><td>"+rs.getString("NonAgriculture_Land")+"</td><td><a href=deletesoil?val="+rs.getInt("land_id")+"&id=1>Delete </td><td><a href=copyfarmersoil.jsp?val="+rs.getInt("land_id")+">Edit </td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
		
		
	}catch(Exception e){System.out.println(e);}
%>
	</div>	
</body>