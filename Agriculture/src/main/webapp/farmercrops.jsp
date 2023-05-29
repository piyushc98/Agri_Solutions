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
          background-image:url("https://www.openaccessgovernment.org/wp-content/uploads/2020/01/dreamstime_xxl_121974236.jpg");
	      background-size:cover;
}
</style>
</head>
<body bgcolor="lightpink">
<%@ include file="farmerhome.jsp" %>
<div class="farm">
<form action="farmercrops">
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
		ResultSet rs=st.executeQuery("Select farmercrops.Fcrop_Id,agri.phone_no, disease.Disease_Name, disease.Disease_Sol, farmercrops.Disease_Id, crops.Season, crops.Crop_Name, farmercrops.Crop_Id From  farmercrops Inner Join  agri On farmercrops.phone_no = agri.phone_no Inner Join  disease On farmercrops.Disease_Id = disease.Disease_Id Inner Join  crops On farmercrops.Crop_Id = crops.Crop_Id Where  agri.phone_no ='"+phn+"'");
		out.println("<table border=1 cellpadding=10><tr style=color:#073ef2;><th> Crop_Type </th><th> Season </th><th> Disease </th><th> Disease_Sol </th><th> Delete </th><th> Edit </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("Crop_Name")+"</td><td>"+rs.getString("Season")+"</td><td>"+rs.getString("Disease_Name")+"</td><td>"+rs.getString("Disease_Sol")+"</td><td><a href=deletecrops?val="+rs.getInt("Fcrop_Id")+"&id=1>Delete </td><td><a href=copyfarmercrops.jsp?val="+rs.getInt("Fcrop_Id")+"&id=1>Edit </td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
		
		
	}catch(Exception e){System.out.println(e);}
%>
</div>
</body>