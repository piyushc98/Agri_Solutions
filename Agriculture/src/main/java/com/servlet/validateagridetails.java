package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/validateagridetails")
public class validateagridetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public validateagridetails() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		String phno=request.getParameter("q1");
		String fpass=request.getParameter("q2");
		PrintWriter out = response.getWriter();
		out.println("Hello Server ");
		try{ 	
			out.print("Conneccted to 1 ");
			Class.forName("com.mysql.cj.jdbc.Driver");  
			out.print("Connected ");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","Piyush@1098"); 
			Statement st1=con.createStatement();
			ResultSet rs=st1.executeQuery("Select name,phone_no,password from agri where phone_no='"+phno+"' and password='"+fpass+"'");
			if(rs.next())
			{
				session.setAttribute("user",phno);
				session.setAttribute("username",rs.getString("name"));
				response.sendRedirect("farmerhome.jsp");
			}
			else
				response.sendRedirect("createagri.jsp");
			
			}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}

}
