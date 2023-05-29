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

@WebServlet("/updatecontact")
public class updatecontact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updatecontact() {
        super();
        
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String s=request.getParameter("val2");
		String sol=request.getParameter(s);
		String id=request.getParameter("val");
	
		out.println(id);
		out.println(s);
		out.println(sol);
	    
	 
	    
		out.println("Hello Server ");
		try{ 	
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
			Statement st=con.createStatement();
			//out.println(update contact set Remarks="+sol+" where cid="+id+");
			st.executeUpdate("update contact set Remarks='"+sol+"' where cid="+id+"");
		}catch(Exception e){System.out.println(e);}
	}
	}


