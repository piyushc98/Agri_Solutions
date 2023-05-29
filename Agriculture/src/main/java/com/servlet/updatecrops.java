package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatecrops")
public class updatecrops extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updatecrops() {
        super();  
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("fd");
		String s2=request.getParameter("h1");
		PrintWriter out = response.getWriter();
		out.println(s1);
		out.println(s2);
		
	try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
			out.println("update table farmercrops set Crop_id="+s1+" where Fcrop_Id="+s2+"");
	        
		    st1.executeUpdate("update farmercrops set Crop_Id="+s1+" where Fcrop_Id="+s2+"");
		    //out.println("update farmersoil set Soil_Id="+s1+" where Fsoil_Id="+s2+"");
	        }catch(Exception e)
		    {out.println(e);}
	}

}
