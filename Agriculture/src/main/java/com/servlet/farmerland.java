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

@WebServlet("/farmerland")
public class farmerland extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public farmerland() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String total=request.getParameter("tl");
		String aland=request.getParameter("al");
		String naland=request.getParameter("nal");
		String irri=request.getParameter("fland");
		HttpSession session=request.getSession();
		String phn=String.valueOf(session.getAttribute("user"));
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		
	try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
		    st1.executeUpdate("insert into farmerland(Total_Land,Agriculture_Land,NonAgriculture_Land,Irrigation_Id,phone_no) values('"+total+"','"+aland+"','"+naland+"','"+irri+"','"+phn+"')");
		    
	        }catch(Exception e)
		    {out.println(e);}
	}

}
