<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 <%@include file="agri.css" %>
   .table{
          padding:35px;
	      color:#191970;
	      font-size:18px;
	      text-align:center;
       	  font-family: cursive;
	      border-radius: 10px 100px / 120px;
	      position:fixed;
          top:180px;
          margin-left: 420px;
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
</head>
<body bgcolor="lightblue">
<%@ include file="admin.jsp" %>
<%@ include file="filter.jsp" %>
<div class="table">
<% 
String fieldname=request.getParameter("contact");
String val=request.getParameter("name");
out.println(fieldname);
out.println(val);
try{ 	
		String q="Select agri.phone_no, agri.name,  farmerland.Total_Land,  farmerland.NonAgriculture_Land,  farmerland.Agriculture_Land,  crops.Crop_Name,  soil.Soil_Type, insurance.Company_Name, land.Irrigation_Method,  farmersoil.Fsoil_id, farmerinsu.Insu_Id, farmercrops.Fcrop_Id  From agri Inner Join farmerland On farmerland.phone_no = agri.phone_no Inner Join land On farmerland.Irrigation_Id = land.Irrigation_Id Inner Join   farmercrops On farmercrops.phone_no = agri.phone_no Inner Join   crops On farmercrops.Crop_Id = crops.Crop_Id Inner Join  farmerinsu On farmerinsu.phone_no = agri.phone_no Inner Join  insurance On farmerinsu.Insurance_Id = insurance.Insurance_Id Inner Join farmersoil On farmersoil.phone_no = agri.phone_no Inner Join soil On farmersoil.Soil_Id = soil.Soil_Id";
		if(fieldname!=null)
			q=q+" where "+fieldname+" = '"+val+"'";
		
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(q);
		out.println("<table border=1 class='t1' cellpadding=10><tr class='t'><th> Farmer </th><th> Total_Land </th><th> Agriculture_Land  </th><th> Non-Agriculture_Land  </th><th> Soil  </th><th> Crops  </th><th> Insurance  </th></tr> ");
		while(rs.next())
			out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("Total_Land")+"</td><td>"+rs.getString("Agriculture_Land")+"</td><td>"+rs.getString("NonAgriculture_Land")+"</td><td>"+rs.getString("Soil_Type")+"</td><td>"+rs.getString("Crop_Name")+"</td><td>"+rs.getString("Company_Name")+"</td></tr>");
		
		//out.println(rs.getString("soil.Soil_Type"));
		out.println("</table>");
		//out.println("Data Inserted Succesfully ");
	}catch(Exception e){System.out.println(e);}
%>
</div>
</body>
</html>