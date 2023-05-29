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

@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public contact() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sub=request.getParameter("q1");
		String demo=request.getParameter("query");
		String msg=request.getParameter("mess");
		String rem="Query under process";
		HttpSession session=request.getSession();
		String phn=String.valueOf(session.getAttribute("user"));
		
		
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		try{ 	
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
			Statement st=con.createStatement();
			st.executeUpdate("insert into contact(Subject,Domain,Message,phone_no,Remarks ) values('"+sub+"','"+demo+"','"+msg+"','"+phn+"','"+rem+"')");
		}catch(Exception e){System.out.println(e);}
	}

}
