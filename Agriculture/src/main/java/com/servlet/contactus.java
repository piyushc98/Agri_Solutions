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


@WebServlet("/contactus")
public class contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public contactus() {
        super();
     
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		String uname=request.getParameter("s1");
		String uemail=request.getParameter("s2");
		String uquery=request.getParameter("q1");
		
	try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
		    st1.executeUpdate("insert into contactus(userName,userEmail,userQuery) values('"+uname+"','"+uemail+"','"+uquery+"')");
			out.print("success ");
	        }catch(Exception e)
		    {out.println(e);}
	}

}
