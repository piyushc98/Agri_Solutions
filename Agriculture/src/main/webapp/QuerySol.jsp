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
	    padding:35px;
		color:#191970;
		font-size:18px;
		text-align:center;
		font-family: cursive;
		border-radius: 10px 100px / 120px;
		position:fixed;
	    top:180px;
	    margin-left: 320px;
	    text-align:center;
} 
  .t1{
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
<script> 
function f1(k)
{
	//var v=document.getElementById(k).value;
	document.write("hello India");
}

</script> 
</head>
<body bgcolor="#E6E6FA">
<%@ include file="admin.jsp" %>
<div class="table">
<form action="updatecontact">
<% 
try{ 	
	//	out.println("sucess");
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("Select  contact.cid, contact.Subject,   contact.Message,   contact.Domain,   agri.name,   agri.phone_no,   contact.Remarks  From contact Inner Join agri On contact.phone_no = agri.phone_no");
		out.println("<table border=1 class='t1' cellpadding=10><tr class='t'><th>Farmer_Name</th><th> Phone_No  </th><th> Subject  </th><th> Domain  </th><th> Message </th></th><th> Solution </th></th></tr> ");
		while(rs.next())
		{
			out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("phone_no")+"</td><td>"+rs.getString("Subject")+"</td><td>"+rs.getString("Domain")+"</td><td>"+rs.getString("Message")+"</td>");
			out.println("<input type='hidden'  value="+rs.getString("cid")+">");
			out.println("<td><textarea id="+"sol"+rs.getString("cid")+" name="+"sol"+rs.getString("cid")+" rows='8' cols='33'></textarea></td>");
			out.println("<td><input type='submit' name= value='Add Solution'/></td></tr>");
		}
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
		
	}catch(Exception e){System.out.println(e);}
%>
</form>
</body>
</html>