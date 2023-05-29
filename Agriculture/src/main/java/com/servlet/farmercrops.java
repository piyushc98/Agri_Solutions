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
import javax.servlet.http.HttpSession;

@WebServlet("/farmercrops")
public class farmercrops extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public farmercrops() {
        super();  
    }	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String phn=String.valueOf(session.getAttribute("user"));
		String cid=request.getParameter("fcrop");
		String did=request.getParameter("fd");
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		
	try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
		    st1.executeUpdate("insert into farmercrops(Crop_Id,phone_no,Disease_Id)values("+cid+",'"+phn+"',"+did+")");
		    out.println("Suucessful");
	        }catch(Exception e)
		    {out.println(e);}
	}

}
