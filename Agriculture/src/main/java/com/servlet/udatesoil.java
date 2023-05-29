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

@WebServlet("/udatesoil")
public class udatesoil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public udatesoil() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("usoil");
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
			out.println("update table farmersoil set Soil_id="+s1+" where Fsoil_Id="+s2+"");
	        
		    st1.executeUpdate("update farmersoil set Soil_Id="+s1+" where Fsoil_Id="+s2+"");
		    out.println("update farmersoil set Soil_Id="+s1+" where Fsoil_Id="+s2+"");
	        }catch(Exception e)
		    {out.println(e);}
	}

}
