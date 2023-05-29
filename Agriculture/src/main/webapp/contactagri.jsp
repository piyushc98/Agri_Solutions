<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .table{
      margin-top: 30px;
      margin-left:600px;
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
<body bgcolor="#FFF0F5">

<%@ include file="farmerhome.jsp" %>

<div class="farm"> 
 	
 	<form action="contact">
 	<h1 style="margin-right:150px;">Ask your Query</h1><br>
  	<table>
	<tr><td>Subject:</td><td><input type='text' name='q1'/></td></tr>
	<tr><td><label for="pet-select">Domain:</label></td>
    <td><select name="query" id="query-select">
    <option value="">--Please choose an option--</option>
    <option value="Soil">Soil</option>
    <option value="Crops">Crops</option>
    <option value="Disease">Disease</option>
    <option value="Land">Land</option>
    <option value="Insurance">Insurance</option>
    <option value="Other">Other</option>
    </select></td></tr>
    <tr><td><label for="story">Message:</label></td></tr>
    <tr><td></td><td><textarea id="story" name="mess" rows="15" cols="33"></textarea></td></tr>
	<tr><td colspan="2" style="text-align:center"><input type='submit' value='Add Query/Feedback'/></td></tr>
	</table>
	
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
		ResultSet rs=st.executeQuery("Select   contact.Subject,   contact.Message,   contact.Domain,   agri.name,   agri.phone_no,   contact.Remarks  From contact Inner Join agri On contact.phone_no = agri.phone_no where agri.phone_no='"+phn+"'");
		out.println("<table border=1 class='t1' cellpadding=10><tr class='t'><th>Farmer_Name</th><th> Phone_No  </th><th> Subject  </th><th> Domain  </th><th> Message </th><th> Remarks </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("phone_no")+"</td><td>"+rs.getString("Subject")+"</td><td>"+rs.getString("Domain")+"</td><td>"+rs.getString("Message")+"</td><td>"+rs.getString("Remarks")+"</td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
		
		
	}catch(Exception e){System.out.println(e);}
%>
	</div>
</body>
</html>