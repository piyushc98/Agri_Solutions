package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/newagriaccount")
public class newagriaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public newagriaccount() {
        super();   
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("t1");
		String fphno=request.getParameter("t2");
		String fgen=request.getParameter("u1");
		String fadno=request.getParameter("a1");
		String fpass=request.getParameter("p1");
		String fcpass=request.getParameter("p2");
		
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		try{ 	
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
			Statement st=con.createStatement();
			st.executeUpdate("insert into agri(name,phone_no,gender,adhar_no,password,cpassword) values('"+fname+"','"+fphno+"','"+fgen+"','"+fadno+"','"+fpass+"','"+fcpass+"')");
			response.sendRedirect("farmerlogin.jsp");
		}catch(Exception e){System.out.println(e);}
	}

}
