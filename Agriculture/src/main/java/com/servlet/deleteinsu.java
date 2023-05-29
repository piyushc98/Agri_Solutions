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


@WebServlet("/deleteinsu")
public class deleteinsu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteinsu() {
        super();
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  int k=Integer.parseInt(request.getParameter("id"));
			PrintWriter out = response.getWriter();
			//HttpSession session=request.getSession();
			//String usname=String.valueOf(session.getAttribute("user"));
			String ins=request.getParameter("val");
				
				try{ 	
					out.println("ssuccess");
					Class.forName("com.mysql.cj.jdbc.Driver");  
				    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
					Statement st=con.createStatement();
					st.executeUpdate("delete from farmerinsu where Insu_Id="+ins);	
				}catch(Exception e){System.out.println(e);}
					//out.println("k = "+k);
				if(k==1)
					response.sendRedirect("farmerinsurance.jsp");
	}

}
