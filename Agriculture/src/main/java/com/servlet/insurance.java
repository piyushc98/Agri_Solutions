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


@WebServlet("/insurance")
public class insurance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public insurance() {
        super();
   }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cname=request.getParameter("c1");
		String pname=request.getParameter("p1");
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		
	try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
		    st1.executeUpdate("insert into insurance(Company_Name,Parent_Company) values('"+cname+"','"+pname+"')");
		    
	        }catch(Exception e)
		    {out.println(e);}
	}

}
