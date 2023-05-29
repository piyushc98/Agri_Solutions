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
<form action="farmerinsu">
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
		ResultSet rs=st.executeQuery("Select farmerinsu.Insu_Id, farmerinsu.Insurance_Id, agri.phone_no, insurance.Company_Name, insurance.Parent_Company From insurance Inner Join farmerinsu On farmerinsu.Insurance_Id = insurance.Insurance_Id Inner Join agri On farmerinsu.phone_no = agri.phone_no Where agri.phone_no = '"+phn+"'");
		out.println("<table border=1 cellpadding=10><tr><th>Company_Name  </th><th> Parent_Company  </th><th> Delete </th><th> Edit </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("Company_Name")+"</td><td>"+rs.getString("Parent_Company")+"</td><td><a href=deleteinsu?val="+rs.getInt("Insu_Id")+"&id=1>Delete </td><td><a href=copyfarmerinsu.jsp?val="+rs.getInt("Insu_Id")+">Edit </td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
		
		
	}catch(Exception e){System.out.println(e);}
%>

</div>
</body>