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


@WebServlet("/deletesoil")
public class deletesoil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deletesoil() {
        super();
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int k=Integer.parseInt(request.getParameter("id"));
		PrintWriter out = response.getWriter();
		//HttpSession session=request.getSession();
		//String usname=String.valueOf(session.getAttribute("user"));
		String sid=request.getParameter("val");
			
			try{ 	
				out.println("ssuccess");
				Class.forName("com.mysql.cj.jdbc.Driver");  
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098");  
				Statement st=con.createStatement();
				out.println("delete from farmersoil where Fsoil_Id="+sid);
				st.executeUpdate("delete from farmersoil where Fsoil_Id="+sid);	
			   }catch(Exception e){System.out.println(e);}
				//out.println("k = "+k);
			   if(k==1)
				 response.sendRedirect("farmersoil.jsp");
		
	}
}
